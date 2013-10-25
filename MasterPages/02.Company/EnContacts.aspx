<%@ Page Title="" Language="C#" MasterPageFile="~/En.master" AutoEventWireup="true" CodeBehind="EnContacts.aspx.cs" Inherits="_02.Company.WebForm9" %>
<asp:Content ID="EnContent" ContentPlaceHolderID="ContentPlaceHolderEn" runat="server">
    <asp:Panel ID="enContactsPanel" runat="server">
        <asp:HyperLink ID="enMap" runat="server" NavigateUrl="https://maps.google.com/">
            <asp:Label ID="enMapLabel" runat="server">Sofia, 15 Vasil Levski Blvd</asp:Label>
        </asp:HyperLink>
    </asp:Panel>
</asp:Content>
