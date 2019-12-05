pageextension 50149 "JSD Customer Card" extends "Customer Card"
{
    layout
    {
        addfirst(Content)
        {
             usercontrol(JSAddinDemo;ControlAddinDemo)
             {
                 ApplicationArea=All;
             }
        }
    }
}