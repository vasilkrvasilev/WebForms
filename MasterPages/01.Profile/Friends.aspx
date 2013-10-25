<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="Friends.aspx.cs" Inherits="_01.Profile.WebForm2" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <asp:Panel ID="friends" runat="server">
        <asp:ImageButton ID="one" ImageUrl="~/softwareSmall.jpg" runat="server" OnClick="one_Click" />
        <asp:ImageButton ID="two" ImageUrl="~/algorithmSmall.jpg" runat="server" OnClick="two_Click" />
        <div>
            <asp:Label ID="first" runat="server" Visible="false">Ivan Ivanov</asp:Label>
            <asp:Label ID="second" runat="server" Visible="false">Petar Petrov</asp:Label>
        </div>
    </asp:Panel>
</asp:Content>
