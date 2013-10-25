<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormViewForm.aspx.cs" Inherits="_03.FormView.FormViewForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
    <div>
        <asp:GridView ID="employees" runat="server" AutoGenerateColumns="false" >
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="FormViewForm.aspx?id={0}"
                     DataTextField="fullName" HeaderText="Full Name" />
            </Columns>
        </asp:GridView>
    </div>
        <asp:FormView ID="details" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>Job Title</td>
                        <td><%#: Eval("Title") %></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><%#: Eval("City") %></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><%#: Eval("Address") %></td>
                    </tr>
                    <tr>
                        <td>Notes</td>
                        <td><%#: Eval("Notes") %></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
