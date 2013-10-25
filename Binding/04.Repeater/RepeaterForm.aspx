<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterForm.aspx.cs" Inherits="_04.Repeater.RepeaterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        td {
            width: 15%;
            border:solid;
            border-width: medium;
        }

        td.notes {
            width: 40%;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
    <asp:Repeater ID="employees" runat="server" ItemType="_02.Employees.Employee">
        <HeaderTemplate>
            <table>
                    <tr>
                        <td>
                            Full Name
                        </td>
                        <td>
                            Job Title
                        </td>
                        <td>
                            City
                        </td>
                        <td>
                            Address
                        </td>
                        <td class="notes">
                            Notes
                        </td>
                    </tr>
        </HeaderTemplate>
        <ItemTemplate>
                <tr>
                    <td>
                        <%#: Item.FirstName + " " + Item.LastName %>
                    </td>
                    <td>
                        <%#: Item.Title %>
                    </td>
                    <td>
                        <%#: Item.City %>
                    </td>
                    <td>
                        <%#: Item.Address %>
                    </td>
                    <td class="notes">
                        <%#: Item.Notes %>
                    </td>
                </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    </form>
</body>
</html>
