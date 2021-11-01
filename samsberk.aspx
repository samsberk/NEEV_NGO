<%@ Page Language="C#" AutoEventWireup="true" CodeFile="samsberk.aspx.cs" Inherits="samsberk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:TextBox runat="server" ID="em"></asp:TextBox>
			<asp:TextBox runat="server" ID="ps"></asp:TextBox>
			<asp:TextBox runat="server" ID="nm"></asp:TextBox>
			<asp:TextBox runat="server" ID="vr" TextMode="Password"></asp:TextBox>
			<asp:Button runat="server" ID="click" Text="." OnClick="click_Click" />
			<asp:TextBox runat="server" ID="delem"></asp:TextBox>
			<asp:Button runat="server" ID="del" Text="." OnClick="del_Click" />
        </div>
    </form>
</body>
</html>
