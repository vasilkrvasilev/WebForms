<%@ Page Title="" Language="C#" MasterPageFile="~/Bg.master" AutoEventWireup="true" CodeBehind="BgAbout.aspx.cs" Inherits="_02.Company.WebForm2" %>
<asp:Content ID="BgContent" ContentPlaceHolderID="ContentPlaceHolderBg" runat="server">
    <asp:Panel ID="bgAboutPanel" runat="server">
        <div>
            <asp:Label ID="bgProducts" runat="server">Изберете кои наши услуги Ви интересуват: </asp:Label>
        </div>
        <asp:CheckBoxList ID="bgProductsList" runat="server">
            <asp:ListItem>Вътрешни линии</asp:ListItem>
            <asp:ListItem>Външни линии</asp:ListItem>
            <asp:ListItem>Екскурзии</asp:ListItem>
        </asp:CheckBoxList>
    </asp:Panel>
</asp:Content>
