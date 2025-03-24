page 90008 "Approval Email Entries"
{
    ApplicationArea = All;
    Caption = 'Approval Entries (Email notification)';
    PageType = List;
    SourceTable = "EGC Approval Entries";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.', Comment = '%';
                }
                field("Message Id"; Rec."Message Id")
                {
                    ToolTip = 'Specifies the value of the Message Id field.', Comment = '%';
                }
                field("Account Id"; Rec."Account Id")
                {
                    ToolTip = 'Specifies the value of the Account Id field.', Comment = '%';
                }
                field(Connector; Rec.Connector)
                {
                    ToolTip = 'Specifies the value of the Connector field.', Comment = '%';
                }
                field("User Security Id"; Rec."User Security Id")
                {
                    ToolTip = 'Specifies the value of the User Security Id field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Date Time Sent"; Rec."Date Time Sent")
                {
                    ToolTip = 'Specifies the value of the Date Time Sent field.';
                }
                field(Sender; Rec.Sender)
                {
                    ToolTip = 'Specifies the sender.';
                }
                field("Sent From"; Rec."Sent From")
                {
                    ToolTip = 'Specifies the sent from.';
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the entry number.';
                }
                field(Recipient; Rec.Recipient)
                {
                    ToolTip = 'Specifies the recipient.';
                }
                field("Recipient Email"; Rec."Recipient Email")
                {
                    ToolTip = 'Specifies the recipient email.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the document number.';
                }
                field("Document Status"; Rec."Document Status")
                {
                    ToolTip = 'Specifies the document status.';
                }
                field("Document Status Approval"; Rec."Document Status Approval")
                {
                    ToolTip = 'Specifies the document status approval.';
                }
                field("Sent Email ID"; Rec."Sent Email ID")
                {
                    ToolTip = 'Specifies the sent email ID.';
                }
                field("Approved BY"; Rec."Approved BY")
                {
                    ToolTip = 'Specifies the approved by.';
                }
                field("Status Mov Approval"; Rec."Status Mov Approval")
                {
                    ToolTip = 'Specifies the value of the Status Mov Approval field.';
                }
                field("Budget Status"; Rec."Budget Status")
                {
                    ToolTip = 'Specifies the value of the Budget Status field.', Comment = '%';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field.', Comment = '%';
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
