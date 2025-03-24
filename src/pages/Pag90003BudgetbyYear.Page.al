page 90003 "Budget by Year"
{
    ApplicationArea = All;
    Caption = 'Budget by Year';
    PageType = List;
    SourceTable = "QQQCP Budget by Year";
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                }
                field("Budget Dimension 1 Code"; Rec."Budget Dimension 1 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 1 Code field.';
                }
                field("Budget Dimension 2 Code"; Rec."Budget Dimension 2 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 2 Code field.';
                }
                field("Budget Dimension 3 Code"; Rec."Budget Dimension 3 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 3 Code field.';
                }
                field("Budget Dimension 4 Code"; Rec."Budget Dimension 4 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 4 Code field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.', Comment = '%';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ToolTip = 'Specifies the value of the Vendor No. field.';
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ToolTip = 'Specifies the value of the Vendor Name field.', Comment = '%';
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Amount Inc. VAT"; Rec."Amount Inc. VAT")
                {
                    ToolTip = 'Specifies the value of the Amount Inc. VAT field.';
                }
                field("Contract No."; Rec."Contract No.")
                {
                    ToolTip = 'Specifies the value of the Contract No. field.', Comment = '%';
                }
                field("Compromise Amount"; Rec."Compromise Amount")
                {
                    ToolTip = 'Specifies the value of the Compromise Amount field.';
                }
                field("Aditional Posting Group"; Rec."Aditional Posting Group")
                {
                    ToolTip = 'Specifies the value of the Additional Posting Group field.';
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ToolTip = 'Specifies the value of the VAT Bus. Posting Group field.', Comment = '%';
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ToolTip = 'Specifies the value of the VAT Prod. Posting Group field.', Comment = '%';
                }
                field("CPV Code"; Rec."CPV Code")
                {
                    ToolTip = 'Specifies the value of the CPV Code field.';
                }
                field("Job No."; Rec."Job No.")
                {
                    ToolTip = 'Specifies the value of the Job No. field.', Comment = '%';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ToolTip = 'Specifies the value of the Job Task No. field.', Comment = '%';
                }
                field("CPV Net Amount (Temp)"; Rec."CPV Net Amount (Temp)")
                {
                    ToolTip = 'Specifies the value of the CPV Net Amount (Temp) field.', Comment = '%';
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                    ToolTip = 'Specifies the value of the Cost Amount field.', Comment = '%';
                }
                field("Cost Amount Adjudicated"; Rec."Cost Amount Adjudicated")
                {
                    ToolTip = 'Specifies the value of the Cost Amount Adjudicated field.', Comment = '%';
                }
                field("Amount (LCY)"; Rec."Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Amount (LCY) field.', Comment = '%';
                }
                field("Amount Inc. VAT (LCY)"; Rec."Amount Inc. VAT (LCY)")
                {
                    ToolTip = 'Specifies the value of the Amount Inc. VAT (LCY) field.', Comment = '%';
                }
                field("Cost Amount (LCY)"; Rec."Cost Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Cost Amount (LCY) field.', Comment = '%';
                }
                field("Cost Amount Adjud. (LCY)"; Rec."Cost Amount Adjud. (LCY)")
                {
                    ToolTip = 'Specifies the value of the Cost Amount Adjudicated (LCY) field.', Comment = '%';
                }
                field("Compromise Amount (LCY)"; Rec."Compromise Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Compromise Amount (LCY) field.', Comment = '%';
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
