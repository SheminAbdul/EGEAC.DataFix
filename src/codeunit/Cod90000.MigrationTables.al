codeunit 90000 "Migration Tables"
{
    Permissions = tabledata "Purch. Rcpt. Header" = rimd, tabledata "Purch. Rcpt. Line" = rimd, tabledata "Purchase Line" = rimd, tabledata "QQQAB Expense Ledger Entry" = rimd,
            tabledata "QQQCP Posted Expense Doc Hdr" = rimd, tabledata "QQQCP Budget by Year" = rimd, tabledata "QQQCP Budget Project" = rimd, tabledata "Dimension Set Entry" = rimd,
            tabledata "Vendor" = rimd, tabledata "QQQAB Det Expense Ledg Entry" = rimd, tabledata "QQQCP Posted Expense Doc Line" = rimd, tabledata "QQQCP Expense Document Line" = rimd,
            tabledata "Purch. Inv. Header" = rm, tabledata "Purch. Cr. Memo Hdr." = rm, tabledata "Vendor Ledger Entry" = r;
    procedure MigrateTable()
    begin
        if not Confirm('Are you sure you want to migrate the tables?', false) then
            exit;
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl);
        PurchRcpHdr_GRS.ChangeCompany('EGEAC_GRS');
        TotalCount := PurchRcpHdr_GRS.COUNT;
        PurchRcpHdr_GRS.Findfirst();
        Counter := 0;
        REPEAT
            Counter := Counter + 1;
            Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
            if PurchRcpHdr.get(PurchRcpHdr_GRS."No.") then
                PurchRcpHdr.Delete();

            PurchRcpHdr.Init();
            PurchRcpHdr := PurchRcpHdr_GRS;
            PurchRcpHdr.INSERT(TRUE);

            Clear(PurchRcpLine_GRS);
            PurchRcpLine_GRS.ChangeCompany('EGEAC_GRS');
            PurchRcpLine_GRS.SETRANGE("Document No.", PurchRcpHdr_GRS."No.");
            PurchRcpLine_GRS.FindFirst();
            repeat
                clear(purchRcpLine);
                purchRcpLine.SetRange("Document No.", PurchRcpLine_GRS."Document No.");
                purchRcpLine.SetRange("Line No.", PurchRcpLine_GRS."Line No.");
                if purchRcpLine.FindSet() then
                    purchRcpLine.Delete();

                purchRcpLine.INIT();
                purchRcpLine := PurchRcpLine_GRS;
                purchRcpLine.INSERT(TRUE);
            until PurchRcpLine_GRS.Next() = 0;

        until PurchRcpHdr_GRS.Next() = 0;
        Window.CLOSE();
    end;

    procedure CleanCVPCode()
    var
        PurchLine: Record "Purchase Line";
    begin
        if not Confirm('Are you sure you want to clean the CVP Code?', false) then
            exit;

        clear(PurchLine);
        PurchLine.SetRange("Document Type", PurchLine."Document Type"::Order);
        PurchLine.ModifyAll("QQQAB CPV Code", '');
    end;

    procedure CreateBudgetPlan()
    var
        PstdExpDocHdr: record "QQQCP Posted Expense Doc Hdr";
        BudgetYear: Record "QQQCP Budget by Year";
        TempBudgetYear: Record "QQQCP Budget by Year" temporary;
        DtlExpLedgEntry: Record "QQQAB Det Expense Ledg Entry";
        ExpLedgerEntry: Record "QQQAB Expense Ledger Entry";
        DtlExpLedgEntry2: Record "QQQAB Det Expense Ledg Entry";
        ExpLedgerEntry2: Record "QQQAB Expense Ledger Entry";
        EntryNo: Integer;
        MaxEntryNo: Integer;
        DetEntryNo: Integer;
        AmountToAssign: decimal;
    begin
        if Confirm('Are you sure you want to create the budget plan?') then begin

            CLEAR(Window);
            Window.OPEN(TextProcessingLbl2);

            Clear(PstdExpDocHdr);
            PstdExpDocHdr.SetRange("Document Type", PstdExpDocHdr."Document Type"::"Expense Proposal");
            //PstdExpDocHdr.SetRange("No.", 'PD2207-00344');
            //PstdExpDocHdr.setfilter(Status, '%1|%2', PstdExpDocHdr.Status::"Waiting Accrual", PstdExpDocHdr.Status::Accrual);
            PstdExpDocHdr.SetRange(Status, PstdExpDocHdr.Status::Accrual);
            TotalCount := PstdExpDocHdr.COUNT;

            clear(ExpLedgerEntry);
            ExpLedgerEntry.FindLast();
            EntryNo := expLedgerEntry."Entry No." + 1;
            MaxEntryNo := expLedgerEntry."Entry No.";
            Clear(DtlExpLedgEntry);
            DtlExpLedgEntry.FindLast();
            DetEntryNo := DtlExpLedgEntry."Entry No." + 1;

            Counter := 0;
            if PstdExpDocHdr.FindSet() then
                repeat
                    Counter := Counter + 1;
                    Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
                    CriarPlanoOrcamental(PstdExpDocHdr, BudgetYear."Document Type"::"Posted Expense Proposal");
                    FutureCommitments(PstdExpDocHdr);

                until PstdExpDocHdr.Next() = 0;
            Window.CLOSE();
            Commit();
        end;


        if Confirm('Are you sure you want to create the movements of the expenses?') then begin
            CLEAR(Window);
            Window.OPEN(TextProcessingLbl3);

            Clear(PstdExpDocHdr);
            PstdExpDocHdr.SetRange("Document Type", PstdExpDocHdr."Document Type"::"Expense Proposal");
            //PstdExpDocHdr.Setfilter("No.", 'PD2503-00023');
            PstdExpDocHdr.SetRange(Status, PstdExpDocHdr.Status::Accrual);
            TotalCount := PstdExpDocHdr.COUNT;

            clear(ExpLedgerEntry);
            ExpLedgerEntry.FindLast();
            EntryNo := expLedgerEntry."Entry No." + 1;
            MaxEntryNo := expLedgerEntry."Entry No.";
            Clear(DtlExpLedgEntry);
            DtlExpLedgEntry.FindLast();
            DetEntryNo := DtlExpLedgEntry."Entry No." + 1;

            Counter := 0;
            if PstdExpDocHdr.FindSet() then
                repeat
                    Counter := Counter + 1;
                    Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));

                    clear(BudgetYear);
                    BudgetYear.SetRange("Document Type", BudgetYear."Document Type"::"Future Compromisses");
                    BudgetYear.SetRange("Document No.", PstdExpDocHdr."No.");

                    BudgetYear.FindSet();
                    repeat
                        TempBudgetYear.RESET();
                        TempBudgetYear.SETRANGE("Budget Dimension 1 Code", BudgetYear."Budget Dimension 1 Code");
                        TempBudgetYear.SETRANGE("Budget Dimension 2 Code", BudgetYear."Budget Dimension 2 Code");
                        TempBudgetYear.SETRANGE("Budget Dimension 3 Code", BudgetYear."Budget Dimension 3 Code");
                        TempBudgetYear.SETRANGE("Budget Dimension 4 Code", BudgetYear."Budget Dimension 4 Code");
                        TempBudgetYear.SETRANGE("CPV Code", BudgetYear."CPV Code");
                        TempBudgetYear.SETRANGE("Job No.", BudgetYear."Job No.");
                        TempBudgetYear.SETRANGE("Job Task No.", BudgetYear."Job Task No.");
                        TempBudgetYear.SETRANGE("Vendor No.", BudgetYear."Vendor No.");
                        TempBudgetYear.SETRANGE(Year, BudgetYear.Year);
                        if not TempBudgetYear.FindSet() then begin
                            TempBudgetYear.RESET();
                            TempBudgetYear."Document No." := PstdExpDocHdr."No.";
                            TempBudgetYear."Line No." := BudgetYear."Line No.";
                            TempBudgetYear."Budget Dimension 1 Code" := BudgetYear."Budget Dimension 1 Code";
                            TempBudgetYear."Budget Dimension 2 Code" := BudgetYear."Budget Dimension 2 Code";
                            TempBudgetYear."Budget Dimension 3 Code" := BudgetYear."Budget Dimension 3 Code";
                            TempBudgetYear."Budget Dimension 4 Code" := BudgetYear."Budget Dimension 4 Code";
                            TempBudgetYear."CPV Code" := BudgetYear."CPV Code";
                            TempBudgetYear."Job No." := BudgetYear."Job No.";
                            TempBudgetYear."Job Task No." := BudgetYear."Job Task No.";
                            TempBudgetYear."Vendor No." := BudgetYear."Vendor No.";
                            TempBudgetYear.Year := BudgetYear.Year;
                            TempBudgetYear.Amount := BudgetYear."Compromise Amount";
                            TempBudgetYear.Insert()
                        end
                        else begin
                            TempBudgetYear.Amount := TempBudgetYear.Amount + BudgetYear."Compromise Amount";
                            TempBudgetYear.Modify();
                        end;

                    until BudgetYear.Next() = 0;
                    clear(ExpLedgerEntry);
                    ExpLedgerEntry.setrange("Document Type", ExpLedgerEntry."Document Type"::Accrual);
                    ExpLedgerEntry.setrange("Document No.", PstdExpDocHdr."Accrual No.");
                    ExpLedgerEntry.SetFilter("Entry No.", '<%1', MaxEntryNo);
                    ExpLedgerEntry.FindSet();
                    repeat
                        ExpLedgerEntry.CalcFields(Amount);
                        TempBudgetYear.Reset();
                        TempBudgetYear.SETRANGE("Budget Dimension 1 Code", ExpLedgerEntry."Budget Dimension 1 Code");
                        TempBudgetYear.SETRANGE("Budget Dimension 2 Code", ExpLedgerEntry."Budget Dimension 2 Code");
                        TempBudgetYear.SetRange("Budget Dimension 3 Code", ExpLedgerEntry."Budget Dimension 3 Code");
                        TempBudgetYear.SetRange("Budget Dimension 4 Code", ExpLedgerEntry."Budget Dimension 4 Code");
                        TempBudgetYear.SetRange("Job No.", ExpLedgerEntry."Job No.");
                        TempBudgetYear.SetRange("Job Task No.", ExpLedgerEntry."Job Task No.");
                        TempBudgetYear.FindFirst();
                        ExpLedgerEntry."CPV Code" := TempBudgetYear."CPV Code";
                        clear(DtlExpLedgEntry);
                        DtlExpLedgEntry.SetCurrentKey("Expense Ledger Entry No.");
                        DtlExpLedgEntry.setrange("Expense Ledger Entry No.", ExpLedgerEntry."Entry No.");
                        DtlExpLedgEntry.FindSet();
                        DtlExpLedgEntry."CPV Code" := TempBudgetYear."CPV Code";
                        DtlExpLedgEntry.Modify();

                        if TempBudgetYear.Amount <> ExpLedgerEntry.Amount then begin
                            // tem mais do que 1 movimento para o mesmo CPV 
                            AmountToAssign := TempBudgetYear.Amount;

                            TempBudgetYear.Reset();
                            TempBudgetYear.SETRANGE("Budget Dimension 1 Code", ExpLedgerEntry."Budget Dimension 1 Code");
                            TempBudgetYear.SETRANGE("Budget Dimension 2 Code", ExpLedgerEntry."Budget Dimension 2 Code");
                            TempBudgetYear.SetRange("Budget Dimension 3 Code", ExpLedgerEntry."Budget Dimension 3 Code");
                            TempBudgetYear.SetRange("Budget Dimension 4 Code", ExpLedgerEntry."Budget Dimension 4 Code");
                            TempBudgetYear.SetRange("Job No.", ExpLedgerEntry."Job No.");
                            TempBudgetYear.SetRange("Job Task No.", ExpLedgerEntry."Job Task No.");
                            TempBudgetYear.setfilter("CPV Code", '<>%1', TempBudgetYear."CPV Code");
                            if TempBudgetYear.FindFirst() then begin
                                DtlExpLedgEntry.Amount := AmountToAssign;
                                DtlExpLedgEntry."Amount (LCY)" := AmountToAssign;
                                DtlExpLedgEntry.Modify();
                                repeat
                                    clear(ExpLedgerEntry2);
                                    ExpLedgerEntry2 := ExpLedgerEntry;
                                    ExpLedgerEntry2."Entry No." := EntryNo;
                                    ExpLedgerEntry2."CPV Code" := TempBudgetYear."CPV Code";
                                    ExpLedgerEntry2.Insert();
                                    EntryNo := EntryNo + 1;

                                    clear(DtlExpLedgEntry2);
                                    DtlExpLedgEntry2 := DtlExpLedgEntry;
                                    DtlExpLedgEntry2."Entry No." := DetEntryNo;
                                    DtlExpLedgEntry2."CPV Code" := TempBudgetYear."CPV Code";
                                    DtlExpLedgEntry2.Amount := TempBudgetYear.Amount;
                                    DtlExpLedgEntry2."Amount (LCY)" := TempBudgetYear.Amount;
                                    DtlExpLedgEntry2."Expense Ledger Entry No." := ExpLedgerEntry2."Entry No.";
                                    DtlExpLedgEntry2.Insert();
                                    DetEntryNo := DetEntryNo + 1;

                                until TempBudgetYear.Next() = 0;
                            end;
                            clear(ExpLedgerEntry2);

                        end;
                        ExpLedgerEntry.Modify();
                    until ExpLedgerEntry.Next() = 0;
                until PstdExpDocHdr.Next() = 0;
            Window.CLOSE();
        end;
    end;

    procedure CorrectDetExpLedgerEntry()
    var
        DtlExpLedgEntry: Record "QQQAB Det Expense Ledg Entry";
    begin
        if not Confirm('Are you sure you want to correct the Det Expense Ledger Entry?', false) then
            exit;

        CLEAR(Window);
        Window.OPEN(TextProcessingLbl);
        clear(DtlExpLedgEntry);
        TotalCount := DtlExpLedgEntry.COUNT;
        Counter := 0;
        if DtlExpLedgEntry.FindSet() then
            repeat
                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));

                DtlExpLedgEntry."Amount (LCY)" := DtlExpLedgEntry.Amount;
                DtlExpLedgEntry."Authorized Amount (LCY)" := DtlExpLedgEntry."Authorized Amount";
                DtlExpLedgEntry.Modify();
            until DtlExpLedgEntry.NEXT() = 0;
        Window.CLOSE();
    end;


    internal procedure CriarPlanoOrcamental(PstdExpDocHdr_P: record "QQQCP Posted Expense Doc Hdr"; TipoDocumento: Enum "QQQCP Budget Year Doc Enum")
    var
        BudgetByYear: Record "QQQCP Budget by Year";
        TempBudgetByYear: Record "QQQCP Budget by Year" temporary;
        PostedExpDocLine: Record "QQQCP Posted Expense Doc Line";
        CidadelaSetup: Record "QQQAB Cidadela Setup";
        CidadelaSetup2: Record "QQQAB Cidadela Setup 2";
        DimensionSetEntry: Record "Dimension Set Entry";
        BudgetProject: Record "QQQCP Budget Project";
        Vendor: record Vendor;
        EndDate: Date;
        I: Integer;
        J: Integer;
        LineNo: Integer;
        TextConfirmYearQst: Label 'The expense proposal is setup for more than 1 year but there are not line for a year greater than the expense proposal. Do you wish to continue?';
        txt000001Lbl: Label 'Do you wish to create the budget planing?';
    begin
        if PstdExpDocHdr_P."Pay-to Vendor No." <> '' then
            if not Vendor.GET(PstdExpDocHdr_P."Pay-to Vendor No.") then
                exit;

        BudgetByYear.RESET();
        BudgetByYear.SETRANGE("Document Type", TipoDocumento);
        BudgetByYear.SETRANGE("Document No.", PstdExpDocHdr_P."No.");
        BudgetByYear.DELETEALL();

        CidadelaSetup2.GET();
        CidadelaSetup.GET();
        PstdExpDocHdr_P.TESTFIELD("Posting Date");
        PostedExpDocLine.RESET();
        PostedExpDocLine.SETCURRENTKEY("Budget Dimension 1 Code", "Budget Dimension 2 Code", "Budget Dimension 3 Code",
                         "Budget Dimension 4 Code");
        PostedExpDocLine.SETRANGE("Document Type", PstdExpDocHdr_P."Document Type");
        PostedExpDocLine.SETRANGE("Document No.", PstdExpDocHdr_P."No.");
        PostedExpDocLine.SETFILTER(Type, '<>%1', 0);

        IF PostedExpDocLine.FindSet() THEN
            REPEAT
                TempBudgetByYear.RESET();
                TempBudgetByYear.SETRANGE("Budget Dimension 1 Code", PostedExpDocLine."Budget Dimension 1 Code");
                TempBudgetByYear.SETRANGE("Budget Dimension 2 Code", PostedExpDocLine."Budget Dimension 2 Code");
                TempBudgetByYear.SETRANGE("Budget Dimension 3 Code", PostedExpDocLine."Budget Dimension 3 Code");
                TempBudgetByYear.SETRANGE("Budget Dimension 4 Code", PostedExpDocLine."Budget Dimension 4 Code");
                TempBudgetByYear.SETRANGE("Job No.", PostedExpDocLine."Job No.");
                TempBudgetByYear.SETRANGE("Job Task No.", PostedExpDocLine."Job Task No.");
                TempBudgetByYear.SETRANGE(Year, PostedExpDocLine."Budget Year");
                CLEAR(DimensionSetEntry);
                DimensionSetEntry.SETRANGE("Dimension Set ID", PostedExpDocLine."Dimension Set ID");
                DimensionSetEntry.SETRANGE("Dimension Code", CidadelaSetup2."Dimension CPV");
                if DimensionSetEntry.FINDSET() then;
                IF TipoDocumento = BudgetByYear."Document Type"::"Future Compromisses" THEN
                    TempBudgetByYear.SETRANGE("Vendor No.", PostedExpDocLine."Pay-to Vendor No.");
                TempBudgetByYear.INIT();
                TempBudgetByYear."Line No." := PostedExpDocLine."Line No.";
                TempBudgetByYear."Budget Dimension 1 Code" := PostedExpDocLine."Budget Dimension 1 Code";
                TempBudgetByYear."Budget Dimension 2 Code" := PostedExpDocLine."Budget Dimension 2 Code";
                TempBudgetByYear."Budget Dimension 3 Code" := PostedExpDocLine."Budget Dimension 3 Code";
                TempBudgetByYear."Budget Dimension 4 Code" := PostedExpDocLine."Budget Dimension 4 Code";
                TempBudgetByYear."CPV Code" := DimensionSetEntry."Dimension Value Code";
                TempBudgetByYear.Amount := PostedExpDocLine."Amount Awarded with VAT";
                TempBudgetByYear."Amount Inc. VAT" := PostedExpDocLine."Amount Including VAT";
                TempBudgetByYear."Cost Amount" := PostedExpDocLine."Cost Amount";
                IF TipoDocumento = BudgetByYear."Document Type"::"Future Compromisses" THEN BEGIN
                    IF NOT CidadelaSetup."Budget By Project" THEN
                        TempBudgetByYear."Compromise Amount" := PostedExpDocLine."Amount Awarded with VAT"
                    ELSE
                        TempBudgetByYear."Cost Amount Adjudicated" := PostedExpDocLine."Cost Amount Adjudicated"
                END
                ELSE
                    IF NOT CidadelaSetup."Budget By Project" THEN BEGIN
                        IF PostedExpDocLine."Amount Awarded with VAT" <> 0 THEN
                            TempBudgetByYear."Compromise Amount" := PostedExpDocLine."Amount Awarded with VAT"
                        ELSE
                            TempBudgetByYear."Compromise Amount" := PostedExpDocLine."Amount Including VAT";
                    END
                    ELSE
                        IF PostedExpDocLine."Cost Amount Adjudicated" <> 0 THEN
                            TempBudgetByYear."Cost Amount Adjudicated" := PostedExpDocLine."Cost Amount Adjudicated"
                        ELSE
                            TempBudgetByYear."Cost Amount Adjudicated" := PostedExpDocLine."Cost Amount";
                TempBudgetByYear."Job No." := PostedExpDocLine."Job No.";
                TempBudgetByYear."Job Task No." := PostedExpDocLine."Job Task No.";
                TempBudgetByYear.VALIDATE(Year, PostedExpDocLine."Budget Year");
                IF TipoDocumento = BudgetByYear."Document Type"::"Future Compromisses" THEN BEGIN
                    TempBudgetByYear."Vendor No." := PostedExpDocLine."Pay-to Vendor No.";
                    TempBudgetByYear."Aditional Posting Group" := PostedExpDocLine."Vendor Posting Group";
                END;
                TempBudgetByYear."VAT Bus. Posting Group" := PostedExpDocLine."VAT Bus. Posting Group";
                TempBudgetByYear."VAT Prod. Posting Group" := PostedExpDocLine."VAT Prod. Posting Group";
                TempBudgetByYear.INSERT();
            UNTIL PostedExpDocLine.NEXT() = 0;

        CLEAR(EndDate);
        CLEAR(I);
        IF NOT CidadelaSetup."Budget By Project" THEN BEGIN
            EndDate := CALCDATE(PstdExpDocHdr_P."Expected Duration", PstdExpDocHdr_P."Proposal Begin Date");
            I := 1;
        END
        ELSE
            I := 1;

        IF I > 1 THEN BEGIN
            // PostedExpDocLine.RESET();
            // PostedExpDocLine.SETCURRENTKEY("Budget Dimension 1 Code", "Budget Dimension 2 Code", "Budget Dimension 3 Code",
            //                  "Budget Dimension 4 Code");
            // PostedExpDocLine.SETRANGE("Document Type", PstdExpDocHdr_P."Document Type");
            // PostedExpDocLine.SETRANGE("Document No.", PstdExpDocHdr_P."No.");
            // PostedExpDocLine.SETFILTER(Type, '<>%1', 0);
            // PostedExpDocLine.SETFILTER("Budget Year", '>%1', DATE2DMY(PstdExpDocHdr_P."Proposal Begin Date", 3));
            // IF PostedExpDocLine.ISempty() THEN
            //     if not ConfirmManagement.GetResponse(TextConfirmYearQst, FALSE, true) THEN
            //         ERROR(TextCancelledErr)
            //     ELSE
            I := 1;
        END;

        LineNo := 10000;

        TempBudgetByYear.RESET();
        IF TempBudgetByYear.FindSet() THEN
            REPEAT
                J := 0;
                WHILE (J < I) DO BEGIN
                    CLEAR(BudgetByYear);
                    BudgetByYear.SETRANGE("Document Type", TipoDocumento);
                    BudgetByYear.SETRANGE("Document No.", PstdExpDocHdr_P."No.");
                    BudgetByYear.SETRANGE("Line No.", TempBudgetByYear."Line No.");
                    IF NOT CidadelaSetup."Budget By Project" THEN
                        BudgetByYear.SETRANGE(Year, TempBudgetByYear.Year + J)
                    ELSE
                        BudgetByYear.SETRANGE(Year, BudgetByYear.Year + J);
                    IF NOT BudgetByYear.FINDSET() THEN BEGIN

                        CLEAR(BudgetProject);
                        BudgetProject.SETRANGE("Job No.", TempBudgetByYear."Job No.");
                        BudgetProject.SETRANGE("Budget Year", TempBudgetByYear.Year + J);
                        IF (NOT CidadelaSetup."Budget By Project") OR ((CidadelaSetup."Budget By Project") AND
                            (BudgetProject.FINDFIRST())) THEN BEGIN

                            BudgetByYear.INIT();
                            BudgetByYear."Document Type" := TipoDocumento;
                            BudgetByYear."Document No." := PstdExpDocHdr_P."No.";
                            BudgetByYear."Line No." := TempBudgetByYear."Line No.";
                            TempBudgetByYear.TESTFIELD("Budget Dimension 1 Code");
                            TempBudgetByYear.TESTFIELD("Budget Dimension 2 Code");
                            TempBudgetByYear.TESTFIELD("Budget Dimension 3 Code");
                            IF CidadelaSetup."Budget Dimension 4 Code" <> '' THEN
                                TempBudgetByYear.TESTFIELD("Budget Dimension 4 Code");
                            BudgetByYear."Budget Dimension 1 Code" := TempBudgetByYear."Budget Dimension 1 Code";
                            BudgetByYear."Budget Dimension 2 Code" := TempBudgetByYear."Budget Dimension 2 Code";
                            BudgetByYear."Budget Dimension 3 Code" := TempBudgetByYear."Budget Dimension 3 Code";
                            BudgetByYear."Budget Dimension 4 Code" := TempBudgetByYear."Budget Dimension 4 Code";
                            BudgetByYear."CPV Code" := TempBudgetByYear."CPV Code";
                            BudgetByYear."Job No." := TempBudgetByYear."Job No.";
                            BudgetByYear."Job Task No." := TempBudgetByYear."Job Task No.";
                            BudgetByYear.Year := TempBudgetByYear.Year;
                            BudgetByYear."VAT Bus. Posting Group" := TempBudgetByYear."VAT Bus. Posting Group";
                            BudgetByYear."VAT Prod. Posting Group" := TempBudgetByYear."VAT Prod. Posting Group";
                            BudgetByYear."User ID" := copystr(USERID, 1, 50);

                            BudgetByYear.VALIDATE("Vendor No.", PstdExpDocHdr_P."Pay-to Vendor No.");

                            IF TipoDocumento = BudgetByYear."Document Type"::"Future Compromisses" THEN
                                BudgetByYear."Vendor No." := TempBudgetByYear."Vendor No.";

                            IF (J = 0) THEN
                                IF TipoDocumento = BudgetByYear."Document Type"::"Future Compromisses" THEN BEGIN
                                    IF NOT CidadelaSetup."Budget By Project" THEN
                                        BudgetByYear."Compromise Amount" := TempBudgetByYear."Compromise Amount"
                                    ELSE
                                        BudgetByYear."Compromise Amount" := TempBudgetByYear."Cost Amount Adjudicated";
                                    BudgetByYear."Aditional Posting Group" := TempBudgetByYear."Aditional Posting Group";
                                END
                                ELSE BEGIN
                                    BudgetByYear.Amount := TempBudgetByYear.Amount;
                                    BudgetByYear."Amount Inc. VAT" := TempBudgetByYear."Amount Inc. VAT";
                                    BudgetByYear."Cost Amount" := TempBudgetByYear."Cost Amount";
                                    BudgetByYear."Cost Amount Adjudicated" := TempBudgetByYear."Cost Amount Adjudicated";
                                END;

                            IF NOT CidadelaSetup."Budget By Project" THEN
                                BudgetByYear.Year := TempBudgetByYear.Year + J
                            ELSE
                                BudgetByYear.Year := BudgetByYear.Year + J;

                            BudgetByYear.INSERT(true);

                            LineNo := LineNo + 10000;
                        END;
                    END;
                    J := J + 1;
                END;
            UNTIL TempBudgetByYear.NEXT() = 0;
    end;


    internal procedure FutureCommitments(PstdExpDocHdr_P: record "QQQCP Posted Expense Doc Hdr")
    var
        BudgetByYear: Record "QQQCP Budget by Year";
        BudgetByYear2: Record "QQQCP Budget by Year";
        PostedExpDocLine: Record "QQQCP Posted Expense Doc Line";
        CidadelaSetup2: Record "QQQAB Cidadela Setup 2";
        CidadelaSetup: Record "QQQAB Cidadela Setup";
        Vendor: record Vendor;
    begin
        if PstdExpDocHdr_P."Pay-to Vendor No." <> '' then
            if not Vendor.GET(PstdExpDocHdr_P."Pay-to Vendor No.") then
                exit;
        CidadelaSetup.GET();
        CLEAR(BudgetByYear);
        BudgetByYear.SETRANGE("Document Type", BudgetByYear."Document Type"::"Future Compromisses");
        BudgetByYear.SETRANGE("Document No.", PstdExpDocHdr_P."No.");
        BudgetByYear.DELETEALL();

        BudgetByYear.SETRANGE("Document Type", BudgetByYear."Document Type"::"Posted Expense Proposal");
        BudgetByYear.SETRANGE("Document No.", PstdExpDocHdr_P."No.");
        if not BudgetByYear.FindSet() then
            exit;
        PostedExpDocLine.RESET();
        PostedExpDocLine.SETRANGE("Document Type", PstdExpDocHdr_P."Document Type");
        PostedExpDocLine.SETRANGE("Document No.", PstdExpDocHdr_P."No.");
        PostedExpDocLine.SETFILTER("No.", '<>%1', '');
        PostedExpDocLine.FindFirst();

        REPEAT
            BudgetByYear2.INIT();
            BudgetByYear2.TRANSFERFIELDS(BudgetByYear);
            BudgetByYear2."Document Type" := BudgetByYear2."Document Type"::"Future Compromisses";
            BudgetByYear2."Vendor No." := PostedExpDocLine."Pay-to Vendor No.";
            BudgetByYear2."Vendor Name" := PostedExpDocLine."Pay-to Vendor Name";
            BudgetByYear2."Aditional Posting Group" := PostedExpDocLine."Vendor Posting Group";
            IF NOT CidadelaSetup."Budget By Project" THEN
                BudgetByYear2."Compromise Amount" := BudgetByYear2.Amount
            ELSE
                BudgetByYear2."Compromise Amount" := BudgetByYear2."Cost Amount Adjudicated";
            BudgetByYear2.Amount := 0;
            BudgetByYear2."Amount Inc. VAT" := 0;
            BudgetByYear2."Cost Amount" := 0;
            BudgetByYear2."Cost Amount Adjudicated" := 0;
            BudgetByYear2.INSERT(true);
        UNTIL BudgetByYear.NEXT() = 0;
        //END;
    end;

    internal procedure CorrectionPurchDocs()
    var
        VendorLegerEntry: record "Vendor Ledger Entry";
        PurchInvHdr: record "Purch. Inv. header";
        PurchCrMemoHdr: record "Purch. Cr. Memo Hdr.";
    begin
        clear(VendorLegerEntry);
        VendorLegerEntry.SetFilter("Document Type", '%1|%2', VendorLegerEntry."Document Type"::Invoice, VendorLegerEntry."Document Type"::"Credit Memo");
        VendorLegerEntry.FindSet();
        repeat
            case VendorLegerEntry."Document Type" of
                VendorLegerEntry."Document Type"::Invoice:
                    begin
                        clear(PurchInvHdr);
                        if (PurchInvHdr.Get(VendorLegerEntry."Document No.")) and (PurchInvHdr."Vendor Ledger Entry No." = 0) then begin
                            PurchInvHdr."Vendor Ledger Entry No." := VendorLegerEntry."Entry No.";
                            PurchInvHdr.Modify();
                        end;
                    end;
                VendorLegerEntry."Document Type"::"Credit Memo":
                    begin
                        Clear(PurchCrMemoHdr);
                        if (PurchCrMemoHdr.Get(VendorLegerEntry."Document No.")) and (PurchCrMemoHdr."Vendor Ledger Entry No." = 0) then begin
                            PurchCrMemoHdr."Vendor Ledger Entry No." := VendorLegerEntry."Entry No.";
                            PurchCrMemoHdr.Modify();
                        end;
                    end;
            end;

        until VendorLegerEntry.Next() = 0;

    end;

    procedure FixExpenseProposal()
    var
        ExpenseDocLine: record "qqqcp Expense Document Line";
        ExpenseDocHdr: record "qqqcp Expense Document Header";
        ServiceAddress: Record "qqqab Service Address";
    begin
        if not Confirm('Are you sure you want to fix the expense proposal?', false) then
            exit;

        CLEAR(Window);
        Window.OPEN(TextProcessingLbl);
        Clear(ExpenseDocHdr);
        ExpenseDocHdr.SetRange("Document Type", ExpenseDocHdr."Document Type"::"Expense Proposal");
        ExpenseDocHdr.SetFilter("Posting Date", '>=%1', DMY2Date(1, 1, 2025));
        ExpenseDocHdr.setfilter(Status, '<>%1', ExpenseDocHdr.Status::Initial);
        //ExpenseDocHdr.SetRange("No.", 'PDP2503-0252');
        ExpenseDocHdr.setfilter("Vendor No.", '%1', '');
        TotalCount := ExpenseDocHdr.COUNT;
        ExpenseDocHdr.FindSet();
        Counter := 0;
        repeat
            Counter := Counter + 1;
            Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
            Clear(ExpenseDocLine);
            ExpenseDocLine.SetRange("Document No.", ExpenseDocHdr."No.");
            ExpenseDocline.setfilter("Pay-to Vendor No.", '%1', '');
            ExpenseDocLine.SetFilter("no.", '<>%1', '');
            ExpenseDocLine.SetFilter(Quantity, '<>%1', 0);
            ExpenseDocLine.setrange("VAT Bus. Posting Group", 'ND_NAC');
            if ExpenseDocLine.FindSet() then begin
                ServiceAddress.Get(ExpenseDocHdr.Service);
                if not ServiceAddress."QQQCP No Deduct VAT on Purch." then
                    repeat

                        ExpenseDocLine."Deduct VAT Exception" := true;
                        ExpenseDocLine.Validate("VAT Bus. Posting Group", 'NACIONAL');
                        ExpenseDocLine.Modify();

                    until ExpenseDocLine.Next() = 0;
            end;
        until ExpenseDocHdr.Next() = 0;
        Window.CLOSE();
    end;

    procedure FixUnitOfMeasure()
    var
        ExpenseDocLine: record "qqqcp Expense Document Line";
        ExpenseDocLine2: record "qqqcp Expense Document Line";
        PostedExpDocLine: Record "QQQCP Posted Expense Doc Line";
        PostedExpDocLine2: Record "QQQCP Posted Expense Doc Line";
        PurchLine: record "Purchase Line";
        PurchLine2: record "Purchase Line";
        PurchRcpLine: record "Purch. Rcpt. Line";
        PurchRcpLine2: record "Purch. Rcpt. Line";
        Item: Record Item;
    begin
        if not Confirm('Are you sure you want to fix the unit of measure?', false) then
            exit;

        // Proposta de despesa provisóra        
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl4);
        Clear(ExpenseDocLine);
        ExpenseDocLine.SetRange("Document Type", ExpenseDocLine."Document Type"::"Expense Proposal");
        ExpenseDocLine.SetRange(Type, ExpenseDocLine.Type::"Item");
        ExpenseDocLine.SetFilter("no.", '<>%1', '');
        ExpenseDocLine.SetFilter("Unit of Measure Code", '%1', '');
        TotalCount := ExpenseDocLine.COUNT;
        Counter := 0;
        if ExpenseDocLine.FindSet() then
            repeat
                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
                ExpenseDocLine2.get(ExpenseDocLine."Document Type", ExpenseDocLine."Document No.", ExpenseDocLine."Line No.");
                ExpenseDocLine2."Unit of Measure" := 'UN';
                ExpenseDocLine2.Modify();
            until ExpenseDocLine.Next() = 0;
        Window.CLOSE();


        // proposta de despesa registada
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl5);
        Clear(PostedExpDocLine);
        PostedExpDocLine.SetRange("Document Type", PostedExpDocLine."Document Type"::"Expense Proposal");
        PostedExpDocLine.SetRange(Type, PostedExpDocLine.Type::"Item");
        PostedExpDocLine.SetFilter("no.", '<>%1', '');
        PostedExpDocLine.SetFilter("Unit of Measure Code", '%1', '');
        TotalCount := PostedExpDocLine.COUNT;
        Counter := 0;
        if PostedExpDocLine.FindSet() then
            repeat
                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
                PostedExpDocLine2.get(PostedExpDocLine."Document Type", PostedExpDocLine."Document No.", PostedExpDocLine."Line No.");
                PostedExpDocLine2."Unit of Measure" := 'UN';
                PostedExpDocLine2.Modify();
            until PostedExpDocLine.Next() = 0;
        Window.CLOSE();


        // Linhas de compra
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl6);
        Clear(PurchLine);
        PurchLine.SetRange("Document Type", PurchLine."Document Type"::Order);
        PurchLine.SetRange(Type, PurchLine.Type::"Item");
        PurchLine.SetFilter("no.", '<>%1', '');
        PurchLine.SetFilter("Unit of Measure Code", '%1', '');
        TotalCount := PurchLine.COUNT;
        Counter := 0;
        if PurchLine.FindSet() then
            repeat
                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
                PurchLine2.get(PurchLine."Document Type", PurchLine."Document No.", PurchLine."Line No.");
                PurchLine2."Unit of Measure" := 'UN';
                PurchLine2.Modify();
            until PurchLine.Next() = 0;
        Window.CLOSE();


        // Linhas de receção
        CLEAR(Window);
        Window.OPEN(TextProcessingLbl7);
        Clear(PurchRcpLine);
        PurchRcpLine.SetRange(Type, PurchRcpLine.Type::"Item");
        PurchRcpLine.SetFilter("no.", '<>%1', '');
        PurchRcpLine.SetFilter("Unit of Measure Code", '%1', '');
        TotalCount := PurchRcpLine.COUNT;
        Counter := 0;
        if PurchRcpLine.FindSet() then
            repeat
                Counter := Counter + 1;
                Window.UPDATE(1, ROUND(Counter / TotalCount * 10000, 1));
                PurchRcpLine2.get(PurchRcpLine."Document No.", PurchRcpLine."Line No.");
                PurchRcpLine2."Unit of Measure" := 'UN';
                PurchRcpLine2.Modify();
            until PurchRcpLine.Next() = 0;
        Window.CLOSE();

    end;



    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterModifyEvent', '', false, false)]
    local procedure OnAfterModifyEvent_PurchLine(var Rec: Record "Purchase Line"; var xRec: Record "Purchase Line"; RunTrigger: Boolean)
    var
        ExpLedgEntry: Record "QQQAB Expense Ledger Entry";
        cdu_cidadelafunct: codeunit "qqqab cidadela functions";
    begin
        IF NOT RunTrigger THEN
            EXIT;

        //if rec."Document Type" <> rec."Document Type"::Order then
        //    exit;

        ExpLedgEntry.RESET();
        ExpLedgEntry.SETCURRENTKEY("Document Type", "Document No.", "Budget Dimension 1 Code",
                    "Budget Dimension 2 Code", "Budget Dimension 3 Code", "Budget Dimension 4 Code", "CPV Code");
        ExpLedgEntry.SETRANGE("Document Type", ExpLedgEntry."Document Type"::Compromise);
        ExpLedgEntry.SETRANGE("Document No.", Rec."qqqab Compromise No.");
        ExpLedgEntry.SETRANGE("Budget Dimension 1 Code", Rec."QQQAB Budget Dimension 1 Code");
        ExpLedgEntry.SETRANGE("Budget Dimension 2 Code", Rec."QQQAB Budget Dimension 2 Code");
        ExpLedgEntry.SETRANGE("Budget Dimension 3 Code", Rec."QQQAB Budget Dimension 3 Code");
        ExpLedgEntry.SETRANGE("Budget Dimension 4 Code", Rec."QQQAB Budget Dimension 4 Code");
        //ARQ CPVCode LUC 25092019 -->
        ExpLedgEntry.SETRANGE("CPV Code", Rec."QQQAB CPV Code");
        //ARQ CPVCode LUC 25092019 <--
        ExpLedgEntry.SETRANGE("Job No.", Rec."Job No.");
        ExpLedgEntry.SETRANGE("Job Task No.", Rec."Job Task No.");
        if (not ExpLedgEntry.FINDFIRST()) and (rec."QQQAB CPV Code" <> '') then begin
            ExpLedgEntry.SETRANGE("CPV Code");
            if ExpLedgEntry.FindFirst() then begin
                Rec."QQQAB CPV Code" := '';
                rec.Modify();
            end;
        end;


    end;

    var
        PurchRcpHdr_GRS: Record "Purch. Rcpt. Header";
        PurchRcpLine_GRS: Record "Purch. Rcpt. Line";
        purchRcpHdr: Record "Purch. Rcpt. Header";
        purchRcpLine: Record "Purch. Rcpt. Line";
        TextProcessingLbl: Label 'Processing: @1@@@@@@@@@@@@@@@';
        TextProcessingLbl2: Label 'Plano orçamental: @1@@@@@@@@@@@@@@@';
        TextProcessingLbl3: Label 'Criando Mov Despesa: @1@@@@@@@@@@@@@@@';
        TextProcessingLbl4: Label 'Corrige UN em PDP: @1@@@@@@@@@@@@@@@';
        TextProcessingLbl5: Label 'Corrige UN em PDP Reg.: @1@@@@@@@@@@@@@@@';
        TextProcessingLbl6: Label 'Corrige UN Encomenda: @1@@@@@@@@@@@@@@@';
        TextProcessingLbl7: Label 'Corrige UN Guia Remessa: @1@@@@@@@@@@@@@@@';
        Window: Dialog;
        Counter: Integer;
        TotalCount: Integer;
}
