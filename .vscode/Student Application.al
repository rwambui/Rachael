table 50100 StudentApplication
{
    DataClassification = ToBeClassified;
    Caption = 'Student Application';

    fields
    {
        field(1; "StudentID"; Code[20])
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
    }
    keys
    {
        key(PK; Address)
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