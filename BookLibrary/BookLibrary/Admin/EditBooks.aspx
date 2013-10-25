<%@ Page Title="Edit Books" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditBooks.aspx.cs" Inherits="BookLibrary.Admin.EditBooks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1><%: Title %></h1>
    
    <asp:GridView ID="booksGrid" runat="server"
        AutoGenerateColumns="False" DataKeyNames="BookId"
        PageSize="5" AllowPaging="true" AllowSorting="true"
        ItemType="BookLibrary.Models.Book"
        SelectMethod="booksGrid_GetData">
        <Columns>            
            <asp:BoundField DataField="Title" HeaderText="Title"
                SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author"
                SortExpression="Author" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN"
                SortExpression="ISBN" />
            <asp:TemplateField HeaderText ="Web Site" SortExpression="WebSite">
                <ItemTemplate>
                    <a href="<%#: Item.WebSite %>"><%#: Item.WebSite %></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Category.Name" HeaderText="Category"
                SortExpression="CategoryId" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton ID="editBookButton" runat="server" 
                        CommandName="ChangeBook" 
                        CommandArgument="<%# Item.BookId %>"
                        OnCommand="editBookButton_Command"
                        Text="Edit" />
                    <asp:LinkButton ID="deleteBookButton" runat="server" 
                        CommandName="ClearBook" 
                        CommandArgument="<%# Item.BookId %>"
                        OnCommand="deleteBookButton_Command"
                        Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Panel ID="editBookPanel" runat="server" Visible="false">
        <h3>Edit Book</h3>
        <asp:Label ID="editTitleLabel" runat="server" Text="Title: " 
            AssociatedControlID="editTitleBox" />
        <asp:TextBox ID="editTitleBox" runat="server" />
        <br />
        <asp:Label ID="editAuthorLabel" runat="server" Text="Author(s): " 
            AssociatedControlID="editAuthorBox" />
        <asp:TextBox ID="editAuthorBox" runat="server" />
        <br />
        <asp:Label ID="editISBNLabel" runat="server" Text="ISBN: " 
            AssociatedControlID="editISBNBox" />
        <asp:TextBox ID="editISBNBox" runat="server" />
        <br />
        <asp:Label ID="editWebSiteLabel" runat="server" Text="Web Site: " 
            AssociatedControlID="editWebSiteBox" />
        <asp:TextBox ID="editWebSiteBox" runat="server" />
        <br />
        <asp:Label ID="editDescriptionLabel" runat="server" Text="Description: " 
            AssociatedControlID="editDescriptionBox"/>
        <asp:TextBox ID="editDescriptionBox" runat="server" TextMode="MultiLine" />
        <br />
        <asp:Label ID="editBookCategoryLabel" runat="server" Text="Category: " 
            AssociatedControlID="allCategoriesList" />
        <asp:DropDownList id="allCategoriesList" DataValueField="CategoryId"
            DataTextField="Name" AutoPostBack="true"
            OnSelectedIndexChanged="allCategoriesList_SelectedIndexChanged"
            runat="server" />
        <br />
        <asp:Button ID="saveBookButton" runat="server" OnClick="saveBookButton_Click" Text="Save" />
        <asp:Button ID="cancelBookButton" runat="server" OnClick="cancelBookButton_Click" Text="Cancel" />
    </asp:Panel>

    <asp:Panel ID="deleteBookPanel" runat="server" Visible="false">
        <h3>Confirm Book Deletion?</h3>
        <asp:Label ID="deleteTitleLabel" runat="server" Text="Title: " 
            AssociatedControlID="deleteTitleBox" />
        <asp:TextBox ID="deleteTitleBox" runat="server" ReadOnly="true" />
        <br />
        <asp:Button ID="yesBookButton" runat="server" OnClick="yesBookButton_Click" Text="Yes" />
        <asp:Button ID="noBookButton" runat="server" OnClick="noBookButton_Click" Text="No" />
    </asp:Panel>

    <asp:Panel ID="newBookPanel" runat="server" Visible="false">
        <h3>Create New Book</h3>
        <asp:Label ID="newTitleLabel" runat="server" Text="Title: " 
            AssociatedControlID="newTitleBox" />
        <asp:TextBox ID="newTitleBox" runat="server" Text="Enter book title ..." />
        <br />
        <asp:Label ID="newAuthorLabel" runat="server" Text="Author(s): " 
            AssociatedControlID="newAuthorBox" />
        <asp:TextBox ID="newAuthorBox" runat="server" Text="Enter book author / authors ..." />
        <br />
        <asp:Label ID="newISBNLabel" runat="server" Text="ISBN: " 
            AssociatedControlID="newISBNBox" />
        <asp:TextBox ID="newISBNBox" runat="server" Text="Enter book ISBN ..." />
        <br />
        <asp:Label ID="newWebSiteLabel" runat="server" Text="Web Site: " 
            AssociatedControlID="newWebSiteBox" />
        <asp:TextBox ID="newWebSiteBox" runat="server" Text="Enter book web site ..." />
        <br />
        <asp:Label ID="newDescriptionLabel" runat="server" Text="Description: " 
            AssociatedControlID="newDescriptionBox"/>
        <asp:TextBox ID="newDescriptionBox" runat="server" TextMode="MultiLine" Text="Enter book description ..." />
        <br />
        <asp:Label ID="newBookCategoryLabel" runat="server" Text="Category: " 
            AssociatedControlID="newAllCategoriesList" />
        <asp:DropDownList id="newAllCategoriesList" DataValueField="CategoryId"
            DataTextField="Name" AutoPostBack="true"
            OnSelectedIndexChanged="allCategoriesList_SelectedIndexChanged"
            runat="server" />
        <br />
        <asp:Button ID="saveNewBookButton" runat="server" OnClick="saveNewBookButton_Click" Text="Save" />
        <asp:Button ID="cancelNewBookButton" runat="server" OnClick="cancelNewBookButton_Click" Text="Cancel" />
    </asp:Panel>

    <asp:Button ID="newBookButton" runat="server" Text="Create New" OnClick="newBookButton_Click" />
    <br />
    <a href="/Default.aspx">Back to Books</a>
</asp:Content>
