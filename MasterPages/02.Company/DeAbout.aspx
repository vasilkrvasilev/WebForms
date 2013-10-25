<%@ Page Title="" Language="C#" MasterPageFile="~/De.master" AutoEventWireup="true" CodeBehind="DeAbout.aspx.cs" Inherits="_02.Company.WebForm5" %>
<asp:Content ID="DeContent" ContentPlaceHolderID="ContentPlaceHolderDe" runat="server">
    <asp:Panel ID="deAboutPanel" runat="server">
        <div>
            <asp:Label ID="deProducts" runat="server">
                Wählen Sie, welche unserer Dienstleistungen Sie interessiert sind: 
            </asp:Label>
        </div>
        <asp:CheckBoxList ID="deProductsList" runat="server">
            <asp:ListItem>Inlands</asp:ListItem>
            <asp:ListItem>Auslands</asp:ListItem>
            <asp:ListItem>Exkursionen</asp:ListItem>
        </asp:CheckBoxList>
    </asp:Panel>
</asp:Content>
