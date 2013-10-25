<%@ Page Title="Edit Categories" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditCategories.aspx.cs" Inherits="BookLibrary.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1><%: Title %></h1>
    
    <asp:GridView ID="categoriesGrid" runat="server"
        AutoGenerateColumns="False" DataKeyNames="CategoryId"
        PageSize="5" AllowPaging="true" AllowSorting="true"
        ItemType="BookLibrary.Models.Category"
        SelectMethod="categoriesGrid_GetData">
        <Columns>            
            <asp:BoundField DataField="Name" HeaderText="Category Name"
                SortExpression="Name" />            
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton ID="editCategoryButton" runat="server" 
                        CommandName="Change" 
                        CommandArgument="<%# Item.CategoryId %>"
                        OnCommand="editCategoryButton_Command"
                        Text="Edit" />
                    <asp:LinkButton ID="deleteCategoryButton" runat="server" 
                        CommandName="Clear" 
                        CommandArgument="<%# Item.CategoryId %>"
                        OnCommand="deleteCategoryButton_Command"
                        Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Panel ID="editCategoryPanel" runat="server" Visible="false">
        <h3>Edit Category</h3>
        <asp:Label ID="editCategoryLabel" runat="server" Text="Category: " 
            AssociatedControlID="editCategoryBox" />
        <asp:TextBox ID="editCategoryBox" runat="server" />
        <br />
        <asp:Button ID="saveCategoryButton" runat="server" OnClick="saveCategoryButton_Click" Text="Save" />
        <asp:Button ID="cancelCategoryButton" runat="server" OnClick="cancelCategoryButton_Click" Text="Cancel" />
    </asp:Panel>

    <asp:Panel ID="deleteCategoryPanel" runat="server" Visible="false">
        <h3>Confirm Category Deletion?</h3>
        <asp:Label ID="deleteCategoryLabel" runat="server" Text="Category: " 
            AssociatedControlID="deleteCategoryBox" />
        <asp:TextBox ID="deleteCategoryBox" runat="server" ReadOnly="true" />
        <br />
        <asp:Button ID="yesCategoryButton" runat="server" OnClick="yesCategoryButton_Click" Text="Yes" />
        <asp:Button ID="noCategoryButton" runat="server" OnClick="noCategoryButton_Click" Text="No" />
    </asp:Panel>

    <asp:Panel ID="newCategoryPanel" runat="server" Visible="false">
        <h3>Create New Category</h3>
        <asp:Label ID="newCategoryLabel" runat="server" Text="Category: " 
            AssociatedControlID="newCategoryBox" />
        <asp:TextBox ID="newCategoryBox" runat="server" Text="Edit category name ..." />
        <br />
        <asp:Button ID="saveNewCategoryButton" runat="server" OnClick="saveNewCategoryButton_Click" Text="Save" />
        <asp:Button ID="cancelNewCategoryButton" runat="server" OnClick="cancelNewCategoryButton_Click" Text="Cancel" />
    </asp:Panel>

    <asp:Button ID="newCategoryButton" runat="server" Text="Create New" OnClick="newCategoryButton_Click" />
    <br />
    <a href="/Default.aspx">Back to Books</a>
</asp:Content>
