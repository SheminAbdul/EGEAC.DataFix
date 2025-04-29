tableextension 90000 "Exp Doc Line Ext" extends "QQQCP Expense Document Line"
{
    fields
    {
        modify("quantity")
        {
            trigger OnAfterValidate()
            begin
                MigrationTables.VerifyDeduct(rec);
            end;
        }
        modify("Pay-to Vendor No.")
        {
            trigger OnAfterValidate()
            begin
                MigrationTables.VerifyDeduct(rec);
            end;
        }
    }
    var
        MigrationTables: Codeunit "Migration Tables";

}
