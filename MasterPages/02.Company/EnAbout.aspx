<%@ Page Title="" Language="C#" MasterPageFile="~/En.master" AutoEventWireup="true" CodeBehind="EnAbout.aspx.cs" Inherits="_02.Company.WebForm8" %>
<asp:Content ID="EnContent" ContentPlaceHolderID="ContentPlaceHolderEn" runat="server">
    <asp:Panel ID="enAboutPanel" runat="server">
        <div>
            <asp:Label ID="enProducts" runat="server">
                Choose which of our services you are interested: 
            </asp:Label>
        </div>
        <asp:CheckBoxList ID="enProductsList" runat="server">
            <asp:ListItem>Internal</asp:ListItem>
            <asp:ListItem>External</asp:ListItem>
            <asp:ListItem>Excursions</asp:ListItem>
        </asp:CheckBoxList>
    </asp:Panel>
</asp:Content>
