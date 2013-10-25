<%@ Page Title="" Language="C#" MasterPageFile="~/De.master" AutoEventWireup="true" CodeBehind="DeContacts.aspx.cs" Inherits="_02.Company.WebForm6" %>
<asp:Content ID="DeContent" ContentPlaceHolderID="ContentPlaceHolderDe" runat="server">
    <asp:Panel ID="deContactsPanel" runat="server">
        <asp:HyperLink ID="deMap" runat="server" NavigateUrl="https://maps.google.com/">
            <asp:Label ID="deMapLabel" runat="server">Sofia, 15 Vasil Levski Blvd</asp:Label>
        </asp:HyperLink>
    </asp:Panel>
</asp:Content>
