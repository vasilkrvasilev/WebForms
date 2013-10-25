<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarsXMLForm.aspx.cs" Inherits="_07.CarsXML.CarsXMLForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="PageTreeView" runat="server" DataSourceID="PageDataSource">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="producer" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="model" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="engine" TextField="#InnerText" />
            </DataBindings>
        </asp:TreeView>

        <asp:XmlDataSource ID="PageDataSource" runat="server" XPath="/Cars" DataFile="~/CarsXml.xml">
        </asp:XmlDataSource>
    
    </div>
    </form>
</body>
</html>
