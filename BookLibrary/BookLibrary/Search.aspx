<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="BookLibrary.Search" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1><%: Title %> for Query "<asp:Literal ID="queryStringLiteral" runat="server" Mode="Encode" />"</h1>
    <ul>
        <asp:Repeater ID="resultList" runat="server" 
            ItemType="BookLibrary.Models.Book">
            <ItemTemplate>
                <li>
                    <a href="BookDetails.aspx?id=<%#: Item.BookId %>">
                        <%#: "\"" + Item.Title + "\" by " + Item.Author %></a>
                    (Category: 
                    <asp:Literal ID="resultBookCategory" runat="server" 
                         Text="<%#: Item.Category.Name %>" />)
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>

    <a href="Default.aspx">Back to Books</a>

</asp:Content>
