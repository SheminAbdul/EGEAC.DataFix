page 90009 "Job Planning Line"
{
    ApplicationArea = All;
    Caption = 'Job Planning Line';
    PageType = List;
    SourceTable = "Job Planning Line";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                }
                field("Job No."; Rec."Job No.")
                {
                    ToolTip = 'Specifies the value of the Job No. field.';
                }
                field("Planning Date"; Rec."Planning Date")
                {
                    ToolTip = 'Specifies the value of the Planning Date field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Budget Name"; Rec."QQQAB Budget Name")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field("Direct Unit Cost (LCY)"; Rec."Direct Unit Cost (LCY)")
                {
                    ToolTip = 'Specifies the value of the Direct Unit Cost (LCY) field.';
                }
                field("Unit Cost (LCY)"; Rec."Unit Cost (LCY)")
                {
                    ToolTip = 'Specifies the value of the Unit Cost (LCY) field.';
                }
                field("Total Cost (LCY)"; Rec."Total Cost (LCY)")
                {
                    ToolTip = 'Specifies the value of the Total Cost (LCY) field.';
                }
                field("Unit Price (LCY)"; Rec."Unit Price (LCY)")
                {
                    ToolTip = 'Specifies the value of the Unit Price (LCY) field.';
                }
                field("Total Price (LCY)"; Rec."Total Price (LCY)")
                {
                    ToolTip = 'Specifies the value of the Total Price (LCY) field.';
                }
                field("Resource Group No."; Rec."Resource Group No.")
                {
                    ToolTip = 'Specifies the value of the Resource Group No. field.', Comment = '%';
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ToolTip = 'Specifies the value of the Unit of Measure Code field.';
                }
                field("Qty. Rounding Precision"; Rec."Qty. Rounding Precision")
                {
                    ToolTip = 'Specifies the value of the Qty. Rounding Precision field.', Comment = '%';
                }
                field("Qty. Rounding Precision (Base)"; Rec."Qty. Rounding Precision (Base)")
                {
                    ToolTip = 'Specifies the value of the Qty. Rounding Precision (Base) field.', Comment = '%';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ToolTip = 'Specifies the value of the Location Code field.';
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ToolTip = 'Specifies the value of the Last Date Modified field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field("Work Type Code"; Rec."Work Type Code")
                {
                    ToolTip = 'Specifies the value of the Work Type Code field.';
                }
                field("Customer Price Group"; Rec."Customer Price Group")
                {
                    ToolTip = 'Specifies the value of the Customer Price Group field.';
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the Country/Region Code field.';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ToolTip = 'Specifies the value of the Gen. Bus. Posting Group field.';
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ToolTip = 'Specifies the value of the Gen. Prod. Posting Group field.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ToolTip = 'Specifies the value of the Document Date field.';
                }
                field("Planning Due Date"; Rec."Planning Due Date")
                {
                    ToolTip = 'Specifies the value of the Planning Due Date field.', Comment = '%';
                }
                field("Qty. to Assemble"; Rec."Qty. to Assemble")
                {
                    ToolTip = 'Specifies how many units of the project planning line quantity that you want to supply by assembly.';
                }
                field("Qty. to Assemble (Base)"; Rec."Qty. to Assemble (Base)")
                {
                    ToolTip = 'Specifies the value of the Qty. to Assemble (Base) field.', Comment = '%';
                }
                field("Assemble to Order"; Rec."Assemble to Order")
                {
                    ToolTip = 'Specifies the value of the Assemble to Order field.', Comment = '%';
                }
                field("BOM Item No."; Rec."BOM Item No.")
                {
                    ToolTip = 'Specifies the value of the BOM Item No. field.', Comment = '%';
                }
                field("Attached to Line No."; Rec."Attached to Line No.")
                {
                    ToolTip = 'Specifies the value of the Attached to Line No. field.', Comment = '%';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ToolTip = 'Specifies the value of the Job Task No. field.';
                }
                field("Line Amount (LCY)"; Rec."Line Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Line Amount (LCY) field.';
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ToolTip = 'Specifies the value of the Unit Cost field.';
                }
                field("Total Cost"; Rec."Total Cost")
                {
                    ToolTip = 'Specifies the value of the Total Cost field.';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the value of the Unit Price field.';
                }
                field("Total Price"; Rec."Total Price")
                {
                    ToolTip = 'Specifies the value of the Total Price field.';
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ToolTip = 'Specifies the value of the Line Amount field.';
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    ToolTip = 'Specifies the value of the Line Discount Amount field.';
                }
                field("Line Discount Amount (LCY)"; Rec."Line Discount Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Line Discount Amount (LCY) field.';
                }
                field("Cost Factor"; Rec."Cost Factor")
                {
                    ToolTip = 'Specifies the value of the Cost Factor field.';
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ToolTip = 'Specifies the value of the Serial No. field.';
                }
                field("Lot No."; Rec."Lot No.")
                {
                    ToolTip = 'Specifies the value of the Lot No. field.';
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ToolTip = 'Specifies the value of the Line Discount % field.';
                }
                field("Line Type"; Rec."Line Type")
                {
                    ToolTip = 'Specifies the value of the Line Type field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ToolTip = 'Specifies the value of the Currency Code field.';
                }
                field("Currency Date"; Rec."Currency Date")
                {
                    ToolTip = 'Specifies the value of the Currency Date field.';
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                    ToolTip = 'Specifies the value of the Currency Factor field.';
                }
                field("Schedule Line"; Rec."Schedule Line")
                {
                    ToolTip = 'Specifies the value of the Budget Line field.';
                }
                field("Contract Line"; Rec."Contract Line")
                {
                    ToolTip = 'Specifies the value of the Billable Line field.';
                }
                field("Job Contract Entry No."; Rec."Job Contract Entry No.")
                {
                    ToolTip = 'Specifies the value of the Job Contract Entry No. field.';
                }
                field("Invoiced Amount (LCY)"; Rec."Invoiced Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Invoiced Amount (LCY) field.';
                }
                field("Invoiced Cost Amount (LCY)"; Rec."Invoiced Cost Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Invoiced Cost Amount (LCY) field.';
                }
                field("VAT Unit Price"; Rec."VAT Unit Price")
                {
                    ToolTip = 'Specifies the value of the VAT Unit Price field.';
                }
                field("VAT Line Discount Amount"; Rec."VAT Line Discount Amount")
                {
                    ToolTip = 'Specifies the value of the VAT Line Discount Amount field.';
                }
                field("VAT Line Amount"; Rec."VAT Line Amount")
                {
                    ToolTip = 'Specifies the value of the VAT Line Amount field.';
                }
                field("VAT %"; Rec."VAT %")
                {
                    ToolTip = 'Specifies the value of the VAT % field.';
                }
                field("Description 2"; Rec."Description 2")
                {
                    ToolTip = 'Specifies the value of the Description 2 field.';
                }
                field("Job Ledger Entry No."; Rec."Job Ledger Entry No.")
                {
                    ToolTip = 'Specifies the value of the Job Ledger Entry No. field.';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Ledger Entry Type"; Rec."Ledger Entry Type")
                {
                    ToolTip = 'Specifies the value of the Ledger Entry Type field.';
                }
                field("Ledger Entry No."; Rec."Ledger Entry No.")
                {
                    ToolTip = 'Specifies the value of the Ledger Entry No. field.';
                }
                field("System-Created Entry"; Rec."System-Created Entry")
                {
                    ToolTip = 'Specifies the value of the System-Created Entry field.';
                }
                field("Usage Link"; Rec."Usage Link")
                {
                    ToolTip = 'Specifies whether the Usage Link field applies to the project planning line. When this check box is selected, usage entries are linked to the project planning line. Selecting this check box creates a link to the project planning line from places where usage has been posted, such as the project journal or a purchase line. You can select this check box only if the line type of the project planning line is Budget or Both Budget and Billable.';
                }
                field("Remaining Qty."; Rec."Remaining Qty.")
                {
                    ToolTip = 'Specifies the remaining quantity of the resource, item, or G/L Account that remains to complete a project. The quantity is calculated as the difference between Quantity and Qty. Posted.';
                }
                field("Remaining Qty. (Base)"; Rec."Remaining Qty. (Base)")
                {
                    ToolTip = 'Specifies the remaining quantity of the resource, item, or general ledger account that remains to complete a project, expressed in base units of measure. The quantity is calculated as the difference between Quantity and Qty. Posted.';
                }
                field("Remaining Total Cost"; Rec."Remaining Total Cost")
                {
                    ToolTip = 'Specifies the remaining total cost for the planning line. The total cost is in the project currency, which comes from the Currency Code field in the Project Card.';
                }
                field("Remaining Total Cost (LCY)"; Rec."Remaining Total Cost (LCY)")
                {
                    ToolTip = 'Specifies the remaining total cost (LCY) for the planning line. The amount is in the local currency.';
                }
                field("Remaining Line Amount"; Rec."Remaining Line Amount")
                {
                    ToolTip = 'Specifies the amount that will be posted to the project ledger.';
                }
                field("Remaining Line Amount (LCY)"; Rec."Remaining Line Amount (LCY)")
                {
                    ToolTip = 'Specifies the amount in the local currency that will be posted to the project ledger.';
                }
                field("Qty. Posted"; Rec."Qty. Posted")
                {
                    ToolTip = 'Specifies the quantity that has been posted to the project ledger, if the Usage Link check box has been selected.';
                }
                field("Qty. to Transfer to Journal"; Rec."Qty. to Transfer to Journal")
                {
                    ToolTip = 'Specifies the quantity you want to transfer to the project journal. Its default value is calculated as quantity minus the quantity that has already been posted, if the Apply Usage Link check box has been selected.';
                }
                field("Posted Total Cost"; Rec."Posted Total Cost")
                {
                    ToolTip = 'Specifies the total cost that has been posted to the project ledger, if the Usage Link check box has been selected.';
                }
                field("Posted Total Cost (LCY)"; Rec."Posted Total Cost (LCY)")
                {
                    ToolTip = 'Specifies the total cost (LCY) that has been posted to the project ledger, if the Usage Link check box has been selected.';
                }
                field("Posted Line Amount"; Rec."Posted Line Amount")
                {
                    ToolTip = 'Specifies the amount that has been posted to the project ledger. This field is only filled in if the Apply Usage Link check box selected on the project card.';
                }
                field("Posted Line Amount (LCY)"; Rec."Posted Line Amount (LCY)")
                {
                    ToolTip = 'Specifies the amount in the local currency that has been posted to the project ledger. This field is only filled in if the Apply Usage Link check box selected on the project card.';
                }
                field("Qty. Transferred to Invoice"; Rec."Qty. Transferred to Invoice")
                {
                    ToolTip = 'Specifies the quantity that has been transferred to a sales invoice or credit memo.';
                }
                field("Qty. to Transfer to Invoice"; Rec."Qty. to Transfer to Invoice")
                {
                    ToolTip = 'Specifies the value of the Qty. to Transfer to Invoice field.';
                }
                field("Qty. Invoiced"; Rec."Qty. Invoiced")
                {
                    ToolTip = 'Specifies the quantity that been posted through a sales invoice.';
                }
                field("Qty. to Invoice"; Rec."Qty. to Invoice")
                {
                    ToolTip = 'Specifies the quantity that remains to be invoiced. It is calculated as Quantity - Qty. Invoiced.';
                }
                field("Reserved Quantity"; Rec."Reserved Quantity")
                {
                    ToolTip = 'Specifies the quantity of the item that is reserved for the project planning line.';
                }
                field("Reserved Qty. (Base)"; Rec."Reserved Qty. (Base)")
                {
                    ToolTip = 'Specifies the value of the Reserved Qty. (Base) field.', Comment = '%';
                }
                field(Reserve; Rec.Reserve)
                {
                    ToolTip = 'Specifies whether or not a reservation can be made for items on the current line. The field is not applicable if the Type field is set to Resource, Cost, or G/L Account.';
                }
                field(Planned; Rec.Planned)
                {
                    ToolTip = 'Specifies the value of the Planned field.', Comment = '%';
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ToolTip = 'Specifies the value of the Variant Code field.';
                }
                field("Bin Code"; Rec."Bin Code")
                {
                    ToolTip = 'Specifies the value of the Bin Code field.';
                }
                field("Qty. per Unit of Measure"; Rec."Qty. per Unit of Measure")
                {
                    ToolTip = 'Specifies the value of the Qty. per Unit of Measure field.';
                }
                field("Quantity (Base)"; Rec."Quantity (Base)")
                {
                    ToolTip = 'Specifies the value of the Quantity (Base) field.';
                }
                field("Requested Delivery Date"; Rec."Requested Delivery Date")
                {
                    ToolTip = 'Specifies the value of the Requested Delivery Date field.', Comment = '%';
                }
                field("Promised Delivery Date"; Rec."Promised Delivery Date")
                {
                    ToolTip = 'Specifies the value of the Promised Delivery Date field.', Comment = '%';
                }
                field("Planned Delivery Date"; Rec."Planned Delivery Date")
                {
                    ToolTip = 'Specifies the date that is planned to deliver the item connected to the project planning line. For a resource, the planned delivery date is the date that the resource performs services with respect to the project.';
                }
                field("Service Order No."; Rec."Service Order No.")
                {
                    ToolTip = 'Specifies the value of the Service Order No. field.';
                }
                field("Package No."; Rec."Package No.")
                {
                    ToolTip = 'Specifies the value of the Package No. field.', Comment = '%';
                }
                field("Price Calculation Method"; Rec."Price Calculation Method")
                {
                    ToolTip = 'Specifies the method that will be used for price calculation in the item journal line.';
                }
                field("Cost Calculation Method"; Rec."Cost Calculation Method")
                {
                    ToolTip = 'Specifies the method that will be used for cost calculation in the item journal line.';
                }
                field("Pick Qty."; Rec."Pick Qty.")
                {
                    ToolTip = 'Specifies the value of the Pick Qty. field.', Comment = '%';
                }
                field("Qty. Picked"; Rec."Qty. Picked")
                {
                    ToolTip = 'Specifies the quantity of the item you have picked for the project planning line.';
                }
                field("Qty. Picked (Base)"; Rec."Qty. Picked (Base)")
                {
                    ToolTip = 'Specifies the base quantity of the item you have picked for the project planning line.';
                }
                field("Completely Picked"; Rec."Completely Picked")
                {
                    ToolTip = 'Specifies the value of the Completely Picked field.', Comment = '%';
                }
                field("Pick Qty. (Base)"; Rec."Pick Qty. (Base)")
                {
                    ToolTip = 'Specifies the value of the Pick Qty. (Base) field.', Comment = '%';
                }
                field("Qty. on Journal"; Rec."Qty. on Journal")
                {
                    ToolTip = 'Specifies the value of the Qty. on Journal field.', Comment = '%';
                }
                field("QQQAB Date"; Rec."QQQAB Date")
                {
                    ToolTip = 'Specifies the value of the Date field.';
                }
                field("QQQAB Begin Hour"; Rec."QQQAB Begin Hour")
                {
                    ToolTip = 'Specifies the value of the Begin Hour field.', Comment = '%';
                }
                field("QQQAB End Hour"; Rec."QQQAB End Hour")
                {
                    ToolTip = 'Specifies the value of the End Hour field.', Comment = '%';
                }
                field("QQQAB Duration"; Rec."QQQAB Duration")
                {
                    ToolTip = 'Specifies the value of the Duration field.', Comment = '%';
                }
                field("QQQAB Budget Year"; Rec."QQQAB Budget Year")
                {
                    ToolTip = 'Specifies the value of the Budget Year field.';
                }
                field("QQQAB Actual Amount"; Rec."QQQAB Actual Amount")
                {
                    ToolTip = 'Specifies the value of the Actual Amount field.';
                }
                field("QQQAB Portal Last Modified"; Rec."QQQAB Portal Last Modified")
                {
                    ToolTip = 'Specifies the value of the Portal Last Modified field.', Comment = '%';
                }
                field("QQQAB Previous Total Cost"; Rec."QQQAB Previous Total Cost")
                {
                    ToolTip = 'Specifies the value of the Previous Total Cost field.';
                }
                field("QQQAB Previous Quantity"; Rec."QQQAB Previous Quantity")
                {
                    ToolTip = 'Specifies the value of the Previous Quantity field.';
                }
                field("QQQAB Previous Unit Cost"; Rec."QQQAB Previous Unit Cost")
                {
                    ToolTip = 'Specifies the value of the Previous Unit Cost field.';
                }
                field("QQQAB Modification Total Cost"; Rec."QQQAB Modification Total Cost")
                {
                    ToolTip = 'Specifies the value of the Modification Total Cost field.';
                }
                field("QQQAB Modification Quantity"; Rec."QQQAB Modification Quantity")
                {
                    ToolTip = 'Specifies the value of the Modification Quantity field.';
                }
                field("QQQAB Modification Unit Cost"; Rec."QQQAB Modification Unit Cost")
                {
                    ToolTip = 'Specifies the value of the Modification Unit Cost field.';
                }
                field("QQQAB Modification Amount Edit"; Rec."QQQAB Modification Amount Edit")
                {
                    ToolTip = 'Specifies the value of the Modification Amount Edit field.';
                }
                field("QQQAB Quantity Edit"; Rec."QQQAB Quantity Edit")
                {
                    ToolTip = 'Specifies the value of the Quantity Edit field.', Comment = '%';
                }
                field("QQQAB Unit Cost Edit"; Rec."QQQAB Unit Cost Edit")
                {
                    ToolTip = 'Specifies the value of the Unit Cost Edit field.', Comment = '%';
                }
                field("QQQAB Applied by User"; Rec."QQQAB Applied by User")
                {
                    ToolTip = 'Specifies the value of the Applied by User field.', Comment = '%';
                }
                field("QQQAB Applied Date Time"; Rec."QQQAB Applied Date Time")
                {
                    ToolTip = 'Specifies the value of the Applied Date Time field.', Comment = '%';
                }
                field("QQQAB Budget Name"; Rec."QQQAB Budget Name")
                {
                    ToolTip = 'Specifies the value of the Budget Name field.';
                }
                field("QQQAB Invoicing Period"; Rec."QQQAB Invoicing Period")
                {
                    ToolTip = 'Specifies the value of the Invoicing Period field.', Comment = '%';
                }
                field("QQQAB Next Invoice Period"; Rec."QQQAB Next Invoice Period")
                {
                    ToolTip = 'Specifies the value of the Next Invoice Period field.', Comment = '%';
                }
                field("QQQAB Recursivity"; Rec."QQQAB Recursivity")
                {
                    ToolTip = 'Specifies the value of the Recursivity field.', Comment = '%';
                }
                field("QQQAB Recursivity Type"; Rec."QQQAB Recursivity Type")
                {
                    ToolTip = 'Specifies the value of the Recursivity Type field.', Comment = '%';
                }
                field("QQQAB Range of Recurrence"; Rec."QQQAB Range of Recurrence")
                {
                    ToolTip = 'Specifies the value of the Range of Recurrence field.', Comment = '%';
                }
                field("QQQAB Day Week Option"; Rec."QQQAB Day Week Option")
                {
                    ToolTip = 'Specifies the value of the Day Week Option field.', Comment = '%';
                }
                field("QQQAB Recursivity Quantity"; Rec."QQQAB Recursivity Quantity")
                {
                    ToolTip = 'Specifies the value of the Recursivity Quantity field.', Comment = '%';
                }
                field("QQQAB Selected Days"; Rec."QQQAB Selected Days")
                {
                    ToolTip = 'Specifies the value of the Selected Days field.', Comment = '%';
                }
                field("QQQAB Recursivity Month"; Rec."QQQAB Recursivity Month")
                {
                    ToolTip = 'Specifies the value of the Recursivity Month field.', Comment = '%';
                }
                field("QQQAB Month Day"; Rec."QQQAB Month Day")
                {
                    ToolTip = 'Specifies the value of the Month Day field.', Comment = '%';
                }
                field("QQQAB Month Option"; Rec."QQQAB Month Option")
                {
                    ToolTip = 'Specifies the value of the Month Option field.', Comment = '%';
                }
                field("QQQAB Month Day Option"; Rec."QQQAB Month Day Option")
                {
                    ToolTip = 'Specifies the value of the Month Day Option field.', Comment = '%';
                }
                field("QQQAB Budget Dimension 1 Code"; Rec."QQQAB Budget Dimension 1 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 1 Code field.';
                }
                field("QQQAB Budget Dimension 2 Code"; Rec."QQQAB Budget Dimension 2 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 2 Code field.';
                }
                field("QQQAB Budget Dimension 3 Code"; Rec."QQQAB Budget Dimension 3 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 3 Code field.';
                }
                field("QQQAB Budget Dimension 4 Code"; Rec."QQQAB Budget Dimension 4 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 4 Code field.', Comment = '%';
                }
                field("QQQAB Budget"; Rec."QQQAB Budget")
                {
                    ToolTip = 'Specifies the value of the Budget field.';
                }
                field("QQQAB Budget Amount"; Rec."QQQAB Budget Amount")
                {
                    ToolTip = 'Specifies the value of the Budget Amount field.';
                }
                field("QQQAB Line without Budget"; Rec."QQQAB Line without Budget")
                {
                    ToolTip = 'Specifies the value of the Line without Budget field.', Comment = '%';
                }
                field("QQQAB Not Check Budget"; Rec."QQQAB Not Check Budget")
                {
                    ToolTip = 'Specifies the value of the Not Check Budget field.', Comment = '%';
                }
                field("QQQAB Balance Job No."; Rec."QQQAB Balance Job No.")
                {
                    ToolTip = 'Specifies the value of the Balance Job No. field.';
                }
                field("QQQAB Bal. Job Task No."; Rec."QQQAB Bal. Job Task No.")
                {
                    ToolTip = 'Specifies the value of the Balance Job Task No. field.';
                }
                field("QQQAB From Budget Dim. 1 Code"; Rec."QQQAB From Budget Dim. 1 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 1 Code field.';
                }
                field("QQQAB From Budget Dim. 2 Code"; Rec."QQQAB From Budget Dim. 2 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 2 Code field.';
                }
                field("QQQAB From Budget Dim. 3 Code"; Rec."QQQAB From Budget Dim. 3 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 3 Code field.';
                }
                field("QQQAB From Budget Dim. 4 Code"; Rec."QQQAB From Budget Dim. 4 Code")
                {
                    ToolTip = 'Specifies the value of the Budget Dimension 4 Code field.';
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
