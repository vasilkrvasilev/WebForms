<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelloWF.aspx.cs" Inherits="Hello.HelloWF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
    <div>
        <asp:Label ID="nameLabel" runat="server" AssociatedControlID="nameBox">Enter your name</asp:Label>
        <asp:TextBox ID="nameBox" runat="server"></asp:TextBox>
        <asp:Button ID="button" runat="server" OnClick="button_Click" Text="Send" />
        <asp:Literal ID="result" runat="server" Mode="Encode"></asp:Literal>
    </div>
    </form>
</body>
</html>
