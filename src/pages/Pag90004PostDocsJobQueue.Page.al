page 90004 "Movs RE/JOB (Job Queue)"
{
    ApplicationArea = All;
    Caption = 'Movs RE/JOB (Job Queue)';
    PageType = List;
    SourceTable = "EGC Post Documents";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field.', Comment = '%';
                }
                field("Document No"; Rec."Document No")
                {
                    ToolTip = 'Specifies the value of the Document No field.', Comment = '%';
                }
                field("Line No"; Rec."Line No")
                {
                    ToolTip = 'Specifies the value of the Line No field.', Comment = '%';
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.', Comment = '%';
                }
                field("Error"; Rec.Error)
                {
                    ToolTip = 'Specifies the value of the Error field.', Comment = '%';
                }
                field("Error Descr"; Rec."Error Descr")
                {
                    ToolTip = 'Specifies the value of the Error Descr field.', Comment = '%';
                }
                field("Lot No."; Rec."Lot No.")
                {
                    ToolTip = 'Specifies the value of the Lot No. field.', Comment = '%';
                }
                field("Budget Year"; Rec."Budget Year")
                {
                    ToolTip = 'Specifies the value of the Budget Year field.', Comment = '%';
                }
                field(Service; Rec.Service)
                {
                    ToolTip = 'Specifies the value of the Service field.', Comment = '%';
                }
                field("Job To Copy No."; Rec."Job To Copy No.")
                {
                    ToolTip = 'Specifies the value of the Job To Copy No. field.', Comment = '%';
                }
                field("Budg Dim 1"; Rec."Budg Dim 1")
                {
                    ToolTip = 'Specifies the value of the Budg Dim 1 field.', Comment = '%';
                }
                field("Budg Dim 2"; Rec."Budg Dim 2")
                {
                    ToolTip = 'Specifies the value of the Budg Dim 2 field.', Comment = '%';
                }
                field("Budg Dim 3"; Rec."Budg Dim 3")
                {
                    ToolTip = 'Specifies the value of the Budg Dim 3 field.', Comment = '%';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ToolTip = 'Specifies the value of the Starting Date field.', Comment = '%';
                }
                field("End Date"; Rec."End Date")
                {
                    ToolTip = 'Specifies the value of the End Date field.', Comment = '%';
                }
                field("Job No."; Rec."Job No.")
                {
                    ToolTip = 'Specifies the value of the Document Type field.', Comment = '%';
                }
                field("Long Description"; Rec."Long Description")
                {
                    ToolTip = 'Specifies the value of the Long Description field.', Comment = '%';
                }
                field("Person Responsable"; Rec."Person Responsable")
                {
                    ToolTip = 'Specifies the value of the Person Responsable field.', Comment = '%';
                }
                field("Job Type"; Rec."Job Type")
                {
                    ToolTip = 'Specifies the value of the Job Type field.', Comment = '%';
                }
                field("RE No."; Rec."RE No.")
                {
                    ToolTip = 'Specifies the value of the RE No. field.', Comment = '%';
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
