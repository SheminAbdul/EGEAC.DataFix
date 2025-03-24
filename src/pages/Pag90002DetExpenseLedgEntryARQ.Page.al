page 90002 "Det Expense Ledg Entry"
{
    ApplicationArea = All;
    Caption = 'Det Expense Ledg Entry';
    PageType = List;
    SourceTable = "QQQAB Det Expense Ledg Entry";
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("Expense Ledger Entry No."; Rec."Expense Ledger Entry No.")
                {
                    ToolTip = 'Specifies the value of the Expense Ledger Entry No. field.';
                }
                field("Entry Type"; Rec."Entry Type")
                {
                    ToolTip = 'Specifies the value of the Entry Type field.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field("Excluded from calculation"; Rec."Excluded from calculation")
                {
                    ToolTip = 'Specifies the value of the Excluded from calculation field.';
                }
                field("Authorized Amount"; Rec."Authorized Amount")
                {
                    ToolTip = 'Specifies the value of the Authorized Amount field.';
                }
                field("A. P. Doc. No."; Rec."A. P. Doc. No.")
                {
                    ToolTip = 'Specifies the value of the A. P. Doc. No. field.', Comment = '%';
                }
                field("Contract  No."; Rec."Contract  No.")
                {
                    ToolTip = 'Specifies the value of the Contract  No. field.';
                }
                field("Work No."; Rec."Work No.")
                {
                    ToolTip = 'Specifies the value of the Work No. field.', Comment = '%';
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
                field("Treasure Operation"; Rec."Treasure Operation")
                {
                    ToolTip = 'Specifies the value of the Treasure Operation field.', Comment = '%';
                }
                field("GL Account"; Rec."GL Account")
                {
                    ToolTip = 'Specifies the value of the GL Account field.', Comment = '%';
                }
                field("Leasing Type"; Rec."Leasing Type")
                {
                    ToolTip = 'Specifies the value of the Leasing Type field.', Comment = '%';
                }
                field("Working Capital No."; Rec."Working Capital No.")
                {
                    ToolTip = 'Specifies the value of the Working Capital No. field.';
                }
                field("Working Capital Type"; Rec."Working Capital Type")
                {
                    ToolTip = 'Specifies the value of the Working Capital Type field.';
                }
                field(Reversed; Rec.Reversed)
                {
                    ToolTip = 'Specifies the value of the Reversed field.', Comment = '%';
                }
                field("Reversed Entry No."; Rec."Reversed Entry No.")
                {
                    ToolTip = 'Specifies the value of the Reversed Entry No. field.', Comment = '%';
                }
                field("Reverse Entry No."; Rec."Reverse Entry No.")
                {
                    ToolTip = 'Specifies the value of the Reverse Entry No. field.', Comment = '%';
                }
                field("Expense Proposal No."; Rec."Expense Proposal No.")
                {
                    ToolTip = 'Specifies the value of the Expense Proposal No. field.', Comment = '%';
                }
                field("Accrual No."; Rec."Accrual No.")
                {
                    ToolTip = 'Specifies the value of the Accrual No. field.', Comment = '%';
                }
                field("Compromise No."; Rec."Compromise No.")
                {
                    ToolTip = 'Specifies the value of the Compromise No. field.', Comment = '%';
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                    ToolTip = 'Specifies the value of the Invoice No. field.', Comment = '%';
                }
                field("Cr. Memo no."; Rec."Cr. Memo no.")
                {
                    ToolTip = 'Specifies the value of the Cr. Memo no. field.', Comment = '%';
                }
                field("Payment Order No."; Rec."Payment Order No.")
                {
                    ToolTip = 'Specifies the value of the Payment Order No. field.', Comment = '%';
                }
                field(Closed; Rec.Closed)
                {
                    ToolTip = 'Specifies the value of the Closed field.', Comment = '%';
                }
                field("Transaction No."; Rec."Transaction No.")
                {
                    ToolTip = 'Specifies the value of the Transaction No. field.', Comment = '%';
                }
                field("External Document No."; Rec."External Document No.")
                {
                    ToolTip = 'Specifies the value of the External Document No. field.', Comment = '%';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ToolTip = 'Specifies the value of the Dimension Set ID field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field("By Diary"; Rec."By Diary")
                {
                    ToolTip = 'Specifies the value of the By Diary field.', Comment = '%';
                }
                field("Payment Order Type"; Rec."Payment Order Type")
                {
                    ToolTip = 'Specifies the value of the Payment Order Type field.', Comment = '%';
                }
                field("Job No."; Rec."Job No.")
                {
                    ToolTip = 'Specifies the value of the Job No. field.';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ToolTip = 'Specifies the value of the Job Task No. field.';
                }
                field("Job Task"; Rec."Job Task")
                {
                    ToolTip = 'Specifies the value of the Job Task field.', Comment = '%';
                }
                field("CPV Code"; Rec."CPV Code")
                {
                    ToolTip = 'Specifies the value of the CPV Code field.', Comment = '%';
                }
                field(Service; Rec.Service)
                {
                    ToolTip = 'Specifies the value of the Service field.', Comment = '%';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ToolTip = 'Specifies the value of the Vendor No. field.', Comment = '%';
                }
                field("Central Budget Classification"; Rec."Central Budget Classification")
                {
                    ToolTip = 'Specifies the value of the Central Budget Classification field.', Comment = '%';
                }
                field("Old Amount"; Rec."Old Amount")
                {
                    ToolTip = 'Specifies the value of the Old Amount field.', Comment = '%';
                }
                field("Expense Ledg. Entry Open"; Rec."Expense Ledg. Entry Open")
                {
                    ToolTip = 'Specifies the value of the Expense Ledg. Entry Open field.';
                }
                field("Update user"; Rec."Update user")
                {
                    ToolTip = 'Specifies the value of the Update user field.', Comment = '%';
                }
                field("Updated datetime"; Rec."Updated datetime")
                {
                    ToolTip = 'Specifies the value of the Updated datetime field.', Comment = '%';
                }
                field("Document Type Original"; Rec."Document Type Original")
                {
                    ToolTip = 'Specifies the value of the Document Type field.';
                }
                field("Document No. Original"; Rec."Document No. Original")
                {
                    ToolTip = 'Specifies the value of the Document No. Original field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ToolTip = 'Specifies the value of the Currency Code field.';
                }
                field("Vendor Ledger Entry No."; Rec."Vendor Ledger Entry No.")
                {
                    ToolTip = 'Specifies the value of the Vendor Ledger Entry No. field.', Comment = '%';
                }
                field("Amount (LCY)"; Rec."Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Amount (LCY) field.';
                }
                field("Authorized Amount (LCY)"; Rec."Authorized Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Authorized Amount (LCY) field.';
                }
                field("EGC Vendor Gender"; Rec."EGC Vendor Gender")
                {
                    ToolTip = 'Specifies the value of the Vendor Gender field.';
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
