pageextension 90001 "Generic Pay. Order Ext" extends "QQQCP Generic Payment Order"
{
    layout
    {
        addafter("Bal. No.")
        {
            field("Cashflowcode"; rec."Cash-flow code")
            {
                ApplicationArea = All;
                ToolTip = 'Cash-flow code';
                Caption = 'Cód. Fluxo Caixa';
            }
        }
    }
}
