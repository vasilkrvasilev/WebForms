<%@ Control Language="C#" AutoEventWireup="true" 
    CodeBehind="LinksMenu.ascx.cs" Inherits="MenuControl.LinksMenu" %>

<asp:DataList runat="server" ID="menuList">
    <ItemTemplate>
        <asp:HyperLink ID="link" runat="server" NavigateUrl='<%#: Eval("Href") %>' 
            Text='<%#: Eval("Title") %>' />
            <%--Font-Names='<%#: Eval("FontType") %>' ForeColor='<%#: Eval("Color") %>' />--%>
<%--        <a href="<%#: Eval("Href") %>"><%#: Eval("Title") %></a>--%>
    </ItemTemplate>
</asp:DataList>