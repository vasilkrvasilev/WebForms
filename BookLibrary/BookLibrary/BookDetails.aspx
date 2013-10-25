<%@ Page Title="BookDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="BookLibrary.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1><%: Title %></h1>
        
    <h3><asp:Literal ID="titleLiteral" runat="server" Mode="Encode" /></h3>
    <br />
    <asp:Literal ID="authorLiteral" runat="server" Mode="Encode" />
    <br />
    <asp:Literal ID="isbnLiteral" runat="server" Mode="Encode" />
    <br />
    <asp:Literal ID="websiteLiteral" runat="server" Text="Web site: " />
    <asp:HyperLink ID="websiteLink" runat="server" />
    <br />
    <asp:Literal ID="discriptionLiteral" runat="server" Mode="Encode" />
    <br />
    <a href="Default.aspx">Back to Books</a>

</asp:Content>
