page 90013 "VAT Entry Migration"
{
    ApplicationArea = All;
    Caption = 'VAT Entry Migration';
    PageType = List;
    SourceTable = "VAT Entry";
    Permissions = tabledata "VAT Entry" = rimd;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the number of the entry, as assigned from the specified number series when the entry was created.';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ToolTip = 'Specifies the vendor''s or customer''s trade type to link transactions made for this business partner with the appropriate general ledger account according to the general posting setup.';
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ToolTip = 'Specifies the item''s product type to link transactions made for this item with the appropriate general ledger account according to the general posting setup.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the date on which the credit memo was posted.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the number of the credit memo.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the document type that the VAT entry belongs to.';
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the type of the VAT entry.';
                }
                field(Base; Rec.Base)
                {
                    ToolTip = 'Specifies the base amount of the credit memo.';
                    Editable = true;
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the amount of the credit memo.';
                    Editable = true;
                }
                field("VAT Calculation Type"; Rec."VAT Calculation Type")
                {
                    ToolTip = 'Specifies how VAT will be calculated for purchases or sales of items with this particular combination of VAT business posting group and VAT product posting group.';
                }
                field("Bill-to/Pay-to No."; Rec."Bill-to/Pay-to No.")
                {
                    ToolTip = 'Specifies the number of the customer or vendor of the credit memo.';
                }
                field("EU 3-Party Trade"; Rec."EU 3-Party Trade")
                {
                    ToolTip = 'Specifies if the transaction is related to trade with a third party within the EU.';
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.', Comment = '%';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ToolTip = 'Specifies the value of the Source Code field.', Comment = '%';
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ToolTip = 'Specifies the reason code attached to the entry.';
                }
                field("Closed by Entry No."; Rec."Closed by Entry No.")
                {
                    ToolTip = 'Specifies the number of the VAT entry that has closed the entry, if the VAT entry was closed with the Calc. and Post VAT Settlement batch job.';
                }
                field(Closed; Rec.Closed)
                {
                    ToolTip = 'Specifies whether the VAT entry has been closed by the Calc. and Post VAT Settlement batch job.';
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ToolTip = 'Specifies the country/region of the address.';
                }
                field("Internal Ref. No."; Rec."Internal Ref. No.")
                {
                    ToolTip = 'Specifies the internal reference number for the line.';
                }
                field("Transaction No."; Rec."Transaction No.")
                {
                    ToolTip = 'Specifies the value of the Transaction No. field.', Comment = '%';
                }
                field("Unrealized Amount"; Rec."Unrealized Amount")
                {
                    ToolTip = 'Specifies the unrealized VAT amount for this line if you use unrealized VAT.';
                }
                field("Unrealized Base"; Rec."Unrealized Base")
                {
                    ToolTip = 'Specifies the unrealized base amount if you use unrealized VAT.';
                }
                field("Remaining Unrealized Amount"; Rec."Remaining Unrealized Amount")
                {
                    ToolTip = 'Specifies the amount that remains unrealized in the VAT entry.';
                }
                field("Remaining Unrealized Base"; Rec."Remaining Unrealized Base")
                {
                    ToolTip = 'Specifies the amount of base that remains unrealized in the VAT entry.';
                }
                field("External Document No."; Rec."External Document No.")
                {
                    ToolTip = 'Specifies the value of the External Document No. field.', Comment = '%';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.', Comment = '%';
                }
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ToolTip = 'Specifies the value of the Tax Area Code field.', Comment = '%';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ToolTip = 'Specifies the value of the Tax Liable field.', Comment = '%';
                }
                field("Tax Group Code"; Rec."Tax Group Code")
                {
                    ToolTip = 'Specifies the value of the Tax Group Code field.', Comment = '%';
                }
                field("Use Tax"; Rec."Use Tax")
                {
                    ToolTip = 'Specifies the value of the Use Tax field.', Comment = '%';
                }
                field("Tax Jurisdiction Code"; Rec."Tax Jurisdiction Code")
                {
                    ToolTip = 'Specifies the value of the Tax Jurisdiction Code field.', Comment = '%';
                }
                field("Tax Group Used"; Rec."Tax Group Used")
                {
                    ToolTip = 'Specifies the value of the Tax Group Used field.', Comment = '%';
                }
                field("Tax Type"; Rec."Tax Type")
                {
                    ToolTip = 'Specifies the value of the Tax Type field.', Comment = '%';
                }
                field("Tax on Tax"; Rec."Tax on Tax")
                {
                    ToolTip = 'Specifies the value of the Tax on Tax field.', Comment = '%';
                }
                field("Sales Tax Connection No."; Rec."Sales Tax Connection No.")
                {
                    ToolTip = 'Specifies the value of the Sales Tax Connection No. field.', Comment = '%';
                }
                field("Unrealized VAT Entry No."; Rec."Unrealized VAT Entry No.")
                {
                    ToolTip = 'Specifies the value of the Unrealized VAT Entry No. field.', Comment = '%';
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ToolTip = 'Specifies the VAT specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the VAT posting setup.';
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ToolTip = 'Specifies the VAT specification of the involved item or resource to link transactions made for this record with the appropriate general ledger account according to the VAT posting setup.';
                }
                field("Additional-Currency Amount"; Rec."Additional-Currency Amount")
                {
                    ToolTip = 'Specifies the amount of the VAT entry. The amount is in the additional reporting currency.';
                }
                field("Additional-Currency Base"; Rec."Additional-Currency Base")
                {
                    ToolTip = 'Specifies the amount that the VAT amount is calculated from if you post in an additional reporting currency.';
                }
                field("Add.-Currency Unrealized Amt."; Rec."Add.-Currency Unrealized Amt.")
                {
                    ToolTip = 'Specifies the value of the Add.-Currency Unrealized Amt. field.', Comment = '%';
                }
                field("Add.-Currency Unrealized Base"; Rec."Add.-Currency Unrealized Base")
                {
                    ToolTip = 'Specifies the value of the Add.-Currency Unrealized Base field.', Comment = '%';
                }
                field("VAT Base Discount %"; Rec."VAT Base Discount %")
                {
                    ToolTip = 'Specifies the value of the VAT Base Discount % field.', Comment = '%';
                }
                field("Add.-Curr. Rem. Unreal. Amount"; Rec."Add.-Curr. Rem. Unreal. Amount")
                {
                    ToolTip = 'Specifies the value of the Add.-Curr. Rem. Unreal. Amount field.', Comment = '%';
                }
                field("Add.-Curr. Rem. Unreal. Base"; Rec."Add.-Curr. Rem. Unreal. Base")
                {
                    ToolTip = 'Specifies the value of the Add.-Curr. Rem. Unreal. Base field.', Comment = '%';
                }
                field("VAT Difference"; Rec."VAT Difference")
                {
                    ToolTip = 'Specifies the difference between the calculated VAT amount and a VAT amount that you have entered manually.';
                }
                field("Add.-Curr. VAT Difference"; Rec."Add.-Curr. VAT Difference")
                {
                    ToolTip = 'Specifies, in the additional reporting currency, the VAT difference that arises when you make a correction to a VAT amount on a sales or purchase document.';
                }
                field("Ship-to/Order Address Code"; Rec."Ship-to/Order Address Code")
                {
                    ToolTip = 'Specifies the address code of the ship-to customer or order-from vendor that the entry is linked to.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ToolTip = 'Specifies the date when the related document was created.';
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                    ToolTip = 'Specifies the VAT registration no. of the customer or vendor of the credit memo.';
                }
                field(Reversed; Rec.Reversed)
                {
                    ToolTip = 'Specifies if the entry has been part of a reverse transaction.';
                }
                field("Reversed by Entry No."; Rec."Reversed by Entry No.")
                {
                    ToolTip = 'Specifies the number of the correcting entry. If the field Specifies a number, the entry cannot be reversed again.';
                }
                field("Reversed Entry No."; Rec."Reversed Entry No.")
                {
                    ToolTip = 'Specifies the number of the original entry that was undone by the reverse transaction.';
                }
                field("EU Service"; Rec."EU Service")
                {
                    ToolTip = 'Specifies if this VAT entry is to be reported as a service in the periodic VAT reports.';
                }
                field("Base Before Pmt. Disc."; Rec."Base Before Pmt. Disc.")
                {
                    ToolTip = 'Specifies the value of the Base Before Pmt. Disc. field.', Comment = '%';
                }
                field("Source Currency VAT Amount"; Rec."Source Currency VAT Amount")
                {
                    ToolTip = 'Specifies the value of the Source Currency VAT Amount field.', Comment = '%';
                }
                field("Source Currency VAT Base"; Rec."Source Currency VAT Base")
                {
                    ToolTip = 'Specifies the value of the Source Currency VAT Base field.', Comment = '%';
                }
                field("Source Currency Code"; Rec."Source Currency Code")
                {
                    ToolTip = 'Specifies the value of the Source Currency Code field.', Comment = '%';
                }
                field("Source Currency Factor"; Rec."Source Currency Factor")
                {
                    ToolTip = 'Specifies the value of the Source Currency Factor field.', Comment = '%';
                }
                field("Journal Templ. Name"; Rec."Journal Templ. Name")
                {
                    ToolTip = 'Specifies the value of the Journal Template Name field.', Comment = '%';
                }
                field("Journal Batch Name"; Rec."Journal Batch Name")
                {
                    ToolTip = 'Specifies the value of the Journal Batch Name field.', Comment = '%';
                }
                field("Realized Amount"; Rec."Realized Amount")
                {
                    ToolTip = 'Specifies the value of the Realized Amount field.', Comment = '%';
                }
                field("Realized Base"; Rec."Realized Base")
                {
                    ToolTip = 'Specifies the value of the Realized Base field.', Comment = '%';
                }
                field("Add.-Curr. Realized Amount"; Rec."Add.-Curr. Realized Amount")
                {
                    ToolTip = 'Specifies the value of the Add.-Curr. Realized Amount field.', Comment = '%';
                }
                field("Add.-Curr. Realized Base"; Rec."Add.-Curr. Realized Base")
                {
                    ToolTip = 'Specifies the value of the Add.-Curr. Realized Base field.', Comment = '%';
                }
                field("G/L Acc. No."; Rec."G/L Acc. No.")
                {
                    ToolTip = 'Specifies the value of the G/L Account No. field.', Comment = '%';
                }
                field("VAT Reporting Date"; Rec."VAT Reporting Date")
                {
                    ToolTip = 'Specifies the VAT date on the VAT entry. This is either the date that the document was created or posted, depending on your setting on the General Ledger Setup page.';
                }
                field("Non-Deductible VAT %"; Rec."Non-Deductible VAT %")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT % field.', Comment = '%';
                }
                field("Non-Deductible VAT Base"; Rec."Non-Deductible VAT Base")
                {
                    ToolTip = 'Specifies the amount of VAT that is not deducted due to the type of goods or services purchased.';
                }
                field("Non-Deductible VAT Amount"; Rec."Non-Deductible VAT Amount")
                {
                    ToolTip = 'Specifies the amount of the transaction for which VAT is not applied, due to the type of goods or services purchased.';
                }
                field("Non-Deductible VAT Base ACY"; Rec."Non-Deductible VAT Base ACY")
                {
                    ToolTip = 'Specifies the amount of VAT that is not deducted due to the type of goods or services purchased. The amount is in the additional reporting currency.';
                }
                field("Non-Deductible VAT Amount ACY"; Rec."Non-Deductible VAT Amount ACY")
                {
                    ToolTip = 'Specifies the amount of the transaction for which VAT is not applied, due to the type of goods or services purchased. The amount is in the additional reporting currency.';
                }
                field("Non-Deductible VAT Diff."; Rec."Non-Deductible VAT Diff.")
                {
                    ToolTip = 'Specifies the difference between the calculated Non-Deductible VAT amount and a Non-Deductible VAT amount that you have entered manually.';
                }
                field("Non-Deductible VAT Diff. ACY"; Rec."Non-Deductible VAT Diff. ACY")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT Difference ACY field.', Comment = '%';
                }
                field("PTSS ND %"; Rec."PTSS ND %")
                {
                    ToolTip = 'Specifies the non deductable VAT percentage used in the purchase or sales lines with this VAT identifier.';
                }
                field("PTSS VAT %"; Rec."PTSS VAT %")
                {
                    ToolTip = 'Specifies the VAT percentage that was used in purchase or sales lines with this VAT identifier.';
                }
                field("PTSS UE Aquisition Not Accep."; Rec."PTSS UE Aquisition Not Accep.")
                {
                    ToolTip = 'Specifies the value of the UE Aquisition Not Accep. field.', Comment = '%';
                }
                field("PTSS Group By Doc. No."; Rec."PTSS Group By Doc. No.")
                {
                    ToolTip = 'Specifies the value of the Group By Doc. No. field.', Comment = '%';
                }
                field("PTSS Group By Reason Code"; Rec."PTSS Group By Reason Code")
                {
                    ToolTip = 'Specifies the value of the Group By Reason Code field.', Comment = '%';
                }
                field("PTSS VAT Annex"; Rec."PTSS VAT Annex")
                {
                    ToolTip = 'Specifies the value of the VAT Annex field.', Comment = '%';
                }
                field("PTSS Reason Code Reclassified"; Rec."PTSS Reason Code Reclassified")
                {
                    ToolTip = 'Specifies if the reason code is different from the document''s original reason code.';
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
