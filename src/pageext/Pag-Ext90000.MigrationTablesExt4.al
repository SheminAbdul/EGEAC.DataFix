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

            action(fixretention)
            {
                ApplicationArea = All;
                Caption = 'Fix Retention on Payment Order';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables";
                begin
                    Clear(MigrationCu);
                    MigrationCu.FixRetentionNo();
                end;
            }
            action(UpdateDimJLE)
            {
                ApplicationArea = All;
                Caption = 'Update JLE Dim';
                image = Receipt;
                trigger OnAction()
                var
                    MigrationCu: Codeunit "migration tables SMA";
                begin
                    Clear(MigrationCu);
                    MigrationCu.UpdateDimJLE();
                end;
            }

        }
    }

}
