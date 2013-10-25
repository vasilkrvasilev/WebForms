<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="_01.Register.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <asp:Panel ID="errorPanel" runat="server" GroupingText="Error Info">
            <asp:ValidationSummary ID="errorSummary" DisplayMode="List" runat="server" 
                ShowMessageBox="true" ShowValidationErrors="true" ForeColor="Red"/>
        </asp:Panel>
        <asp:Panel ID="logonInfoPanel" runat="server" GroupingText="Logon Info">
            <asp:Label ID="usernameLabel" runat="server" Text="Username" />
            <asp:TextBox ID="usernameBox" runat="server" />
            <asp:RequiredFieldValidator ID="usernameRequired" runat="server" 
                ControlToValidate="usernameBox" ErrorMessage="Username is required!" Text="*" />
            <br />
            <asp:Label ID="passwordLabel" runat="server" Text="Password" />
            <asp:TextBox ID="passwordBox" runat="server" TextMode="Password" />
            <asp:RequiredFieldValidator ID="passwordRequired" runat="server" 
                ControlToValidate="passwordBox" ErrorMessage="Password is required!" Text="*" />
            <br />
            <asp:Label ID="repeatPasswordLabel" runat="server" Text=" Repeat Password" />
            <asp:TextBox ID="repeatPasswordBox" runat="server" TextMode="Password" />
            <asp:RequiredFieldValidator ID="repeatPasswordRequired" runat="server" 
                ControlToValidate="repeatPasswordBox" ErrorMessage="Repeat Password is required!" Text="*" />
            <asp:CompareValidator ID="passwordCompare" runat="server"
            ControlToCompare="passwordBox"
            ControlToValidate="repeatPasswordBox" ErrorMessage="Password doesn't match!" Text="*" />
            <br />
            <%--<asp:Button ID="sendLogonInfo" runat="server" Text="Send" />--%>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="personalInfoPanel" runat="server" GroupingText="Personal Info">
            <asp:Label ID="fnameLabel" runat="server" Text="First Name" />
            <asp:TextBox ID="fnameBox" runat="server" />
            <asp:RequiredFieldValidator ID="fnameRequired" runat="server" 
                ControlToValidate="fnameBox" ErrorMessage="First Name is required!" Text="*" />
            <br />
            <asp:Label ID="lnameLabel" runat="server" Text="Last Name" />
            <asp:TextBox ID="lnameBox" runat="server" />
            <asp:RequiredFieldValidator ID="lnameRequired" runat="server" 
                ControlToValidate="lnameBox" ErrorMessage="Last Name is required!" Text="*" />
            <br />
            <asp:Label ID="ageLabel" runat="server" Text="Age" />
            <asp:TextBox ID="ageBox" runat="server" TextMode="Number" />
            <asp:RequiredFieldValidator ID="ageRequired" runat="server" 
                ControlToValidate="ageBox" ErrorMessage="Age is required!" Text="*" />
            <asp:RangeValidator ID="ageRange" runat="server" ControlToValidate="ageBox" 
                ErrorMessage="Age should be in between 18 and 81" Text="*" MinimumValue="18" MaximumValue="81" />
            <br />
            <%--<asp:Button ID="sendPersonalInfo" runat="server" Text="Send" />--%>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="contactsInfoPanel" runat="server" GroupingText="Contacts Info">
            <asp:Label ID="emailLabel" runat="server" Text="Email" />
            <asp:TextBox ID="emailBox" runat="server" TextMode="Email" />
            <asp:RequiredFieldValidator ID="emailRequired" runat="server" 
                ControlToValidate="emailBox" ErrorMessage="Email is required!" Text="*" />
            <asp:RegularExpressionValidator ID="emailRegex" runat="server" Text="*"
            ErrorMessage="Email address is incorrect!" ControlToValidate="emailBox"
            ValidationExpression="[a-zA-Z][a-zA-Z0-9\-\.]*[a-zA-Z]@[a-zA-Z][a-zA-Z0-9\-\.]+[a-zA-Z]+\.[a-zA-Z]+" />
            <br />
            <asp:Label ID="addressLabel" runat="server" Text="Address" />
            <asp:TextBox ID="addressBox" runat="server" TextMode="MultiLine" />
            <asp:RequiredFieldValidator ID="addressRequired" runat="server" 
                ControlToValidate="addressBox" ErrorMessage="Address is required!" Text="*" />
            <br />
            <asp:Label ID="phoneLabel" runat="server" Text="Phone" />
            <asp:TextBox ID="phoneBox" runat="server" TextMode="Phone" />
            <asp:RequiredFieldValidator ID="phoneRequired" runat="server" 
                ControlToValidate="phoneBox" ErrorMessage="Phone is required!" Text="*" />
            <asp:RegularExpressionValidator ID="phoneRegex" runat="server"
            ErrorMessage="Phone is incorrect!" ControlToValidate="phoneBox"
            ValidationExpression="[0-9]{9,10}" Text="*" />
            <br />
            <asp:Label ID="acceptListLabel" runat="server" Text="Do you accept our Terms" />
            <br />
            <asp:RadioButtonList ID="acceptList" runat="server">
                <asp:ListItem Text="I accept" Selected="True" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="I do not accept" Value="No"></asp:ListItem>
            </asp:RadioButtonList>
            <%--<asp:Button ID="sendContactsInfo" runat="server" Text="Send" />--%>
        </asp:Panel>
        <asp:Button ID="send" runat="server" Text="Send" OnClick="send_Click" />
    </form>
</body>
</html>
