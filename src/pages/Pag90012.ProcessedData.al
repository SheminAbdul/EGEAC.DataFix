page 90012 "Processed Data"
{
    ApplicationArea = All;
    Caption = 'Processed Data';
    PageType = List;
    SourceTable = "QQQTI Processed Data";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Buffer Entry No."; Rec."Buffer Entry No.")
                {
                    ToolTip = 'Specifies the value of the Buffer Entry No. field.';
                }
                field("Ticket Origin"; Rec."Ticket Origin")
                {
                    ToolTip = 'Specifies the value of the Ticket Origin field.';
                }
                field("Processed Entry No."; Rec."Processed Entry No.")
                {
                    ToolTip = 'Specifies the value of the Processed Entry No. field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field("Previous ID"; Rec."Previous ID")
                {
                    ToolTip = 'Specifies the value of the Previous ID field.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field.';
                }
                field("Event Time"; Rec."Event Time")
                {
                    ToolTip = 'Specifies the value of the Event Time field.';
                }
                field("Sales Time"; Rec."Sales Time")
                {
                    ToolTip = 'Specifies the value of the Sales Time field.';
                }
                field("Check Date"; Rec."Check Date")
                {
                    ToolTip = 'Specifies the value of the Check Date field.';
                }
                field("Entity Code"; Rec."Entity Code")
                {
                    ToolTip = 'Specifies the value of the Entity Code field.';
                }
                field("Entity Description"; Rec."Entity Description")
                {
                    ToolTip = 'Specifies the value of the Entity Description field.';
                }
                field("Entity Type"; Rec."Entity Type")
                {
                    ToolTip = 'Specifies the value of the Entity Type field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field("Discount Type"; Rec."Discount Type")
                {
                    ToolTip = 'Specifies the value of the Discount Type field.';
                }
                field("Discount Description"; Rec."Discount Description")
                {
                    ToolTip = 'Specifies the value of the Discount Description field.';
                }
                field("VAT Code"; Rec."VAT Code")
                {
                    ToolTip = 'Specifies the value of the VAT Code field.';
                }
                field("VAT Prod Posting Group"; Rec."VAT Prod Posting Group")
                {
                    ToolTip = 'Specifies the value of the VAT Prod Posting Group field.';
                }
                field("Admission Type Code"; Rec."Admission Type Code")
                {
                    ToolTip = 'Specifies the value of the Admission Type Code field.';
                }
                field("Admission Type Description"; Rec."Admission Type Description")
                {
                    ToolTip = 'Specifies the value of the Admission Type Description field.';
                }
                field("Event Code"; Rec."Event Code")
                {
                    ToolTip = 'Specifies the value of the Event Code field.';
                }
                field("Event Description"; Rec."Event Description")
                {
                    ToolTip = 'Specifies the value of the Event Description field.';
                }
                field("Room Code"; Rec."Room Code")
                {
                    ToolTip = 'Specifies the value of the Room Code field.';
                }
                field("Room Description"; Rec."Room Description")
                {
                    ToolTip = 'Specifies the value of the Room Description field.';
                }
                field("Room Capacity"; Rec."Room Capacity")
                {
                    ToolTip = 'Specifies the value of the Room Capacity field.';
                }
                field("Sector Code"; Rec."Sector Code")
                {
                    ToolTip = 'Specifies the value of the Sector Code field.';
                }
                field("Sector Description"; Rec."Sector Description")
                {
                    ToolTip = 'Specifies the value of the Sector Description field.';
                }
                field("Session Code"; Rec."Session Code")
                {
                    ToolTip = 'Specifies the value of the Session Code field.';
                }
                field("Session Description"; Rec."Session Description")
                {
                    ToolTip = 'Specifies the value of the Session Description field.';
                }
                field("Session Capacity"; Rec."Session Capacity")
                {
                    ToolTip = 'Specifies the value of the Session Capacity field.';
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ToolTip = 'Specifies the value of the Payment Method Code field.';
                }
                field("Payment Method Description"; Rec."Payment Method Description")
                {
                    ToolTip = 'Specifies the value of the Payment Method Description field.';
                }
                field("Check No."; Rec."Check No.")
                {
                    ToolTip = 'Specifies the value of the Check No. field.';
                }
                field("Bank Code"; Rec."Bank Code")
                {
                    ToolTip = 'Specifies the value of the Bank Code field.';
                }
                field("Bank Description"; Rec."Bank Description")
                {
                    ToolTip = 'Specifies the value of the Bank Description field.';
                }
                field("Sales Point Code"; Rec."Sales Point Code")
                {
                    ToolTip = 'Specifies the value of the Sales Point Code field.';
                }
                field("Sales Point Description"; Rec."Sales Point Description")
                {
                    ToolTip = 'Specifies the value of the Sales Point Description field.';
                }
                field("Sales Point Type"; Rec."Sales Point Type")
                {
                    ToolTip = 'Specifies the value of the Sales Point Type field.';
                }
                field("Customer NIF"; Rec."Customer NIF")
                {
                    ToolTip = 'Specifies the value of the Customer NIF field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Customer Address"; Rec."Customer Address")
                {
                    ToolTip = 'Specifies the value of the Customer Address field.';
                }
                field("Customer Location"; Rec."Customer Location")
                {
                    ToolTip = 'Specifies the value of the Customer Location field.';
                }
                field("Customer Postal Code"; Rec."Customer Postal Code")
                {
                    ToolTip = 'Specifies the value of the Customer Postal Code field.';
                }
                field("Customer Country"; Rec."Customer Country")
                {
                    ToolTip = 'Specifies the value of the Customer Country field.';
                }
                field("Customer Email"; Rec."Customer Email")
                {
                    ToolTip = 'Specifies the value of the Customer Email field.';
                }
                field("Customer Origin"; Rec."Customer Origin")
                {
                    ToolTip = 'Specifies the value of the Customer Origin field.';
                }
                field(Origin; Rec.Origin)
                {
                    ToolTip = 'Specifies the value of the Origin field.';
                }
                field(Operator; Rec.Operator)
                {
                    ToolTip = 'Specifies the value of the Operator field.';
                }
                field("Service Address Description"; Rec."Service Address Description")
                {
                    ToolTip = 'Specifies the value of the Service Address Description field.';
                }
                field("Invoice Cust No."; Rec."Invoice Cust No.")
                {
                    ToolTip = 'Specifies the value of the Invoice Cust No. field.';
                }
                field("Account No."; Rec."Account No.")
                {
                    ToolTip = 'Specifies the value of the Account No. field.';
                }
                field("Job No."; Rec."Job No.")
                {
                    ToolTip = 'Specifies the value of the Job No. field.';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ToolTip = 'Specifies the value of the Job Task No. field.';
                }
                field("SalesPerson Code"; Rec."SalesPerson Code")
                {
                    ToolTip = 'Specifies the value of the SalesPerson No. field.';
                }
                field("Public Quantity"; Rec."Public Quantity")
                {
                    ToolTip = 'Specifies the value of the Public Quantity field.';
                }
                field("Maps Quantity"; Rec."Maps Quantity")
                {
                    ToolTip = 'Specifies the value of the Maps Quantity field.';
                }
                field("Maps Discount Amount"; Rec."Maps Discount Amount")
                {
                    ToolTip = 'Specifies the value of the Maps Discount Amount field.';
                }
                field("Maps VAT Amount"; Rec."Maps VAT Amount")
                {
                    ToolTip = 'Specifies the value of the Maps VAT Amount field.';
                }
                field("Maps Total Amount"; Rec."Maps Total Amount")
                {
                    ToolTip = 'Specifies the value of the Maps Total Amount field.';
                }
                field("Maps Related Entry No."; Rec."Maps Related Entry No.")
                {
                    ToolTip = 'Specifies the value of the Maps Related Entry No. field.';
                }
                field("Excluded From Maps"; Rec."Excluded From Maps")
                {
                    ToolTip = 'Specifies the value of the Excluded From Maps field.';
                }
                field("Manual Entry"; Rec."Manual Entry")
                {
                    ToolTip = 'Specifies the value of the Manual Entry field.', Comment = '%';
                }
                field(Comments; Rec.Comments)
                {
                    ToolTip = 'Specifies the value of the Comments field.', Comment = '%';
                }
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                    ToolTip = 'Specifies the value of the Invoice No. field.';
                }
                field("Posted Doc. No."; Rec."Posted Doc. No.")
                {
                    ToolTip = 'Specifies the value of the Posted Doc. No. field.';
                }
                field("Posted Line No."; Rec."Posted Line No.")
                {
                    ToolTip = 'Specifies the value of the Posted Line No. field.';
                }
                field("Has Errors"; Rec."Has Errors")
                {
                    ToolTip = 'Specifies the value of the Has Errors field.';
                }
                field("Error Count"; Rec."Error Count")
                {
                    ToolTip = 'Specifies the value of the Error Count field.';
                }
                field("Processed Status"; Rec."Processed Status")
                {
                    ToolTip = 'Specifies the value of the Integration State field.';
                }
                field("Sales Date"; Rec."Sales Date")
                {
                    ToolTip = 'Specifies the value of the Sales Date field.';
                }
                field("Event Date"; Rec."Event Date")
                {
                    ToolTip = 'Specifies the value of the Event Date field.';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the value of the Unit Price field.';
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ToolTip = 'Specifies the value of the Total Amount field.';
                }
                field("Discount Amount"; Rec."Discount Amount")
                {
                    ToolTip = 'Specifies the value of the Discount Amount field.';
                }
                field("Total Discount"; Rec."Total Discount")
                {
                    ToolTip = 'Specifies the value of the Total Discount field.';
                }
                field("VAT Amount"; Rec."VAT Amount")
                {
                    ToolTip = 'Specifies the value of the VAT Amount field.';
                }
                field("Customer Age"; Rec."Customer Age")
                {
                    ToolTip = 'Specifies the value of the Customer Age field.';
                }
                field("Service Address"; Rec."Service Address")
                {
                    ToolTip = 'Specifies the value of the Service Address field.';
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
