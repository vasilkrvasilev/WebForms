<%@ Page Title="Delete" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="WebFormsTemplate.Delete" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="controls">
        Post content: <asp:TextBox ID="postDeleteBox" runat="server" TextMode="MultiLine" ReadOnly="true"/>
        <asp:Button runat="server" ID="DeleteButton" OnClick="Delete_Click" Text="Delete Post" CssClass="btn" />
    </div>
</asp:Content>
