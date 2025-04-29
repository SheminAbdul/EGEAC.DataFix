codeunit 90001 "Migration Tables SMA"
{
    Permissions = tabledata "Purch. Rcpt. Header" = rimd, tabledata "Purch. Rcpt. Line" = rimd, tabledata "Purchase Line" = rimd, tabledata "QQQAB Expense Ledger Entry" = rimd, tabledata "G/L Entry" = rimd,
    tabledata "Bank Account Ledger Entry" = rimd, tabledata "Bank Account Statement" = rimd, tabledata "Bank Account Statement Line" = rimd, tabledata "Item Journal Line" = m, tabledata "Job Ledger Entry" = rimd, tabledata "Job Task Dimension" = rimd;

    procedure MigrateDataBankLedgerEntry()
    var
        BankLedgerEntry: Record "Bank Account Ledger Entry";
    begin
        if not Confirm('Are you sure you want to migrate Bank Acc Entries?', false) then
            exit;
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl);
        BankLedgerEntry_ARQ.ChangeCompany('EGEAC_GRS');
        TotalCount := BankLedgerEntry_ARQ.COUNT;
        BankLedgerEntry_ARQ.FindSet();
        Counter := 0;
        repeat
            Counter := Counter + 1;
            Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
            BankLedgerEntry.Init();
            BankLedgerEntry := BankLedgerEntry_ARQ;
            BankLedgerEntry.INSERT();
        until BankLedgerEntry_ARQ.Next() = 0;
        Window.CLOSE();
    end;

    procedure MigrateDataBankAccSTLine()
    var
        BankAccST: Record "Bank Account Statement";
        BankAccSTLine: Record "Bank Account Statement Line";
        BankAccST_GRS: Record "Bank Account Statement";
        BankAccSTLine_GRS: Record "Bank Account Statement Line";
    begin
        if not Confirm('Are you sure you want to migrate Bank Acc Statment?', false) then
            exit;
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl);
        BankAccST_GRS.ChangeCompany('EGEAC_GRS');
        BankAccSTLine_GRS.ChangeCompany('EGEAC_GRS');
        TotalCount := BankAccST_GRS.COUNT;
        Counter := 0;
        if BankAccST_GRS.FindSet() then
            repeat

                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));

                BankAccST.Init();
                BankAccST := BankAccST_GRS;
                BankAccST.INSERT();

                // Clear(BankAccSTLine_GRS);

                // BankAccSTLine_GRS.SetRange("Bank Account No.", BankAccSTLine."Bank Account No.");
                BankAccSTLine_GRS.SetRange("Bank Account No.", BankAccST_GRS."Bank Account No.");
                BankAccSTLine_GRS.SetRange("Statement No.", BankAccST_GRS."Statement No.");

                if BankAccSTLine_GRS.FindSet() then
                    repeat
                        clear(BankAccSTLine);
                        BankAccSTLine.INIT();
                        BankAccSTLine := BankAccSTLine_GRS;
                        BankAccSTLine.INSERT();
                    until BankAccSTLine_GRS.Next() = 0;
            until BankAccST_GRS.Next() = 0;
        Window.CLOSE();




    end;

    procedure CleanIJLQty()
    var
        ItemJournalLine: Record "Item Journal Line";
    begin
        ItemJournalLine.SetFilter("Item No.", '<>%1', '');
        ItemJournalLine.SetFilter(Quantity, '<>%1', 0);
        if ItemJournalLine.FindSet() then
            repeat
                ItemJournalLine."Invoiced Quantity" := 0;
                ItemJournalLine."Invoiced Qty. (Base)" := 0;
                ItemJournalLine.Validate("Unit Cost", 0);
                ItemJournalLine.Validate("Unit Amount", 0);
                ItemJournalLine.Modify();
            until ItemJournalLine.Next() = 0;
    end;

    procedure ChangeEntryILE()
    var
        PurchRcptLine: Record "Purch. Rcpt. Line";
        ItemLedgerEntry: Record "Item Ledger Entry";
        PurchRcptLine2: Record "Purch. Rcpt. Line";
    begin
        PurchRcptLine.SetRange(Type, PurchRcptLine.Type::Item);
        PurchRcptLine.SetFilter("Qty. Rcd. Not Invoiced", '>%1', 0);
        PurchRcptLine.SetFilter("Item Rcpt. Entry No.", '>%1', 1000);
        if PurchRcptLine.FindSet() then
            repeat
                ItemLedgerEntry.SetRange("Item No.", PurchRcptLine."No.");
                ItemLedgerEntry.SetRange("Document No.", PurchRcptLine."Document No.");
                ItemLedgerEntry.SetFilter("Remaining Quantity", '>%1', 0);
                if ItemLedgerEntry.FindFirst() then begin
                    PurchRcptLine2.Get(PurchRcptLine."Document No.", PurchRcptLine."Line No.");
                    PurchRcptLine2."Item Rcpt. Entry No." := ItemLedgerEntry."Entry No.";
                    PurchRcptLine2.Modify();
                end;
            until PurchRcptLine.Next() = 0;
    end;


    procedure changecashflowcode()
    var
        GLEntryGRS: Record "G/L Entry";
        GLEntry: Record "G/L Entry";
    begin
        if not Confirm('Are you sure you want to change cash flow?', false) then
            exit;
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl);
        GLEntryGRS.ChangeCompany('EGEAC_GRS');
        TotalCount := GLEntryGRS.COUNT;
        Counter := 0;
        if GLEntryGRS.FindSet() then
            repeat
                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));

                if GLEntry.Get(GLEntryGRS."Entry No.") then
                    if GLEntry."PTSS Acc: cash-flow code" = '' then begin
                        GLEntry."PTSS Acc: cash-flow code" := GLEntryGRS."PTSS Acc: cash-flow code";
                        if not GLEntry.Modify() then
                            exit;
                    end
            until GLEntryGRS.Next() = 0;
        Window.CLOSE();
    end;

    procedure MigrateJobsandTasks()
    var
        Job: Record Job;
        JobGRS: Record Job;
        JobTask: Record "Job Task";
        JobTaskGRS: Record "Job Task";
        JobPlanningLine: Record "Job Planning Line";
        JobPlanningLineGRS: Record "Job Planning Line";
    begin
        if not Confirm('Are you sure you want to migrate jobs?', false) then
            exit;
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl);
        JobGRS.ChangeCompany('EGEAC_GRS');
        JobTaskGRS.ChangeCompany('EGEAC_GRS');
        JobPlanningLineGRS.ChangeCompany('EGEAC_GRS');
        TotalCount := JobGRS.COUNT;
        Counter := 0;
        if JobGRS.FindSet() then
            repeat
                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
                Job := JobGRS;
                if not Job.Insert() then;
                JobTaskGRS.SetRange("Job No.", JobGRS."No.");
                if JobTaskGRS.FindSet() then
                    repeat
                        JobTask.INIT();
                        JobTask := JobTaskGRS;
                        if not JobTask.Insert() then;

                        JobPlanningLineGRS.SetRange("Job No.", JobGRS."No.");
                        JobPlanningLineGRS.SetRange("Job Task No.", JobTaskGRS."Job Task No.");
                        if JobPlanningLineGRS.FindSet() then
                            repeat
                                JobPlanningLine.Init();
                                JobPlanningLine := JobPlanningLineGRS;
                                JobPlanningLine.Insert();
                            until JobPlanningLineGRS.Next() = 0;
                    until JobTaskGRS.Next() = 0;
            until JobGRS.Next() = 0;
        Window.CLOSE();
    end;

    procedure MigrateJobLedgerEntry()
    var
        JobLedgerEntry: Record "Job Ledger Entry";
        JobLedgerEntryGRS: Record "Job Ledger Entry";
    begin
        if not Confirm('Are you sure you want to migrate Job Ledger Entry?', false) then
            exit;
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl);
        JobLedgerEntryGRS.ChangeCompany('EGEAC_GRS');
        TotalCount := JobLedgerEntryGRS.COUNT;
        Counter := 0;
        if JobLedgerEntryGRS.FindSet() then
            repeat
                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
                JobLedgerEntry := JobLedgerEntryGRS;
                JobLedgerEntry.Insert();

            until JobLedgerEntryGRS.Next() = 0;
        Window.CLOSE();
    end;

    procedure MigrateJobDimension()
    var
        JobTaskDimension: Record "Job Task Dimension";
        JobTaskDimensionGRS: Record "Job Task Dimension";
    begin
        if not Confirm('Are you sure you want to migrate Job Task Dimensions?', false) then
            exit;
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl);
        JobTaskDimensionGRS.ChangeCompany('EGEAC_GRS');
        TotalCount := JobTaskDimensionGRS.COUNT;
        Counter := 0;
        if JobTaskDimensionGRS.FindSet() then
            repeat
                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
                JobTaskDimension := JobTaskDimensionGRS;
                JobTaskDimension.Insert();
            until JobTaskDimensionGRS.Next() = 0;
        Window.CLOSE();
    end;

    procedure UpdateDimJLE()
    var
        JobLedgerEntry: Record "Job Ledger Entry";
        JobLedgerEntry2: Record "Job Ledger Entry";
        DimSetEntry: Record "Dimension Set Entry";
        GeneralLedgerSetup: Record "General Ledger Setup";
        Counter: Integer;
    begin
        GeneralLedgerSetup.Get();
        if JobLedgerEntry.FindSet() then begin
            CLEAR(Window);
            Window.OPEN(TextProcessingLbl);
            TotalCount := JobLedgerEntry.COUNT;
            Counter := 0;
            repeat
                Counter += 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
                if JobLedgerEntry."Dimension Set ID" <> 0 then begin
                    DimSetEntry.SetRange("Dimension Set ID", JobLedgerEntry."Dimension Set ID");
                    if DimSetEntry.FindSet() then
                        repeat
                            JobLedgerEntry2.Get(JobLedgerEntry."Entry No.");
                            if DimSetEntry."Dimension Code" = GeneralLedgerSetup."QQQAB Budget Dimension 1 Code" then
                                JobLedgerEntry2."QQQAB Budget Dimension 1 Code" := DimSetEntry."Dimension Value Code";
                            if DimSetEntry."Dimension Code" = GeneralLedgerSetup."QQQAB Budget Dimension 2 Code" then
                                JobLedgerEntry2."QQQAB Budget Dimension 2 Code" := DimSetEntry."Dimension Value Code";
                            if DimSetEntry."Dimension Code" = GeneralLedgerSetup."QQQAB Budget Dimension 3 Code" then
                                JobLedgerEntry2."QQQAB Budget Dimension 3 Code" := DimSetEntry."Dimension Value Code";
                            JobLedgerEntry2.Modify();
                        until DimSetEntry.Next() = 0;
                end;
            until JobLedgerEntry.Next() = 0;
            Window.CLOSE();
        end;
    end;




    var
        PurchRcpHdr_GRS: Record "Purch. Rcpt. Header";
        PurchRcpLine_GRS: Record "Purch. Rcpt. Line";
        purchRcpHdr: Record "Purch. Rcpt. Header";
        purchRcpLine: Record "Purch. Rcpt. Line";
        TextProcessingLbl: Label 'Processing: @1@@@@@@@@@@@@@@@';
        Window: Dialog;
        Counter: Integer;
        TotalCount: Integer;
        BankLedgerEntry_ARQ: Record "Bank Account Ledger Entry";
        BankLedgerEntry: Record "Bank Account Ledger Entry";
}
