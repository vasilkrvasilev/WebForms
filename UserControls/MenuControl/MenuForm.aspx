<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="MenuForm.aspx.cs" Inherits="MenuControl.MenuForm" %>

<%@ Register tagprefix="user"
Assembly="MenuControl"
Namespace="MenuControl"%>

<%@ Register src="LinksMenu.ascx" tagname="LinksMenu"
tagprefix="user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
            <div>
                <user:LinksMenu runat="server" ID="linkMenu" >
                    <Items>
                        <user:MenuItem Title="Nakov" Href="http://www.nakov.com/" FontType="Verdana" Color="Red" runat="server" />
                        <user:MenuItem Title="Doncho" Href="http://www.nakov.com/" FontType="Arial" Color="#0000FF" runat="server" />
                        <user:MenuItem Title="Joro" Href="http://www.nakov.com/" runat="server" />
                        <user:MenuItem Title="Kiro" Href="http://www.nakov.com/" Color="Red" runat="server" />
                        <user:MenuItem Title="Dancho" Href="http://www.nakov.com/" FontType="Arial" runat="server" />
                    </Items>
                </user:LinksMenu>
            </div>
        </form>
</body>
</html>
