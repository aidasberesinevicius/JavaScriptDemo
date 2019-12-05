pageextension 50149 "JSD Customer Card" extends "Customer Card"
{
    layout
    {
        addfirst(Content)
        {
            usercontrol(JSAddInDemo; ControlAddinDemo)
            {
                ApplicationArea = All;
                trigger ControlAddinLoaded();
                begin
                    Message('I am from NAV');
                end;
            }
            field("Sales (LCY)";"Sales (LCY)")
            {
                ApplicationArea = All;
            }            
        }
    }
    local procedure ShowPresents();
    var
        PresentCount: Integer;
    begin
        CalcFields("Sales (LCY)");
        PresentCount := "Sales (LCY)" div 10000;
        CurrPage.JSAddInDemo.SetPresents(PresentCount);
    end;

    trigger OnAfterGetCurrRecord();
    begin
        ShowPresents();
    end;
}