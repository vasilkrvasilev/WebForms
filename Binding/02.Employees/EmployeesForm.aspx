<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeesForm.aspx.cs" Inherits="_02.Employees.EmployeesForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <asp:GridView ID="employees" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="DetailsForm.aspx?id={0}"
                     DataTextField="fullName" HeaderText="Full Name" />
            </Columns>
        </asp:GridView>
    
    </form>
</body>
</html>
