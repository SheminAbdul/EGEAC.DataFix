page 90006 "Reports UO Mapping "
{
    ApplicationArea = All;
    Caption = 'Reports UO Mapping ';
    PageType = List;
    SourceTable = "EGC Profit/Loss Setup Hdr";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the UO Code field.', Comment = '%';
                }
                field("Long Name"; Rec."Long Name")
                {
                    ToolTip = 'Specifies the value of the UO Long Description field.', Comment = '%';
                }
                field("Dim. Value Type"; Rec."Dim. Value Type")
                {
                    ToolTip = 'Specifies the value of the Dim. Value Type field.', Comment = '%';
                }
                field(Totaling; Rec.Totaling)
                {
                    ToolTip = 'Specifies the value of the Totaling field.', Comment = '%';
                }
                field("Order"; Rec."Order")
                {
                    ToolTip = 'Specifies the value of the Order field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field(IncomeStat; Rec.IncomeStat)
                {
                    ToolTip = 'Specifies the value of the Income Statement field.', Comment = '%';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.', Comment = '%';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.', Comment = '%';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.', Comment = '%';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.', Comment = '%';
                }
            }
        }
    }
}
