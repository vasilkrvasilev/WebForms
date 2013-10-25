<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="_04.Register.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <asp:Panel ID="names" runat="server">
            <asp:Label ID="firstNameLabel" runat="server" AssociatedControlID="firstNameBox">
                First Name: </asp:Label>
            <asp:TextBox ID="firstNameBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="firstRequire" runat="server" ErrorMessage="required"
                ControlToValidate="firstNameBox">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="firstRegex" runat="server" ControlToValidate="firstNameBox" 
                ValidationExpression="[a-zA-Z- ]+" ErrorMessage="only latin letters, space and - are allowed">
            </asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="secondNameLabel" runat="server" AssociatedControlID="secondNameBox">
                Second Name: </asp:Label>
            <asp:TextBox ID="secondNameBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="secondRequire" runat="server" ErrorMessage="required"
                ControlToValidate="secondNameBox">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="secondRegex" runat="server" ControlToValidate="secondNameBox" 
                ValidationExpression="[a-zA-Z- ]+" ErrorMessage="only latin letters, space and - are allowed">
            </asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="numberLabel" runat="server" AssociatedControlID="numberBox">
                Faculty Number: </asp:Label>
            <asp:TextBox ID="numberBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="numberRequire" runat="server" ErrorMessage="required"
                ControlToValidate="numberBox">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="numberRegex" runat="server" ControlToValidate="numberBox" 
                ValidationExpression="[0-9]{5}" ErrorMessage="only digits are allowed - exactly 5">
            </asp:RegularExpressionValidator>
        </asp:Panel>
        <asp:Panel ID="selections" runat="server">
            <asp:Label ID="universityLabel" runat="server" AssociatedControlID="universityList">
                    University: </asp:Label>
            <asp:DropDownList ID="universityList" runat="server">
                <asp:ListItem Value="0">Sofia University</asp:ListItem>
                <asp:ListItem Value="1">Plovdiv University</asp:ListItem>
                <asp:ListItem Value="2">UNWE</asp:ListItem>
                <asp:ListItem Value="3">Varna Technical University</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="coursesLabel" runat="server" AssociatedControlID="coursesList">
                Courses: </asp:Label>
            <asp:CheckBoxList ID="coursesList" runat="server">
                <asp:ListItem Value="0">IT</asp:ListItem>
                <asp:ListItem Value="1">Law</asp:ListItem>
                <asp:ListItem Value="2">Math</asp:ListItem>
                <asp:ListItem Value="3">Economics</asp:ListItem>
            </asp:CheckBoxList>
        </asp:Panel>
        <asp:Panel ID="button" runat="server">
            <asp:Button ID="send" runat="server" OnClick="send_Click" Text="Send"/>
        </asp:Panel>
        <asp:Literal ID="result" runat="server"></asp:Literal>
    </form>
</body>
</html>
