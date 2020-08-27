<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Page.aspx.cs" Inherits="Shopping_Cart.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 362px">
    
        <table style="height: 355px; width: 512px; margin-left: 400px">
            <tr>
                <td colspan="2" style="text-align:center">
                    <h2>Login Page</h2>
                </td>
            </tr>

            <tr>
                <td style="text-align:center">
                    <b>Email ID:</b>
                </td>
                <td style="text-align:center">
                    <asp:TextBox ID="EmailIDtxtbox" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td  style="text-align:center">
                    <b>Password:</b>
                </td>
                <td style="text-align:center">
                    <asp:TextBox ID="Passwordtxtbox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Button ID="LogInBtn" runat="server" Text="LogIn" Font-Bold="True" Font-Size="Medium" OnClick="LogInBtn_Click" style="margin-left:150px" />
                    <asp:Button ID="Register" runat="server" Font-Bold="True" Font-Size="Medium" Text="Register" OnClick="Register_Click" style="margin-left: 10px"/>
                </td>
                
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">

                    <asp:Label ID="Loginsuccesslbl" runat="server" Text=""></asp:Label>

                </td>
                
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
