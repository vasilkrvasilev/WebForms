<%@ Page Title="Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="WebFormsTemplate.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Posts</h1>

    <div class="controls">
        <asp:ListView ID="postsList" runat="server" DataKeyNames="Id" ItemType="WebFormsTemplate.Models.Post">
            <LayoutTemplate>
                <div runat="server" id="itemPlaceholder" />
                <br />
                <asp:DataPager ID="postsPager" runat="server">
                    <Fields>
                        <asp:NumericPagerField />
                    </Fields>
                </asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <br />
                <asp:Label ID="postLabel" runat="server" Font-Size="X-Large" Text='<%#: Item.Content %>' />
                <a href="Edit.aspx?id=<%# Item.Id %>">Edit Post</a>
                <a href="Delete.aspx?id=<%# Item.Id %>">Delete Post</a>
                <br />
            </ItemTemplate>
        </asp:ListView>
    </div>
    <br />
    <div class="controls">
        Create new post: <asp:TextBox ID="postContentBox" runat="server" TextMode="MultiLine" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="postContentBox" CssClass="text-error" 
            ErrorMessage="The password field is required." />
        <asp:Button runat="server" ID="CreateButton" OnClick="Create_Click" Text="Create Post" CssClass="btn" />
    </div>

</asp:Content>
