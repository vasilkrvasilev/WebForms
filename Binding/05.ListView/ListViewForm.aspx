<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewForm.aspx.cs" Inherits="_05.ListView.ListViewForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        td,th {
            width: 15%;
            border:solid;
            border-width: medium;
        }

        .notes {
            width: 40%;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
    <asp:ListView ID="employees" runat="server" ItemType="_02.Employees.Employee">
        <LayoutTemplate>
            <table>
                <thead>
                    <tr>
                        <th>
                            Full Name
                        </th>
                        <th>
                            Job Title
                        </th>
                        <th>
                            City
                        </th>
                        <th>
                            Address
                        </th>
                        <th class="notes">
                            Notes
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                </tbody>
            </table>
        </LayoutTemplate>
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
    </asp:ListView>
    </form>
</body>
</html>
