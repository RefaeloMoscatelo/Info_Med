<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Info_Med.WebForm2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post" action="HomePage.aspx">
    <table>
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Full Name"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtName" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label2" runat="server" CssClass="lbl" Text="Phone"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtPhone" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="Email"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtEmail" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
   
    </table>
    </form>
</body>
</html>


