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
        }
    }
}