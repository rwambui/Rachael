page 50100 "Student Application Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "StudentApplication";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Student ID"; Rec.StudentID)
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec.FirstName)
                {
                    ApplicationArea = All;
                }
                field("Second Name"; Rec.SecondName)
                {
                    ApplicationArea = All;
                }
                field("Phone"; Rec.Phone)
                {
                    ApplicationArea = All;
                }
                field("Address"; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field("Date Of Birth"; Rec.DateOfBirth)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Caption = 'Register/Enroll';
                Image = Customer;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var

                begin
                    //get id
                    ObjStudentRegister.Reset();
                    if ObjStudentRegister.FindLast() then begin
                        ID := ObjStudentRegister.StudentID + 1;
                    end else
                        ID := 1;

                    //insert new record 
                    ObjStudentRegister.Init();
                    ObjStudentRegister.StudentID := ID;
                    ObjStudentRegister.FirstName := Rec.FirstName;
                    ObjStudentRegister.Address := Rec.Address;
                    if ObjStudentRegister.Insert(true) then begin
                        Message('Student enrolled!');
                    end;


                end;
            }
        }
    }

    var
        ID: Integer;
        ObjStudentRegister: Record StudentRegister;
}