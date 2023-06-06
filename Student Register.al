table 50109 StudentRegister
{
    DataClassification = CustomerContent;
    Caption = 'Student Register';

    fields
    {
        field(1; "StudentID"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Student ID';
        }
        field(2; "FirstName"; Text[40])
        {
            DataClassification = CustomerContent;
            Caption = 'First Name';
        }
        field(3; "SecondName"; Text[40])
        {
            DataClassification = CustomerContent;
            Caption = 'Second Name';
        }
        field(4; "Phone"; Code[15])
        {
            DataClassification = CustomerContent;
            Caption = 'Phone';
        }
        field(5; "Address"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Address';
        }
        field(6; "DateOfBirth"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date Of Birth';
        }
        field(7; "Course"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Course';
        }
    }
    Keys
    {
        key(Key1; StudentID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}