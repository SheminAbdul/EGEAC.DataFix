pageextension 90000 "Migration Tables Ext4" extends "QQQAB Cidadela Setup 2"
{
    actions
    {
        addafter("&Habitation")
        {
            action(MigrateTable)
            {
                ApplicationArea = All;
                Caption = 'Migration Tables';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables";
                begin
                    Clear(MigrationCu);
                    MigrationCu.MigrateTable();
                end;
            }
            action(CleanCVPCode)
            {
                ApplicationArea = All;
                Caption = 'Clean CVP Code';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables";
                begin
                    Clear(MigrationCu);
                    MigrationCu.CleanCVPCode();
                end;
            }

            action(CleanIJLQty)
            {
                ApplicationArea = All;
                Caption = 'Clean Item Journal Qty';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables SMA";
                begin
                    Clear(MigrationCu);
                    MigrationCu.CleanIJLQty();
                end;
            }

            action(ChangeEntryNoILE)
            {
                ApplicationArea = All;
                Caption = 'Change Entry No ILE';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables SMA";
                begin
                    Clear(MigrationCu);
                    MigrationCu.ChangeEntryILE();
                end;
            }
            action(FixExpenseProposal)
            {
                ApplicationArea = All;
                Caption = 'Fix Expense Line VAT';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "Migration Tables";
                begin
                    Clear(MigrationCu);
                    MigrationCu.FixExpenseProposal();
                end;
            }
            action(FixUnitOfMeasure)
            {
                ApplicationArea = All;
                Caption = 'Fix Unit Of Measure';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "Migration Tables";
                begin
                    Clear(MigrationCu);
                    MigrationCu.FixUnitOfMeasure();
                end;
            }

            action(ChangeCashflowcode)
            {
                ApplicationArea = All;
                Caption = 'Change Cashflow Code';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables SMA";
                begin
                    Clear(MigrationCu);
                    MigrationCu.changecashflowcode();
                end;
            }

            action(BankLedgerEntry)
            {
                ApplicationArea = All;
                Caption = 'Change Bank Ledger Entry';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables SMA";
                begin
                    Clear(MigrationCu);
                    MigrationCu.MigrateDataBankLedgerEntry();
                    ;
                end;
            }

            action(BankAccSTLine)
            {
                ApplicationArea = All;
                Caption = 'Change Bank Acc ST Line';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables SMA";
                begin
                    Clear(MigrationCu);
                    MigrationCu.MigrateDataBankAccSTLine();
                end;
            }
            action(Jobs)
            {
                ApplicationArea = All;
                Caption = 'Change Jobs';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables SMA";
                begin
                    Clear(MigrationCu);
                    MigrationCu.MigrateJobsandTasks();
                end;
            }
            action(JobLedgerEntry)
            {
                ApplicationArea = All;
                Caption = 'Migrate Job Ledger Entry';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables SMA";
                begin
                    Clear(MigrationCu);
                    MigrationCu.MigrateJobLedgerEntry();
                end;
            }

            action(JobDim)
            {
                ApplicationArea = All;
                Caption = 'Change Job Dimenssions';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables SMA";
                begin
                    Clear(MigrationCu);
                    MigrationCu.MigrateJobDimension();
                end;
            }

        }
    }

}
