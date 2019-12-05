$('#controlAddIn').append('<div id="presents"></div>')
var imgpath = Microsoft.Dynamics.NAV.GetImageResource("img/present.png");
$('#presents').append('<img src="'+ imgpath + '" alt="present" width="100px" height="100px">');

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ControlAddinLoaded", []);