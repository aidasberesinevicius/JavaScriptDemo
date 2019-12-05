$('#controlAddIn').append('<div id="presents"></div>')
var imgpath = Microsoft.Dynamics.NAV.GetImageResource("img/present.png");
window.SetPresents = function (noOfPresents) { 
    $('#presents').empty(); 
    var imgpath = Microsoft.Dynamics.NAV.GetImageResource("img/present.png"); 
    for (var i = 1; i <= noOfPresents; i++) { 
        $('#presents').append('<img src="'+ imgpath + '" alt="present" width="100px" height="100px" onclick="OnPresentsClick(' + i + ')">');
    }
    window.OnPresentsClick = function(presentNo){ Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("PresentClicked", [presentNo]); }; 
};

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ControlAddinLoaded", []);