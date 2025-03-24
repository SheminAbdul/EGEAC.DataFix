page 90007 "Report Nat Mapping"
{
    ApplicationArea = All;
    Caption = 'Report Nat Mapping';
    PageType = List;
    SourceTable = "EGC Profit/Loss Setup Line";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Nat Code field.', Comment = '%';
                }
                field("Long Name"; Rec."Long Name")
                {
                    ToolTip = 'Specifies the value of the Nat Long Description field.', Comment = '%';
                }
                field("Dim. Value Type"; Rec."Dim. Value Type")
                {
                    ToolTip = 'Specifies the value of the Dim. Value Type field.', Comment = '%';
                }
                field(Totaling; Rec.Totaling)
                {
                    ToolTip = 'Specifies the value of the Totaling field.', Comment = '%';
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field.', Comment = '%';
                }
                field(OrderLine; Rec.OrderLine)
                {
                    ToolTip = 'Specifies the value of the Order Line field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field(Parent; Rec.Parent)
                {
                    ToolTip = 'Specifies the value of the Parent field.', Comment = '%';
                }
                field(IncomeStat_OrderLine; Rec.IncomeStat_OrderLine)
                {
                    ToolTip = 'Specifies the value of the Income Statement Order Line field.', Comment = '%';
                }
                field(IncomeStat_Group; Rec.IncomeStat_Group)
                {
                    ToolTip = 'Specifies the value of the Income Statement Group field.', Comment = '%';
                }
                field("Income Statement Type"; Rec."Income Statement Type")
                {
                    ToolTip = 'Specifies the value of the Income Statement Type field.', Comment = '%';
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
