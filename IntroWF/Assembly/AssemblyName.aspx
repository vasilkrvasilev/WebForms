<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssemblyName.aspx.cs" Inherits="Assembly.AssemblyName" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
    <div>
        <asp:Label ID="label" runat="server">Assembly name: </asp:Label>
        <asp:Literal ID="result" runat="server" Mode="Encode"></asp:Literal>
    </div>
    </form>
</body>
</html>
