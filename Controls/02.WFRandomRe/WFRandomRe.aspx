<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFRandomRe.aspx.cs" Inherits="_02.WFRandomRe.WFRandomRe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
    <div>
        <asp:Label ID="firstLabel" runat="server">First Number</asp:Label>
        <asp:TextBox ID="firstNumber" runat="server"></asp:TextBox>
        <asp:Label ID="secondLabel" runat="server">Second Number</asp:Label>
        <asp:TextBox ID="secondNumber" runat="server"></asp:TextBox>
        <asp:Label ID="resultLabel" runat="server">Result Number</asp:Label>
        <asp:TextBox ID="resultNumber" runat="server"></asp:TextBox>
        <asp:Button ID="random" runat="server" OnClick="random_Click" Text="Random" />
    </div>
    </form>
</body>
</html>
