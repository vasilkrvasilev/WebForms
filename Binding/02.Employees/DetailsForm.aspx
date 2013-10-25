<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsForm.aspx.cs" Inherits="_02.Employees.DetailsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:DetailsView ID="details" runat="server" AutoGenerateRows="true">
    </asp:DetailsView>
        <asp:HyperLink ID="backLink" runat="server" NavigateUrl="~/EmployeesForm.aspx" Text="Back">
        </asp:HyperLink>
    </form>
</body>
</html>
