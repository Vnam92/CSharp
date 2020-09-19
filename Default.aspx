<%@ Page Language="C#" Inherits="WebSimpleApp.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default page</title>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body bgcolor=<%= BgColor %>>
    <a class="link" href="/Logging.aspx">Go to Logging page</a>    
    
    <form id="form" class="default-form" runat="server">
        <asp:Button CssClass="button" id="buttonRed" Text="Red" runat="server" CommandArgument="red" OnClick="OnClickHandler" />
        <asp:Button CssClass="button" id="buttonGreen" Text="Green" runat="server" CommandArgument="green" OnClick="OnClickHandler" />
        <asp:Button CssClass="button" id="buttonBlue" Text="Blue" runat="server" CommandArgument="blue" OnClick="OnClickHandler" />
        <asp:Button CssClass="button" id="buttonYellow" Text="Yellow" runat="server" CommandArgument="yellow" OnClick="OnClickHandler" />
    </form>
</body>
</html>
