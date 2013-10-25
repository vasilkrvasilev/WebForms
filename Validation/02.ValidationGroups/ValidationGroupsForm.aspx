<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationGroupsForm.aspx.cs" Inherits="_02.ValidationGroups.ValidationGroupsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <asp:Panel ID="logonInfoPanel" runat="server" GroupingText="Logon Info">
            <asp:Label ID="usernameLabel" runat="server" Text="Username" />
            <asp:TextBox ID="usernameBox" runat="server" ValidationGroup="logon"/>
            <asp:RequiredFieldValidator ID="usernameRequired" runat="server" ValidationGroup="logon" 
                ControlToValidate="usernameBox" Text="Username is required!" />
            <br />
            <asp:Label ID="passwordLabel" runat="server" Text="Password" />
            <asp:TextBox ID="passwordBox" runat="server" TextMode="Password" ValidationGroup="logon"/>
            <asp:RequiredFieldValidator ID="passwordRequired" runat="server" ValidationGroup="logon"
                ControlToValidate="passwordBox" Text="Password is required!" />
            <br />
            <asp:Label ID="repeatPasswordLabel" runat="server" Text=" Repeat Password" />
            <asp:TextBox ID="repeatPasswordBox" runat="server" TextMode="Password" ValidationGroup="logon"/>
            <asp:RequiredFieldValidator ID="repeatPasswordRequired" runat="server" ValidationGroup="logon"
                ControlToValidate="repeatPasswordBox" Text="Repeat Password is required!" />
            <asp:CompareValidator ID="passwordCompare" runat="server"
            ControlToCompare="passwordBox" ValidationGroup="logon"
            ControlToValidate="repeatPasswordBox" Text="Password doesn't match!" />
            <br />
            <asp:Button ID="sendLogonInfo" runat="server" Text="Send" OnClick="sendLogonInfo_Click"/>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="personalInfoPanel" runat="server" GroupingText="Personal Info">
            <asp:Label ID="fnameLabel" runat="server" Text="First Name" />
            <asp:TextBox ID="fnameBox" runat="server" ValidationGroup="personal"/>
            <asp:RequiredFieldValidator ID="fnameRequired" runat="server" ValidationGroup="personal"
                ControlToValidate="fnameBox" Text="First Name is required!" />
            <br />
            <asp:Label ID="lnameLabel" runat="server" Text="Last Name" />
            <asp:TextBox ID="lnameBox" runat="server" ValidationGroup="personal"/>
            <asp:RequiredFieldValidator ID="lnameRequired" runat="server" ValidationGroup="personal"
                ControlToValidate="lnameBox" Text="Last Name is required!" />
            <br />
            <asp:Label ID="ageLabel" runat="server" Text="Age" />
            <asp:TextBox ID="ageBox" runat="server" TextMode="Number" ValidationGroup="personal"/>
            <asp:RequiredFieldValidator ID="ageRequired" runat="server" ValidationGroup="personal"
                ControlToValidate="ageBox" Text="Age is required!" />
            <asp:RangeValidator ID="ageRange" runat="server" ControlToValidate="ageBox" ValidationGroup="personal"
                Text="Age should be in between 18 and 81" MinimumValue="18" MaximumValue="81" />
            <br />
            <asp:Button ID="sendPersonalInfo" runat="server" Text="Send" OnClick="sendPersonalInfo_Click"/>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="contactsInfoPanel" runat="server" GroupingText="Contacts Info">
            <asp:Label ID="emailLabel" runat="server" Text="Email" />
            <asp:TextBox ID="emailBox" runat="server" TextMode="Email" ValidationGroup="contacts"/>
            <asp:RequiredFieldValidator ID="emailRequired" runat="server" ValidationGroup="contacts"
                ControlToValidate="emailBox" Text="Email is required!" />
            <asp:RegularExpressionValidator ID="emailRegex" runat="server" ValidationGroup="contacts"
            Text="Email address is incorrect!" ControlToValidate="emailBox"
            ValidationExpression="[a-zA-Z][a-zA-Z0-9\-\.]*[a-zA-Z]@[a-zA-Z][a-zA-Z0-9\-\.]+[a-zA-Z]+\.[a-zA-Z]+" />
            <br />
            <asp:Label ID="addressLabel" runat="server" Text="Address" />
            <asp:TextBox ID="addressBox" runat="server" TextMode="MultiLine" ValidationGroup="contacts"/>
            <asp:RequiredFieldValidator ID="addressRequired" runat="server" ValidationGroup="contacts"
                ControlToValidate="addressBox" Text="Address is required!" />
            <br />
            <asp:Label ID="phoneLabel" runat="server" Text="Phone" />
            <asp:TextBox ID="phoneBox" runat="server" TextMode="Phone" ValidationGroup="contacts"/>
            <asp:RequiredFieldValidator ID="phoneRequired" runat="server" ValidationGroup="contacts"
                ControlToValidate="phoneBox" Text="Phone is required!" />
            <asp:RegularExpressionValidator ID="phoneRegex" runat="server" ValidationGroup="contacts"
            Text="Phone is incorrect!" ControlToValidate="phoneBox" ValidationExpression="[0-9]{9,10}" />
            <br />
            <asp:Label ID="acceptListLabel" runat="server" Text="Do you accept our Terms" />
            <br />
            <asp:RadioButtonList ID="acceptList" runat="server">
                <asp:ListItem Text="I accept" Selected="True" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="I do not accept" Value="No"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="sendContactsInfo" runat="server" Text="Send" OnClick="sendContactsInfo_Click" />
        </asp:Panel>
    </form>
</body>
</html>
