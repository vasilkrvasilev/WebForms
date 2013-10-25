<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="_01.Profile.WebForm4" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MeanContent" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <asp:Label ID="name" runat="server" Font-Size="XX-Large">My name is ...</asp:Label>
    <div>
        <asp:Image ID="myPicture" runat="server" ImageUrl="~/wowBig.jpg" />
    </div>
</asp:Content>
