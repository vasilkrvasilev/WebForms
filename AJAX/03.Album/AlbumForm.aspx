<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlbumForm.aspx.cs" Inherits="_03.Album.AlbumForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.0.3.js"></script>
    <style type="text/css">
        body {
            margin: 50px 0px;
            padding: 0px;
            text-align: center;
        }

        .Image {
            width: 475px;
            margin: 0px auto;
            text-align: center;
            padding: 20px;
            border: 1px dashed gray;
            background-color: Silver;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ajaxToolkit:ToolkitScriptManager ID="ScriptManager" runat="server">
            </ajaxToolkit:ToolkitScriptManager>
            <div class="Image">
                <asp:Image ID="img1" runat="server"
                    Height="400px" Width="400px"
                    ImageUrl="~/images/stan.jpg" />
            </div>

            <ajaxToolkit:SlideShowExtender ID="SlideShowExtender1" runat="server"
                BehaviorID="SSBehaviorID"
                TargetControlID="img1"
                SlideShowServiceMethod="GetSlides"
                AutoPlay="true"
                ImageDescriptionLabelID="lblDesc"
                NextButtonID="btnNext"
                PreviousButtonID="btnPrev"
                PlayButtonID="btnPlay"
                PlayButtonText="Play"
                StopButtonText="Stop"
                Loop="true">
            </ajaxToolkit:SlideShowExtender>

            <div>
                <asp:Label ID="lblDesc" runat="server" Text=""></asp:Label><br />
                <asp:Button ID="btnPrev" runat="server" Text="Previous" />
                <asp:Button ID="btnPlay" runat="server" Text="" />
                <asp:Button ID="btnNext" runat="server" Text="Next" />
            </div>
        </div>
        
    </form>
    <script type="text/javascript" src="Scripts/script.js"></script>
</body>
</html>