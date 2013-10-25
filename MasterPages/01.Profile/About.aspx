<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="_01.Profile.WebForm1" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <div>
        <asp:Image ID="myPicture" runat="server" ImageUrl="~/wowSmall.jpg" />
    </div>
    <asp:Label ID="name" runat="server">My name is ...</asp:Label>
    <asp:BulletedList ID="education" runat="server">
        <asp:ListItem>I graduated ... High School</asp:ListItem>
        <asp:ListItem>I graduated ... University</asp:ListItem>
        <asp:ListItem>Currently I study at Telerik Academy</asp:ListItem>
    </asp:BulletedList>
    <asp:HyperLink ID="site" runat="server" NavigateUrl="https://www.academy.telerik.com">
        Telerik academy</asp:HyperLink>
</asp:Content>
