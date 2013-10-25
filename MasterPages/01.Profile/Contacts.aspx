<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="_01.Profile.WebForm3" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <asp:Label ID="messageLabel" runat="server" AssociatedControlID="message">
        Leave message: </asp:Label>
    <asp:TextBox ID="message" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="send" runat="server" OnClick="send_Click" Text="Send" />
</asp:Content>
