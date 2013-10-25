<%@ Page Title="Edit" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebFormsTemplate.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="controls">
        Old Post content: <asp:TextBox ID="postOldBox" runat="server" TextMode="MultiLine" ReadOnly="true"/>
        <br />
        New Post content: <asp:TextBox ID="postEditBox" runat="server" TextMode="MultiLine" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="postEditBox" CssClass="text-error" 
            ErrorMessage="The content field is required." />
        <asp:Button runat="server" ID="EditButton" OnClick="Edit_Click" Text="Edit Post" CssClass="btn" />
    </div>
</asp:Content>
