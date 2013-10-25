<%@ Page Title="" Language="C#" MasterPageFile="~/Bg.master" AutoEventWireup="true" CodeBehind="BgContacts.aspx.cs" Inherits="_02.Company.WebForm3" %>
<asp:Content ID="BgContent" ContentPlaceHolderID="ContentPlaceHolderBg" runat="server">
    <asp:Panel ID="bgContactsPanel" runat="server">
        <asp:HyperLink ID="bgMap" runat="server" NavigateUrl="https://maps.google.com/">
            <asp:Label ID="bgMapLabel" runat="server">София, бул. В. Левски 15</asp:Label>
        </asp:HyperLink>
    </asp:Panel>
</asp:Content>
