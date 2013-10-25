<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeOrdersForm.aspx.cs" Inherits="_01.EmployeeOrders.EmployeeOrdersForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <asp:ScriptManager ID="ScriptManager" runat="server" />
    
        <asp:GridView ID="employeeList" runat="server" 
            OnSelectedIndexChanged="employeeList_SelectedIndexChanged" DataKeyNames="EmployeeID" 
            AutoGenerateColumns="false" AutoGenerateSelectButton="true">
            <Columns>
                <asp:BoundField HeaderText="Name" DataField="LastName" HtmlEncode="true" />
                <asp:BoundField HeaderText="Title" DataField="Title" HtmlEncode="true" />
                <asp:BoundField HeaderText="City" DataField="City" HtmlEncode="true" />
            </Columns>
        </asp:GridView>

        <br />
        <asp:UpdateProgress ID="UpdateProgressDemo" runat="server">
            <ProgressTemplate>
                Updating ...
            </ProgressTemplate>
        </asp:UpdateProgress>
        <br />

        <asp:UpdatePanel ID="updatePanelOrders" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <asp:GridView ID="orderList" runat="server" DataKeyNames="OrderID" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField HeaderText="Order Date" DataField="OrderDate" HtmlEncode="true" />
                        <asp:BoundField HeaderText="Required Date" DataField="RequiredDate" HtmlEncode="true" />
                        <asp:BoundField HeaderText="Shipped Date" DataField="ShippedDate" HtmlEncode="true" />
                        <asp:BoundField HeaderText="Ship City" DataField="ShipCity" HtmlEncode="true" />
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
