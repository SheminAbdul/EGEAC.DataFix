page 90011 "Exp Ledger Entry Migration"
{
    ApplicationArea = All;
    Caption = 'Exp Ledger Entry Migration';
    PageType = List;
    SourceTable = "QQQAB Expense Ledger Entry";

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
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Remaining Amount"; Rec."Remaining Amount")
                {
                    ToolTip = 'Specifies the value of the Remaining Amount field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field(Open; Rec.Open)
                {
                    ToolTip = 'Specifies the value of the Open field.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ToolTip = 'Specifies the value of the Document Date field.';
                }
                field("Original Amount"; Rec."Original Amount")
                {
                    ToolTip = 'Specifies the value of the Original Amount field.';
                }
                field("Authorized Amount"; Rec."Authorized Amount")
                {
                    ToolTip = 'Specifies the value of the Remaining Amount field.';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ToolTip = 'Specifies the value of the Vendor No. field.';
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ToolTip = 'Specifies the value of the Vendor Name field.';
                }
                field("A. P. Doc. No."; Rec."A. P. Doc. No.")
                {
                    ToolTip = 'Specifies the value of the A. P. Doc. No. field.';
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
                    ToolTip = 'Specifies the value of the Treasure Operation field.';
                }
                field("GL Account"; Rec."GL Account")
                {
                    ToolTip = 'Specifies the value of the GL Account field.';
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
                    ToolTip = 'Specifies the value of the Reversed field.';
                }
                field("Expense Proposal No."; Rec."Expense Proposal No.")
                {
                    ToolTip = 'Specifies the value of the Expense Proposal No. field.';
                }
                field("Accrual No."; Rec."Accrual No.")
                {
                    ToolTip = 'Specifies the value of the Accrual No. field.';
                }
                field("Compromise No."; Rec."Compromise No.")
                {
                    ToolTip = 'Specifies the value of the Compromise No. field.';
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                    ToolTip = 'Specifies the value of the Invoice No. field.';
                }
                field("Cr. Memo no."; Rec."Cr. Memo no.")
                {
                    ToolTip = 'Specifies the value of the Cr. Memo no. field.';
                }
                field("Payment Order No."; Rec."Payment Order No.")
                {
                    ToolTip = 'Specifies the value of the Payment Order No. field.';
                }
                field("Contract  No."; Rec."Contract  No.")
                {
                    ToolTip = 'Specifies the value of the Contract  No. field.';
                }
                field("Work No."; Rec."Work No.")
                {
                    ToolTip = 'Specifies the value of the Work No. field.';
                }
                field("Leasing Type"; Rec."Leasing Type")
                {
                    ToolTip = 'Specifies the value of the Leasing Type field.';
                }
                field("Original Posting Date"; Rec."Original Posting Date")
                {
                    ToolTip = 'Specifies the value of the Original Posting Date field.';
                }
                field(Closed; Rec.Closed)
                {
                    ToolTip = 'Specifies the value of the Closed field.';
                }
                field("Transaction No."; Rec."Transaction No.")
                {
                    ToolTip = 'Specifies the value of the Transaction No. field.';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ToolTip = 'Specifies the value of the Dimension Set ID field.';
                }
                field("Vendor Invoice No."; Rec."Vendor Invoice No.")
                {
                    ToolTip = 'Specifies the value of the Vendor Invoice No. field.';
                }
                field("Vendor CR. Memo No."; Rec."Vendor CR. Memo No.")
                {
                    ToolTip = 'Specifies the value of the Vendor CR. Memo No. field.';
                }
                field("Actual Amount"; Rec."Actual Amount")
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Previous Year Entry No."; Rec."Previous Year Entry No.")
                {
                    ToolTip = 'Specifies the value of the Previous Year Entry No. field.';
                }
                field("Next Year Entry No."; Rec."Next Year Entry No.")
                {
                    ToolTip = 'Specifies the value of the Next Year Entry No. field.';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.';
                }
                field("Initial Budget"; Rec."Initial Budget")
                {
                    ToolTip = 'Specifies the value of the Initial Budget field.';
                }
                field("Reinforcement Reverse"; Rec."Reinforcement Reverse")
                {
                    ToolTip = 'Specifies the value of the Reinforcement Reverse field.';
                }
                field("Corrected Budget"; Rec."Corrected Budget")
                {
                    ToolTip = 'Specifies the value of the Corrected Budget field.';
                }
                field("Payed Expense"; Rec."Payed Expense")
                {
                    ToolTip = 'Specifies the value of the Payed Expense field.';
                }
                field("Charges Assumed"; Rec."Charges Assumed")
                {
                    ToolTip = 'Specifies the value of the Charges Assumed field.';
                }
                field("Available Amount"; Rec."Available Amount")
                {
                    ToolTip = 'Specifies the value of the Available Amount field.';
                }
                field("Emergent Expense"; Rec."Emergent Expense")
                {
                    ToolTip = 'Specifies the value of the Emergent Expense field.';
                }
                field("Residual Amount"; Rec."Residual Amount")
                {
                    ToolTip = 'Specifies the value of the Residual Amount field.';
                }
                field("Available Endowments"; Rec."Available Endowments")
                {
                    ToolTip = 'Specifies the value of the Available Endowments field.';
                }
                field("Available Endowments Approval"; Rec."Available Endowments Approval")
                {
                    ToolTip = 'Specifies the value of the Available Endowments Approval field.';
                }
                field("Total Accrual Before Post"; Rec."Total Accrual Before Post")
                {
                    ToolTip = 'Specifies the value of the Total Accrual Before Post field.';
                }
                field("Accrual Net Amount"; Rec."Accrual Net Amount")
                {
                    ToolTip = 'Specifies the value of the Accrual Net Amount field.';
                }
                field("FM Posting Type"; Rec."FM Posting Type")
                {
                    ToolTip = 'Specifies the value of the FM Posting Type field.';
                }
                field("FM Vendor No."; Rec."FM Vendor No.")
                {
                    ToolTip = 'Specifies the value of the FM Vendor No. field.';
                }
                field("Job No."; Rec."Job No.")
                {
                    ToolTip = 'Specifies the value of the Job No. field.';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ToolTip = 'Specifies the value of the Job Task No. field.';
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                    ToolTip = 'Specifies the value of the Cost Amount field.';
                }
                field("Applyes to ID"; Rec."Applyes to ID")
                {
                    ToolTip = 'Specifies the value of the Applyes to ID field.';
                }
                field("CPV Code"; Rec."CPV Code")
                {
                    ToolTip = 'Specifies the value of the CPV Code field.';
                }
                field(Service; Rec.Service)
                {
                    ToolTip = 'Specifies the value of the Service field.';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ToolTip = 'Specifies the value of the Due Date field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ToolTip = 'Specifies the value of the Currency Code field.';
                }
                field("Vendor Ledger Entry No."; Rec."Vendor Ledger Entry No.")
                {
                    ToolTip = 'Specifies the value of the Vendor Ledger Entry No. field.';
                }
                field("Amount (LCY)"; Rec."Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Amount (LCY) field.';
                }
                field("Remaining Amount (LCY)"; Rec."Remaining Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Remaining Amount (LCY) field.';
                }
                field("Authorized Amount (LCY)"; Rec."Authorized Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Remaining Amount field.';
                }
                field("Adjusted Currency Factor"; Rec."Adjusted Currency Factor")
                {
                    ToolTip = 'Specifies the value of the Adjusted Currency Factor field.';
                }
                field("Original Currency Factor"; Rec."Original Currency Factor")
                {
                    ToolTip = 'Specifies the value of the Original Currency Factor field.';
                }
                field("EGC Vendor Gender"; Rec."EGC Vendor Gender")
                {
                    ToolTip = 'Specifies the value of the Vendor Gender field.';
                }
                field("EGC Cabimento"; Rec."EGC Cabimento")
                {
                    ToolTip = 'Specifies the value of the Cabimento field.';
                }
                field("Dotação Inicial"; Rec."Dotação Inicial")
                {
                    ToolTip = 'Specifies the value of the Dotação Inicial field.';
                }
                field("EGC Faturado"; Rec."EGC Faturado")
                {
                    ToolTip = 'Specifies the value of the Faturado field.';
                }
                field("EGC NATCabimento"; Rec."EGC NATCabimento")
                {
                    ToolTip = 'Specifies the value of the Cabimento field.';
                }
                field("NATDotação Corrigida"; Rec."NATDotação Corrigida")
                {
                    ToolTip = 'Specifies the value of the Dotação Corrigida field.';
                }
                field("NATDotação Inicial"; Rec."NATDotação Inicial")
                {
                    ToolTip = 'Specifies the value of the Dotação Inicial field.';
                }
                field("EGC NATFaturado"; Rec."EGC NATFaturado")
                {
                    ToolTip = 'Specifies the value of the Faturado field.';
                }
                field("EGC CabimentoPD"; Rec."EGC CabimentoPD")
                {
                    ToolTip = 'Specifies the value of the Cabimento field.';
                }
                field("EGC Faturas Pagar"; Rec."EGC Faturas Pagar")
                {
                    ToolTip = 'Specifies the value of the Faturado field.';
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
