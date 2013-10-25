<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculatorForm.aspx.cs" Inherits="_06.Calculator.CalculatorForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <asp:Panel ID="calculator" runat="server">
            <asp:Panel ID="enter" runat="server">
                <asp:TextBox ID="enterNumber" runat="server" ReadOnly="true"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="operations" runat="server">
                <asp:Button ID="one" runat="server" Text="1" OnClick="one_Click" />
                <asp:Button ID="two" runat="server" Text="2" OnClick="two_Click" />
                <asp:Button ID="three" runat="server" Text="3" OnClick="three_Click" />
                <asp:Button ID="plus" runat="server" Text="+" OnClick="plus_Click" />
                <br />
                <asp:Button ID="four" runat="server" Text="4" OnClick="four_Click" />
                <asp:Button ID="five" runat="server" Text="5" OnClick="five_Click" />
                <asp:Button ID="six" runat="server" Text="6" OnClick="six_Click" />
                <asp:Button ID="minus" runat="server" Text="-" OnClick="minus_Click" />
                <br />
                <asp:Button ID="seven" runat="server" Text="7" OnClick="seven_Click" />
                <asp:Button ID="eight" runat="server" Text="8" OnClick="eight_Click" />
                <asp:Button ID="nine" runat="server" Text="9" OnClick="nine_Click" />
                <asp:Button ID="multiply" runat="server" Text="x" OnClick="multiply_Click" />
                <br />
                <asp:Button ID="clear" runat="server" Text="clear" OnClick="clear_Click" />
                <asp:Button ID="zero" runat="server" Text="0" OnClick="zero_Click" />
                <asp:Button ID="divide" runat="server" Text="/" OnClick="divide_Click" />
                <asp:Button ID="root" runat="server" Text="sqrt" OnClick="root_Click" />
            </asp:Panel>
            <asp:Panel ID="result" runat="server">
                <asp:Button ID="equal" runat="server" Text="=" OnClick="equal_Click" />
            </asp:Panel>
            <asp:Label ID="resultNumber" runat="server">0</asp:Label>
            <asp:Label ID="sign" runat="server">+</asp:Label>
            <asp:Label ID="currentNumber" runat="server"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
