page 90000 "Purch Rcpt Header Migration"
{
    ApplicationArea = All;
    Caption = 'Purch. Rcpt. Header Migration';
    PageType = List;
    SourceTable = "Purch. Rcpt. Header";
    Permissions = tabledata "Purch. Rcpt. Header" = rmid;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
                {
                    ToolTip = 'Specifies the value of the Applies-to Doc. No. field.', Comment = '%';
                }
                field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
                {
                    ToolTip = 'Specifies the value of the Applies-to Doc. Type field.', Comment = '%';
                }
                field("Area"; Rec."Area")
                {
                    ToolTip = 'Specifies the value of the Area field.', Comment = '%';
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                    ToolTip = 'Specifies the value of the Bal. Account No. field.', Comment = '%';
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                    ToolTip = 'Specifies the value of the Bal. Account Type field.', Comment = '%';
                }
                field("Buy-from Address"; Rec."Buy-from Address")
                {
                    ToolTip = 'Specifies the address of the vendor who delivered the items.';
                }
                field("Buy-from Address 2"; Rec."Buy-from Address 2")
                {
                    ToolTip = 'Specifies an additional part of the address of the vendor who delivered the items.';
                }
                field("Buy-from City"; Rec."Buy-from City")
                {
                    ToolTip = 'Specifies the city of the vendor who delivered the items.';
                }
                field("Buy-from Contact"; Rec."Buy-from Contact")
                {
                    ToolTip = 'Specifies the name of the contact person at the vendor who delivered the items.';
                }
                field("Buy-from Contact No."; Rec."Buy-from Contact No.")
                {
                    ToolTip = 'Specifies the number of the contact person at the vendor who delivered the items.';
                }
                field("Buy-from Country/Region Code"; Rec."Buy-from Country/Region Code")
                {
                    ToolTip = 'Specifies the country or region of the address.';
                }
                field("Buy-from County"; Rec."Buy-from County")
                {
                    ToolTip = 'Specifies the state, province or county related to the posted purchase order.';
                }
                field("Buy-from Post Code"; Rec."Buy-from Post Code")
                {
                    ToolTip = 'Specifies the post code of the vendor who delivered the items.';
                }
                field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
                {
                    ToolTip = 'Specifies the name of the vendor who delivered the items.';
                }
                field("Buy-from Vendor Name 2"; Rec."Buy-from Vendor Name 2")
                {
                    ToolTip = 'Specifies the value of the Buy-from Vendor Name 2 field.', Comment = '%';
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ToolTip = 'Specifies the name of the vendor who delivered the items.';
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                    ToolTip = 'Specifies the value of the Campaign No. field.', Comment = '%';
                }
                field(Comment; Rec.Comment)
                {
                    ToolTip = 'Specifies the value of the Comment field.', Comment = '%';
                }
                field(Correction; Rec.Correction)
                {
                    ToolTip = 'Specifies the value of the Correction field.', Comment = '%';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ToolTip = 'Specifies the value of the Currency Code field.', Comment = '%';
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                    ToolTip = 'Specifies the value of the Currency Factor field.', Comment = '%';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ToolTip = 'Specifies the value of the Dimension Set ID field.', Comment = '%';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ToolTip = 'Specifies the date when the purchase document was created.';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ToolTip = 'Specifies the value of the Due Date field.', Comment = '%';
                }
                field("Entry Point"; Rec."Entry Point")
                {
                    ToolTip = 'Specifies the value of the Entry Point field.', Comment = '%';
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    ToolTip = 'Specifies the date you expect the items to be available in your warehouse. If you leave the field blank, it will be calculated as follows: Planned Receipt Date + Safety Lead Time + Inbound Warehouse Handling Time = Expected Receipt Date.';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ToolTip = 'Specifies the value of the Gen. Bus. Posting Group field.', Comment = '%';
                }
                field("Inbound Whse. Handling Time"; Rec."Inbound Whse. Handling Time")
                {
                    ToolTip = 'Specifies the time it takes to make items part of available inventory, after the items have been posted as received.';
                }
                field("Invoice Disc. Code"; Rec."Invoice Disc. Code")
                {
                    ToolTip = 'Specifies the value of the Invoice Disc. Code field.', Comment = '%';
                }
                field("Language Code"; Rec."Language Code")
                {
                    ToolTip = 'Specifies the value of the Language Code field.', Comment = '%';
                }
                field("Lead Time Calculation"; Rec."Lead Time Calculation")
                {
                    ToolTip = 'Specifies a date formula for the amount of time it takes to replenish the item.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ToolTip = 'Specifies a code for the location where you want the items to be placed when they are received.';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of a general ledger account, item, additional cost, or fixed asset, depending on what you selected in the Type field.';
                }
                field("No. Printed"; Rec."No. Printed")
                {
                    ToolTip = 'Specifies how many times the document has been printed.';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.', Comment = '%';
                }
                field("On Hold"; Rec."On Hold")
                {
                    ToolTip = 'Specifies the value of the On Hold field.', Comment = '%';
                }
                field("Order Address Code"; Rec."Order Address Code")
                {
                    ToolTip = 'Specifies the order address of the related vendor.';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ToolTip = 'Specifies the value of the Order Date field.', Comment = '%';
                }
                field("Order No."; Rec."Order No.")
                {
                    ToolTip = 'Specifies the line number of the order that created the entry.';
                }
                field("Order No. Series"; Rec."Order No. Series")
                {
                    ToolTip = 'Specifies the value of the Order No. Series field.', Comment = '%';
                }
                field("Pay-to Address"; Rec."Pay-to Address")
                {
                    ToolTip = 'Specifies the address of the vendor that you received the invoice from.';
                }
                field("Pay-to Address 2"; Rec."Pay-to Address 2")
                {
                    ToolTip = 'Specifies an additional part of the address of the vendor that the invoice was received from.';
                }
                field("Pay-to City"; Rec."Pay-to City")
                {
                    ToolTip = 'Specifies the city of the vendor that you received the invoice from.';
                }
                field("Pay-to Contact"; Rec."Pay-to Contact")
                {
                    ToolTip = 'Specifies the contact person at the vendor that you received the invoice from.';
                }
                field("Pay-to Contact no."; Rec."Pay-to Contact no.")
                {
                    ToolTip = 'Specifies the number of the person to contact about an invoice from this vendor.';
                }
                field("Pay-to Country/Region Code"; Rec."Pay-to Country/Region Code")
                {
                    ToolTip = 'Specifies the country or region of the vendor on the purchase document.';
                }
                field("Pay-to County"; Rec."Pay-to County")
                {
                    ToolTip = 'Specifies the state, province or county related to the posted purchase order.';
                }
                field("Pay-to Name"; Rec."Pay-to Name")
                {
                    ToolTip = 'Specifies the name of the vendor who you received the invoice from.';
                }
                field("Pay-to Name 2"; Rec."Pay-to Name 2")
                {
                    ToolTip = 'Specifies the value of the Pay-to Name 2 field.', Comment = '%';
                }
                field("Pay-to Post Code"; Rec."Pay-to Post Code")
                {
                    ToolTip = 'Specifies the post code of the vendor that you received the invoice from.';
                }
                field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
                {
                    ToolTip = 'Specifies the number of the vendor that you received the invoice from.';
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                    ToolTip = 'Specifies the value of the Payment Discount % field.', Comment = '%';
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ToolTip = 'Specifies the value of the Payment Method Code field.', Comment = '%';
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    ToolTip = 'Specifies the value of the Payment Terms Code field.', Comment = '%';
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                    ToolTip = 'Specifies the value of the Pmt. Discount Date field.', Comment = '%';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the posting date of the record.';
                }
                field("Posting Description"; Rec."Posting Description")
                {
                    ToolTip = 'Specifies the value of the Posting Description field.', Comment = '%';
                }
                field("Price Calculation Method"; Rec."Price Calculation Method")
                {
                    ToolTip = 'Specifies the value of the Price Calculation Method field.', Comment = '%';
                }
                field("Promised Receipt Date"; Rec."Promised Receipt Date")
                {
                    ToolTip = 'Specifies the date that the vendor has promised to deliver the order.';
                }
                field("Purchaser Code"; Rec."Purchaser Code")
                {
                    ToolTip = 'Specifies which purchaser is assigned to the vendor.';
                }
                field("QQQAB Aditional Posting Group"; Rec."QQQAB Aditional Posting Group")
                {
                    ToolTip = 'Specifies the value of the Aditional Posting Group field.', Comment = '%';
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
                field("QQQAB Compromise"; Rec."QQQAB Compromise")
                {
                    ToolTip = 'Specifies the value of the Compromise field.', Comment = '%';
                }
                field("QQQAB Liquidity Account"; Rec."QQQAB Liquidity Account")
                {
                    ToolTip = 'Specifies the value of the Liquidity Account field.', Comment = '%';
                }
                field("QQQAB Schedule 1"; Rec."QQQAB Schedule 1")
                {
                    ToolTip = 'Specifies the value of the Schedule 1 field.', Comment = '%';
                }
                field("QQQAB Schedule 2"; Rec."QQQAB Schedule 2")
                {
                    ToolTip = 'Specifies the value of the Schedule 2 field.', Comment = '%';
                }
                field("QQQAB Service"; Rec."QQQAB Service")
                {
                    ToolTip = 'Specifies the value of the Service field.', Comment = '%';
                }
                field("QQQAB Total Amount"; Rec."QQQAB Total Amount")
                {
                    ToolTip = 'Specifies the value of the Total Amount field.', Comment = '%';
                }
                field("QQQAB Total Qty. Rcd. Not Inv."; Rec."QQQAB Total Qty. Rcd. Not Inv.")
                {
                    ToolTip = 'Specifies the value of the Total Qty. Rcd. Not Inv. field.', Comment = '%';
                }
                field("QQQAB Total Quantity"; Rec."QQQAB Total Quantity")
                {
                    ToolTip = 'Specifies the value of the Total Quantity field.', Comment = '%';
                }
                field("QQQAB Total Quantity Invoiced"; Rec."QQQAB Total Quantity Invoiced")
                {
                    ToolTip = 'Specifies the value of the Total Quantity Invoiced field.', Comment = '%';
                }
                field("Quote No."; Rec."Quote No.")
                {
                    ToolTip = 'Specifies the quote number for the posted purchase receipt.';
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ToolTip = 'Specifies the value of the Reason Code field.', Comment = '%';
                }
                field("Requested Receipt Date"; Rec."Requested Receipt Date")
                {
                    ToolTip = 'Specifies the date that you want the vendor to deliver to the ship-to address. The value in the field is used to calculate the latest date you can order the items to have them delivered on the requested receipt date. If you do not need delivery on a specific date, you can leave the field blank.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ToolTip = 'Specifies the responsibility center code that is linked to this posted return receipt.';
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ToolTip = 'Specifies the value of the Sell-to Customer No. field.', Comment = '%';
                }
                field("Ship-to Address"; Rec."Ship-to Address")
                {
                    ToolTip = 'Specifies the address that items on the purchase order were shipped to, as a drop shipment..';
                }
                field("Ship-to Address 2"; Rec."Ship-to Address 2")
                {
                    ToolTip = 'Specifies an additional part of the ship-to address, in case it is a long address.';
                }
                field("Ship-to City"; Rec."Ship-to City")
                {
                    ToolTip = 'Specifies the city of the address that the items are shipped to.';
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ToolTip = 'Specifies a code for an alternate shipment address if you want to ship to another address than the one that has been entered automatically. This field is also used in case of drop shipment.';
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                    ToolTip = 'Specifies the contact person at the customer that items on the purchase order were shipped to, as a drop shipment.';
                }
                field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
                {
                    ToolTip = 'Specifies the country or region of the ship-to address.';
                }
                field("Ship-to County"; Rec."Ship-to County")
                {
                    ToolTip = 'Specifies the state, province or county related to the posted purchase order.';
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                    ToolTip = 'Specifies the name of the customer that items on the purchase order were shipped to, as a drop shipment.';
                }
                field("Ship-to Name 2"; Rec."Ship-to Name 2")
                {
                    ToolTip = 'Specifies the value of the Ship-to Name 2 field.', Comment = '%';
                }
                field("Ship-to Post Code"; Rec."Ship-to Post Code")
                {
                    ToolTip = 'Specifies the post code that items on the purchase order were shipped to, as a drop shipment.';
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                    ToolTip = 'Specifies the delivery conditions of the related shipment, such as free on board (FOB).';
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ToolTip = 'Specifies the code for Shortcut Dimension 1, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ToolTip = 'Specifies the code for Shortcut Dimension 2, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ToolTip = 'Specifies the value of the Source Code field.', Comment = '%';
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
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.', Comment = '%';
                }
                field("VAT Base Discount %"; Rec."VAT Base Discount %")
                {
                    ToolTip = 'Specifies the value of the VAT Base Discount % field.', Comment = '%';
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ToolTip = 'Specifies the value of the VAT Bus. Posting Group field.', Comment = '%';
                }
                field("VAT Country/Region Code"; Rec."VAT Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the VAT Country/Region Code field.', Comment = '%';
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                    ToolTip = 'Specifies the value of the VAT Registration No. field.', Comment = '%';
                }
                field("Vendor Order No."; Rec."Vendor Order No.")
                {
                    ToolTip = 'Specifies the vendor''s order number.';
                }
                field("Vendor Posting Group"; Rec."Vendor Posting Group")
                {
                    ToolTip = 'Specifies the value of the Vendor Posting Group field.', Comment = '%';
                }
                field("Vendor Shipment No."; Rec."Vendor Shipment No.")
                {
                    ToolTip = 'Specifies the vendor''s shipment number. It is inserted in the corresponding field on the source document during posting.';
                }
                field("Your Reference"; Rec."Your Reference")
                {
                    ToolTip = 'Specifies the value of the Your Reference field.', Comment = '%';
                }
            }
        }
    }
}
