<%@ Page Title="Books" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="Default.aspx.cs" Inherits="BookLibrary._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1><%: Title %></h1>
    <div>
        <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" />
        <asp:TextBox ID="searchBox" runat="server" Text="Search by book title / author..." />
    </div>

    <asp:ListView ID="CategoriesList" runat="server" 
        ItemType="BookLibrary.Models.Category" 
        GroupPlaceholderID="groupPlaceholder" 
        ItemPlaceholderID="itemPlaceholder" GroupItemCount="3">
        <LayoutTemplate>
            <table>
                <tr id="groupPlaceholder" runat="server"></tr>
            </table>
        </LayoutTemplate>
        <GroupTemplate>
            <tr>
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td>
                <h3><%#: Item.Name %></h3>               
                <asp:ListView runat="server" 
                    ItemType="BookLibrary.Models.Book"
                    DataSource="<%# Item.Books %>">
                    <ItemTemplate>
                        <li>
                            <a href="BookDetails.aspx?id=<%#: Item.BookId %>">
                                <%#: "\"" + Item.Title + "\" by " + Item.Author %></a>
                        </li>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        No books in this category.
                    </EmptyDataTemplate>
                        
                </asp:ListView>                
            </td>
        </ItemTemplate>
    </asp:ListView>

</asp:Content>
