<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarsForm.aspx.cs" Inherits="_01.Cars.CarsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
    <asp:Panel ID="selection" runat="server">
        <asp:Label ID="producerLabel" runat="server" Text="Producer" 
            AssociatedControlID="producerList"></asp:Label>
        <br />
        <asp:DropDownList ID="producerList" runat="server" DataTextField="Name" DataValueField="Id" 
            OnSelectedIndexChanged="producerList_SelectedIndexChanged" AutoPostBack="true">
        </asp:DropDownList> 
        <br />
        <br />
        <asp:Label ID="modelLabel" runat="server" Text="Model" 
            AssociatedControlID="modelList"></asp:Label>
        <br />
        <asp:DropDownList ID="modelList" runat="server" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="extraLabel" runat="server" Text="Extras" 
            AssociatedControlID="extraList"></asp:Label>
        <br />
        <asp:CheckBoxList ID="extraList" runat="server" DataTextField="Title" DataValueField="Id">
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Label ID="engineLabel" runat="server" Text="Engine" 
            AssociatedControlID="engineList"></asp:Label>
        <br />
        <asp:RadioButtonList ID="engineList" runat="server"></asp:RadioButtonList>
        <br />
        <asp:Button ID="select" runat="server" Text="Select" OnClick="select_Click" />
        <br />
        <br />
        <asp:Literal ID="result" runat="server"></asp:Literal>
    </asp:Panel>
    </form>
</body>
</html>
