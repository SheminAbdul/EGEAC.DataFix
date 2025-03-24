tableextension 90000 "Exp Doc Line Ext" extends "QQQCP Expense Document Line"
{
    fields
    {
        modify("quantity")
        {
            trigger OnAfterValidate()
            var
                ExpDocHdr: Record "QQQCP expense document header";
                ServiceAddress: Record "QQQAB Service Address";
            begin
                if rec."Document Type" <> rec."Document Type"::"Expense Proposal" then
                    exit;
                if "Pay-to Vendor No." = '' then begin
                    clear(ExpDocHdr);
                    ExpDocHdr.GET(rec."Document Type", "Document No.");
                    ServiceAddress.Get(ExpDocHdr.Service);
                    if (not ServiceAddress."QQQCP No Deduct VAT on Purch.")
                        and (rec."VAT Bus. Posting Group" = 'ND_NAC') and (ExpDocHdr."Vendor No." = '') then begin
                        rec."Deduct VAT Exception" := true;
                        rec.validate("VAT Bus. Posting Group", 'NACIONAL');
                    end;
                end;
            end;
        }
    }
}
