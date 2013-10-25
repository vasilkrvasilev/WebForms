<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TodoListForm.aspx.cs" Inherits="_02.TodoListApp.TodoListForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <asp:Label ID="categoryLabel" runat="server" Text="Categories" />
        <br />
        <asp:EntityDataSource ID="categoriesData" runat="server" 
            ConnectionString="name=TodoListEntities" DefaultContainerName="TodoListEntities" 
            EnableFlattening="False" EntitySetName="Categories" />
        <asp:ListBox ID="categoriesList" runat="server"
            DataSourceID="categoriesData" DataTextField="Name" DataValueField="Id"
            Rows="2" AutoPostBack="true" OnSelectedIndexChanged="categoriesList_SelectedIndexChanged" />
        <br />
        <asp:Button ID="deleteCategory" runat="server" OnClick="deleteCategory_Click" Text="Delete" />
        <br />
        <asp:Button ID="editCategory" runat="server" OnClick="editCategory_Click" Text="Edit" />
        <asp:Button ID="insertCategory" runat="server" OnClick="insertCategory_Click" Text="Insert" />
        <asp:Label ID="categoryNameLabal" runat="server" 
            Text="Enter Continent Name" AssociatedControlID="categoryName" />
        <asp:TextBox ID="categoryName" runat="server" />
<%--        <asp:RequiredFieldValidator ID="continentNameRequired" runat="server" ControlToValidate="continentName" 
            ErrorMessage="Required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="continentNameRegex" runat="server" ControlToValidate="continentName" 
            ErrorMessage="Must Contain Only Latin Letters" ForeColor="Red" ValidationExpression="[a-zA-Z]+" />
        <br />--%>
        <br />
        <asp:Label ID="todoListLabel" runat="server" Text="Todo List" />
        <br />
        <asp:EntityDataSource ID="todosData" runat="server" EnableInsert="true" EnableDelete="true" EnableUpdate="true"
            ConnectionString="name=TodoListEntities" DefaultContainerName="TodoListEntities" 
            EnableFlattening="False" EntitySetName="Todos" Where="it.CategoryId=@CatId">
            <WhereParameters>
                <asp:ControlParameter Name="CatId" Type="Int32" ControlID="categoriesList" />
            </WhereParameters>
        </asp:EntityDataSource>
        <asp:ListView ID="todosList" runat="server" DataSourceID="todosData" 
            ItemType="_02.TodoListApp.Todo" DataKeyNames="Id"
            OnItemInserting="todosList_ItemInserting" InsertItemPosition="LastItem"
            OnItemEditing="todosList_ItemEditing">
            <LayoutTemplate>
                <table>
                    <thead>
                        <tr>
                            <td>Title</td>
                            <td>Body</td>
                            <td>Last Change</td>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#: Eval("Title") %>
                    </td>
                    <td>
                        <%#: Eval("Body") %>
                    </td>
                    <td>
                        <%#: Eval("LastChange") %>
                    </td>
                    <td>
                        <asp:Button ID="ButtonEdit" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Button ID="ButtonDelete" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                </tr>
        </ItemTemplate>
        <InsertItemTemplate>
            <div>
                Title:
                <asp:TextBox ID="titleBox" runat="server" Text='<%# Bind("Title") %>'/>
                <br />
                Body:
                <asp:TextBox ID="bodyBox" runat="server" Text='<%# Bind("Body") %>'/>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            </div>
        </InsertItemTemplate>
        <EditItemTemplate>
            <div>
                Title:
                <asp:TextBox ID="titleBoxEdit" runat="server" Text='<%# Bind("Title") %>'/>
                <br />
                Body:
                <asp:TextBox ID="bodyBoxEdit" runat="server" Text='<%# Bind("Body") %>'/>
                <br />
                <asp:Button ID="ButtonUpdate" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="ButtonCancel" runat="server" CommandName="Cancel" Text="Cancel" />
            </div>
        </EditItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
