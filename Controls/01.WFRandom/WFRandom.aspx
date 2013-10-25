<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFRandom.aspx.cs" Inherits="_01.WFRandom.WFRandom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form" runat="server">
    <div>
        <label for="firstNumber" runat="server">First Number</label>
        <input type="text" id="firstNumber" runat="server"/>
        <label for="secondNumber" runat="server">Second Number</label>
        <input type="text" id="secondNumber" runat="server"/>
        <label for="resultNumber" runat="server">Result Number</label>
        <input type="text" id="resultNumber" runat="server"/>
        <input id="random" type="button"
            runat="server" value="Random"
            onserverclick="random_ServerClick" />
    </div>
    </form>
</body>
</html>
