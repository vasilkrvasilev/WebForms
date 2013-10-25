<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelForm.aspx.cs" Inherits="_03.Panel.PanelForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="panel" runat="server">
        <asp:TextBox ID="enterText" runat="server"></asp:TextBox>
        <asp:Button ID="send" runat="server" OnClick="send_Click" Text="Send"/>
    </asp:Panel>
    </form>
</body>
</html>
