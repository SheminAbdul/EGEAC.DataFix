page 90001 "Purch. Rcpt Line Migration"
{
    ApplicationArea = All;
    Caption = 'Purch. Rcpt Line Migration';
    PageType = list;
    SourceTable = "Purch. Rcpt. Line";
    Permissions = tabledata "Purch. Rcpt. Line" = rmid;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Allow Invoice Disc."; Rec."Allow Invoice Disc.")
                {
                    ToolTip = 'Specifies the value of the Allow Invoice Disc. field.', Comment = '%';
                }
                field("Appl.-to Item Entry"; Rec."Appl.-to Item Entry")
                {
                    ToolTip = 'Specifies the number of the item ledger entry that the document or journal line is applied to.';
                }
                field("Area"; Rec."Area")
                {
                    ToolTip = 'Specifies the value of the Area field.', Comment = '%';
                }
                field("Attached to Line No."; Rec."Attached to Line No.")
                {
                    ToolTip = 'Specifies the value of the Attached to Line No. field.', Comment = '%';
                }
                field("Bin Code"; Rec."Bin Code")
                {
                    ToolTip = 'Specifies the bin where the items are picked or put away.';
                }
                field("Blanket Order Line No."; Rec."Blanket Order Line No.")
                {
                    ToolTip = 'Specifies the number of the blanket order line that the record originates from.';
                }
                field("Blanket Order No."; Rec."Blanket Order No.")
                {
                    ToolTip = 'Specifies the number of the blanket order that the record originates from.';
                }
                field("Budgeted FA No."; Rec."Budgeted FA No.")
                {
                    ToolTip = 'Specifies the value of the Budgeted FA No. field.', Comment = '%';
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ToolTip = 'Specifies the name of the vendor who delivered the items.';
                }
                field(Correction; Rec.Correction)
                {
                    ToolTip = 'Specifies the entry as a corrective entry. You can use the field if you need to post a corrective entry to an account.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ToolTip = 'Specifies the currency that is used on the entry.';
                }
                field("Depr. Acquisition Cost"; Rec."Depr. Acquisition Cost")
                {
                    ToolTip = 'Specifies the value of the Depr. Acquisition Cost field.', Comment = '%';
                }
                field("Depr. until FA Posting Date"; Rec."Depr. until FA Posting Date")
                {
                    ToolTip = 'Specifies the value of the Depr. until FA Posting Date field.', Comment = '%';
                }
                field("Depreciation Book Code"; Rec."Depreciation Book Code")
                {
                    ToolTip = 'Specifies the value of the Depreciation Book Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies a description of additional receipts posted.';
                }
                field("Description 2"; Rec."Description 2")
                {
                    ToolTip = 'Specifies information in addition to the description.';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ToolTip = 'Specifies the value of the Dimension Set ID field.', Comment = '%';
                }
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    ToolTip = 'Specifies the cost of one unit of the selected item or resource.';
                }
                field("Document Id"; Rec."Document Id")
                {
                    ToolTip = 'Specifies the value of the Document Id field.', Comment = '%';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the number of the related document.';
                }
                field("Duplicate in Depreciation Book"; Rec."Duplicate in Depreciation Book")
                {
                    ToolTip = 'Specifies the value of the Duplicate in Depreciation Book field.', Comment = '%';
                }
                field("Entry Point"; Rec."Entry Point")
                {
                    ToolTip = 'Specifies the value of the Entry Point field.', Comment = '%';
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    ToolTip = 'Specifies the date you expect the items to be available in your warehouse. If you leave the field blank, it will be calculated as follows: Planned Receipt Date + Safety Lead Time + Inbound Warehouse Handling Time = Expected Receipt Date.';
                }
                field("FA Posting Date"; Rec."FA Posting Date")
                {
                    ToolTip = 'Specifies the value of the FA Posting Date field.', Comment = '%';
                }
                field("FA Posting Type"; Rec."FA Posting Type")
                {
                    ToolTip = 'Specifies the value of the FA Posting Type field.', Comment = '%';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ToolTip = 'Specifies the value of the Gen. Bus. Posting Group field.', Comment = '%';
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ToolTip = 'Specifies the value of the Gen. Prod. Posting Group field.', Comment = '%';
                }
                field("Gross Weight"; Rec."Gross Weight")
                {
                    ToolTip = 'Specifies the gross weight of one unit of the item. In the purchase statistics window, the gross weight on the line is included in the total gross weight of all the lines for the particular purchase document.';
                }
                field("IC Item Reference No."; Rec."IC Item Reference No.")
                {
                    ToolTip = 'Specifies the value of the IC Item Reference No. field.', Comment = '%';
                }
                field("IC Partner Ref. Type"; Rec."IC Partner Ref. Type")
                {
                    ToolTip = 'Specifies the value of the IC Partner Ref. Type field.', Comment = '%';
                }
                field("IC Partner Reference"; Rec."IC Partner Reference")
                {
                    ToolTip = 'Specifies the value of the IC Partner Reference field.', Comment = '%';
                }
                field("Inbound Whse. Handling Time"; Rec."Inbound Whse. Handling Time")
                {
                    ToolTip = 'Specifies the time it takes to make items part of available inventory, after the items have been posted as received.';
                }
                field("Indirect Cost %"; Rec."Indirect Cost %")
                {
                    ToolTip = 'Specifies the percentage of the item''s last purchase cost that includes indirect costs, such as freight that is associated with the purchase of the item.';
                }
                field("Insurance No."; Rec."Insurance No.")
                {
                    ToolTip = 'Specifies the value of the Insurance No. field.', Comment = '%';
                }
                field("Item Category Code"; Rec."Item Category Code")
                {
                    ToolTip = 'Specifies the value of the Item Category Code field.', Comment = '%';
                }
                field("Item Charge Base Amount"; Rec."Item Charge Base Amount")
                {
                    ToolTip = 'Specifies the value of the Item Charge Base Amount field.', Comment = '%';
                }
                field("Item Rcpt. Entry No."; Rec."Item Rcpt. Entry No.")
                {
                    ToolTip = 'Specifies the value of the Item Rcpt. Entry No. field.', Comment = '%';
                }
                field("Item Reference No."; Rec."Item Reference No.")
                {
                    ToolTip = 'Specifies the referenced item number.';
                }
                field("Item Reference Type"; Rec."Item Reference Type")
                {
                    ToolTip = 'Specifies the value of the Item Reference Type field.', Comment = '%';
                }
                field("Item Reference Type No."; Rec."Item Reference Type No.")
                {
                    ToolTip = 'Specifies the value of the Item Reference Type No. field.', Comment = '%';
                }
                field("Item Reference Unit of Measure"; Rec."Item Reference Unit of Measure")
                {
                    ToolTip = 'Specifies the value of the Unit of Measure (Item Ref.) field.', Comment = '%';
                }
                field("Job Currency Code"; Rec."Job Currency Code")
                {
                    ToolTip = 'Specifies the value of the Job Currency Code field.', Comment = '%';
                }
                field("Job Currency Factor"; Rec."Job Currency Factor")
                {
                    ToolTip = 'Specifies the value of the Job Currency Factor field.', Comment = '%';
                }
                field("Job Line Amount"; Rec."Job Line Amount")
                {
                    ToolTip = 'Specifies the value of the Job Line Amount field.', Comment = '%';
                }
                field("Job Line Amount (LCY)"; Rec."Job Line Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Job Line Amount (LCY) field.', Comment = '%';
                }
                field("Job Line Disc. Amount (LCY)"; Rec."Job Line Disc. Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Job Line Disc. Amount (LCY) field.', Comment = '%';
                }
                field("Job Line Discount %"; Rec."Job Line Discount %")
                {
                    ToolTip = 'Specifies the value of the Job Line Discount % field.', Comment = '%';
                }
                field("Job Line Discount Amount"; Rec."Job Line Discount Amount")
                {
                    ToolTip = 'Specifies the value of the Job Line Discount Amount field.', Comment = '%';
                }
                field("Job Line Type"; Rec."Job Line Type")
                {
                    ToolTip = 'Specifies the value of the Job Line Type field.', Comment = '%';
                }
                field("Job No."; Rec."Job No.")
                {
                    ToolTip = 'Specifies the number of the related job.';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ToolTip = 'Specifies the number of the related job task.';
                }
                field("Job Total Price"; Rec."Job Total Price")
                {
                    ToolTip = 'Specifies the value of the Job Total Price field.', Comment = '%';
                }
                field("Job Total Price (LCY)"; Rec."Job Total Price (LCY)")
                {
                    ToolTip = 'Specifies the value of the Job Total Price (LCY) field.', Comment = '%';
                }
                field("Job Unit Price"; Rec."Job Unit Price")
                {
                    ToolTip = 'Specifies the value of the Job Unit Price field.', Comment = '%';
                }
                field("Job Unit Price (LCY)"; Rec."Job Unit Price (LCY)")
                {
                    ToolTip = 'Specifies the value of the Job Unit Price (LCY) field.', Comment = '%';
                }
                field("Lead Time Calculation"; Rec."Lead Time Calculation")
                {
                    ToolTip = 'Specifies a date formula for the amount of time it takes to replenish the item.';
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ToolTip = 'Specifies the value of the Line Discount % field.', Comment = '%';
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.', Comment = '%';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ToolTip = 'Specifies a code for the location where you want the items to be placed when they are received.';
                }
                field("Maintenance Code"; Rec."Maintenance Code")
                {
                    ToolTip = 'Specifies the value of the Maintenance Code field.', Comment = '%';
                }
                field("Net Weight"; Rec."Net Weight")
                {
                    ToolTip = 'Specifies the net weight of one unit of the item. In the purchase statistics window, the net weight on the line is included in the total net weight of all the lines for the particular purchase document.';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field(Nonstock; Rec.Nonstock)
                {
                    ToolTip = 'Specifies that this item is a catalog item.';
                }
                field("Operation No."; Rec."Operation No.")
                {
                    ToolTip = 'Specifies the value of the Operation No. field.', Comment = '%';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ToolTip = 'Specifies the date when the related order was created.';
                }
                field("Order Line No."; Rec."Order Line No.")
                {
                    ToolTip = 'Specifies the line number of the order that created the entry.';
                }
                field("Order No."; Rec."Order No.")
                {
                    ToolTip = 'Specifies the value of the Order No. field.';
                }
                field("Over-Receipt Code 2"; Rec."Over-Receipt Code 2")
                {
                    ToolTip = 'Specifies the value of the Over-Receipt Code field.', Comment = '%';
                }
                field("Over-Receipt Quantity"; Rec."Over-Receipt Quantity")
                {
                    ToolTip = 'Specifies the value of the Over-Receipt Quantity field.', Comment = '%';
                }
                field("Overhead Rate"; Rec."Overhead Rate")
                {
                    ToolTip = 'Specifies the value of the Overhead Rate field.', Comment = '%';
                }
                field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
                {
                    ToolTip = 'Specifies the number of the vendor that you received the invoice from.';
                }
                field("Planned Receipt Date"; Rec."Planned Receipt Date")
                {
                    ToolTip = 'Specifies the date when the item is planned to arrive in inventory. Forward calculation: planned receipt date = order date + vendor lead time (per the vendor calendar and rounded to the next working day in first the vendor calendar and then the location calendar). If no vendor calendar exists, then: planned receipt date = order date + vendor lead time (per the location calendar). Backward calculation: order date = planned receipt date - vendor lead time (per the vendor calendar and rounded to the previous working day in first the vendor calendar and then the location calendar). If no vendor calendar exists, then: order date = planned receipt date - vendor lead time (per the location calendar).';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.', Comment = '%';
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    ToolTip = 'Specifies the value of the Posting Group field.', Comment = '%';
                }
                field("Price Calculation Method"; Rec."Price Calculation Method")
                {
                    ToolTip = 'Specifies the value of the Price Calculation Method field.', Comment = '%';
                }
                field("Prod. Order Line No."; Rec."Prod. Order Line No.")
                {
                    ToolTip = 'Specifies the value of the Prod. Order Line No. field.', Comment = '%';
                }
                field("Prod. Order No."; Rec."Prod. Order No.")
                {
                    ToolTip = 'Specifies the number of the related production order.';
                }
                field("Promised Receipt Date"; Rec."Promised Receipt Date")
                {
                    ToolTip = 'Specifies the date that the vendor has promised to deliver the order.';
                }
                field("Purchasing Code"; Rec."Purchasing Code")
                {
                    ToolTip = 'Specifies the value of the Purchasing Code field.', Comment = '%';
                }
                field("QQQAB Amount"; Rec."QQQAB Amount")
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("QQQAB Budget Dimension 1 Code"; Rec."QQQAB Budget Dimension 1 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 1 Code field.', Comment = '%';
                }
                field("QQQAB Budget Dimension 2 Code"; Rec."QQQAB Budget Dimension 2 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 2 Code field.', Comment = '%';
                }
                field("QQQAB Budget Dimension 3 Code"; Rec."QQQAB Budget Dimension 3 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 3 Code field.', Comment = '%';
                }
                field("QQQAB Budget Dimension 4 Code"; Rec."QQQAB Budget Dimension 4 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 4 Code field.', Comment = '%';
                }
                field("QQQAB Compromise No."; Rec."QQQAB Compromise No.")
                {
                    ToolTip = 'Specifies the value of the Accrual field.', Comment = '%';
                }
                field("QQQAB Contract No."; Rec."QQQAB Contract No.")
                {
                    ToolTip = 'Specifies the value of the Contract No. field.', Comment = '%';
                }
                field("QQQAB Cost Amount"; Rec."QQQAB Cost Amount")
                {
                    ToolTip = 'Specifies the value of the Cost Amount field.', Comment = '%';
                }
                field("QQQAB CPV Code"; Rec."QQQAB CPV Code")
                {
                    ToolTip = 'Specifies the value of the CPV field.', Comment = '%';
                }
                field("QQQAB Expense Proposal"; Rec."QQQAB Expense Proposal")
                {
                    ToolTip = 'Specifies the value of the Expense Proposal field.', Comment = '%';
                }
                field("QQQAB Expense Proposal Line"; Rec."QQQAB Expense Proposal Line")
                {
                    ToolTip = 'Specifies the value of the Expense Proposal Line field.', Comment = '%';
                }
                field("QQQAB Inter Requisition Line"; Rec."QQQAB Inter Requisition Line")
                {
                    ToolTip = 'Specifies the value of the Internal Requisition Line field.', Comment = '%';
                }
                field("QQQAB Internal Requisition"; Rec."QQQAB Internal Requisition")
                {
                    ToolTip = 'Specifies the value of the Internal Requisition field.', Comment = '%';
                }
                field("QQQAB Item No. Temp"; Rec."QQQAB Item No. Temp")
                {
                    ToolTip = 'Specifies the value of the Item No. Temp field.', Comment = '%';
                }
                field("QQQAB Item Received by Amount"; Rec."QQQAB Item Received by Amount")
                {
                    ToolTip = 'Specifies the value of the Item Received by Amount field.', Comment = '%';
                }
                field("QQQAB Order Type"; Rec."QQQAB Order Type")
                {
                    ToolTip = 'Specifies the value of the Order Type field.', Comment = '%';
                }
                field("QQQAB Quantity on Invoice"; Rec."QQQAB Quantity on Invoice")
                {
                    ToolTip = 'Specifies the value of the Quantity on Invoice field.';
                }
                field("QQQAB Vendor Order No."; Rec."QQQAB Vendor Order No.")
                {
                    ToolTip = 'Specifies the value of the Vendor Order No. field.';
                }
                field("QQQAB Vendor Shipment No."; Rec."QQQAB Vendor Shipment No.")
                {
                    ToolTip = 'Specifies the value of the Vendor Shipment No. field.';
                }
                field("QQQAB Work No."; Rec."QQQAB Work No.")
                {
                    ToolTip = 'Specifies the value of the Work No. field.', Comment = '%';
                }
                field("QQQAB Working Capital No."; Rec."QQQAB Working Capital No.")
                {
                    ToolTip = 'Specifies the value of the Working Capital No. field.', Comment = '%';
                }
                field("Qty. Invoiced (Base)"; Rec."Qty. Invoiced (Base)")
                {
                    ToolTip = 'Specifies the value of the Qty. Invoiced (Base) field.', Comment = '%';
                }
                field("Qty. per Unit of Measure"; Rec."Qty. per Unit of Measure")
                {
                    ToolTip = 'Specifies the quantity per unit of measure of the item that was received.';
                }
                field("Qty. Rcd. Not Invoiced"; Rec."Qty. Rcd. Not Invoiced")
                {
                    ToolTip = 'Specifies the quantity of the received item that has been posted as received but that has not yet been posted as invoiced.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the quantity of the item on the line.';
                }
                field("Quantity (Base)"; Rec."Quantity (Base)")
                {
                    ToolTip = 'Specifies the value of the Quantity (Base) field.', Comment = '%';
                }
                field("Quantity Invoiced"; Rec."Quantity Invoiced")
                {
                    ToolTip = 'Specifies how many units of the item on the line have been posted as invoiced.';
                }
                field("Requested Receipt Date"; Rec."Requested Receipt Date")
                {
                    ToolTip = 'Specifies the date that you want the vendor to deliver to the ship-to address. The value in the field is used to calculate the latest date you can order the items to have them delivered on the requested receipt date. If you do not need delivery on a specific date, you can leave the field blank.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ToolTip = 'Specifies the value of the Responsibility Center field.', Comment = '%';
                }
                field("Return Reason Code"; Rec."Return Reason Code")
                {
                    ToolTip = 'Specifies the code explaining why the item was returned.';
                }
                field("Routing No."; Rec."Routing No.")
                {
                    ToolTip = 'Specifies the value of the Routing No. field.', Comment = '%';
                }
                field("Routing Reference No."; Rec."Routing Reference No.")
                {
                    ToolTip = 'Specifies the value of the Routing Reference No. field.', Comment = '%';
                }
                field("Sales Order Line No."; Rec."Sales Order Line No.")
                {
                    ToolTip = 'Specifies the value of the Sales Order Line No. field.', Comment = '%';
                }
                field("Sales Order No."; Rec."Sales Order No.")
                {
                    ToolTip = 'Specifies the value of the Sales Order No. field.', Comment = '%';
                }
                field("Salvage Value"; Rec."Salvage Value")
                {
                    ToolTip = 'Specifies the value of the Salvage Value field.', Comment = '%';
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ToolTip = 'Specifies the code for Shortcut Dimension 1, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ToolTip = 'Specifies the code for Shortcut Dimension 2, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Special Order Sales Line No."; Rec."Special Order Sales Line No.")
                {
                    ToolTip = 'Specifies the value of the Special Order Sales Line No. field.', Comment = '%';
                }
                field("Special Order Sales No."; Rec."Special Order Sales No.")
                {
                    ToolTip = 'Specifies the value of the Special Order Sales No. field.', Comment = '%';
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
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ToolTip = 'Specifies the value of the Tax Area Code field.', Comment = '%';
                }
                field("Tax Group Code"; Rec."Tax Group Code")
                {
                    ToolTip = 'Specifies the value of the Tax Group Code field.', Comment = '%';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ToolTip = 'Specifies the value of the Tax Liable field.', Comment = '%';
                }
                field("Transaction Specification"; Rec."Transaction Specification")
                {
                    ToolTip = 'Specifies the value of the Transaction Specification field.', Comment = '%';
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ToolTip = 'Specifies the value of the Transaction Type field.', Comment = '%';
                }
                field("Transport Method"; Rec."Transport Method")
                {
                    ToolTip = 'Specifies the value of the Transport Method field.', Comment = '%';
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the line type.';
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ToolTip = 'Specifies the cost of one unit of the item or resource on the line.';
                }
                field("Unit Cost (LCY)"; Rec."Unit Cost (LCY)")
                {
                    ToolTip = 'Specifies the cost, in LCY, of one unit of the item or resource on the line.';
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ToolTip = 'Specifies the name of the item or resource''s unit of measure, such as piece or hour.';
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ToolTip = 'Specifies how each unit of the item or resource is measured, such as in pieces or hours. By default, the value in the Base Unit of Measure field on the item or resource card is inserted.';
                }
                field("Unit Price (LCY)"; Rec."Unit Price (LCY)")
                {
                    ToolTip = 'Specifies the value of the Unit Price (LCY) field.', Comment = '%';
                }
                field("Unit Volume"; Rec."Unit Volume")
                {
                    ToolTip = 'Specifies the volume of one unit of the item. In the purchase statistics window, the volume of one unit of the item on the line is included in the total volume of all the lines for the particular purchase document.';
                }
                field("Units per Parcel"; Rec."Units per Parcel")
                {
                    ToolTip = 'Specifies the number of units per parcel of the item. In the purchase statistics window, the number of units per parcel on the line helps to determine the total number of units for all the lines for the particular purchase document.';
                }
                field("Use Duplication List"; Rec."Use Duplication List")
                {
                    ToolTip = 'Specifies the value of the Use Duplication List field.', Comment = '%';
                }
                field("Use Tax"; Rec."Use Tax")
                {
                    ToolTip = 'Specifies the value of the Use Tax field.', Comment = '%';
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ToolTip = 'Specifies the variant of the item on the line.';
                }
                field("VAT %"; Rec."VAT %")
                {
                    ToolTip = 'Specifies the value of the VAT % field.', Comment = '%';
                }
                field("VAT Base Amount"; Rec."VAT Base Amount")
                {
                    ToolTip = 'Specifies the value of the VAT Base Amount field.', Comment = '%';
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ToolTip = 'Specifies the value of the VAT Bus. Posting Group field.', Comment = '%';
                }
                field("VAT Calculation Type"; Rec."VAT Calculation Type")
                {
                    ToolTip = 'Specifies the value of the VAT Calculation Type field.', Comment = '%';
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ToolTip = 'Specifies the value of the VAT Prod. Posting Group field.', Comment = '%';
                }
                field("Vendor Item No."; Rec."Vendor Item No.")
                {
                    ToolTip = 'Specifies the number that the vendor uses for this item.';
                }
                field("Work Center No."; Rec."Work Center No.")
                {
                    ToolTip = 'Specifies the value of the Work Center No. field.', Comment = '%';
                }
            }
        }
    }
}
