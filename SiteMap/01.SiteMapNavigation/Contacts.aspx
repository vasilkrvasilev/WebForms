<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="_01.SiteMapNavigation.Contacts" %>
<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="mainContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Our offices</h1>
    <asp:TreeView ID="TreeViewSitePages" runat="server" 
        DataSourceID="SiteMapDataSource" SkipLinkText=""></asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource" runat="server" StartingNodeUrl="~/Offices.aspx" />
</asp:Content>
