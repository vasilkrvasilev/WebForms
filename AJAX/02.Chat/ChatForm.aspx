<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChatForm.aspx.cs" Inherits="_02.Chat.ChatForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        <asp:ScriptManager ID="ScriptManager" runat="server" />

        <asp:UpdatePanel ID="updatePanelOrders" UpdateMode="Conditional" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="timer" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:ListView ID="messageList" runat="server" DataKeyNames="Id">
                    <ItemTemplate>
                        <br />
                        <%#: Eval("Text") %>
                        <br />
                        <%#: Eval("Date") %>
                        <br />
                    </ItemTemplate>
                </asp:ListView>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Label ID="messageLabel" runat="server" AssociatedControlID="messageBox" Text="New Message" />
        <asp:TextBox ID="messageBox" runat="server" TextMode="MultiLine"  />
        <asp:Button ID="create" runat="server" Text="Create" OnClick="create_Click" />
        <asp:Timer ID="timer" runat="Server" Interval="500" />
    </form>
</body>
</html>
