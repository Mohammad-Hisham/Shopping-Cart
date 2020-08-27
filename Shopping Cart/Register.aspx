<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Shopping_Cart.Register"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">

    <div>
      <table style="width: 700px; height: 600px; margin-left: 400px">
            <tr>
                <td colspan="2">
                    <h2 style="margin-left:150px">Create New Account</h2>
                </td>
            </tr>

            <tr>
                <td>
                    <b>First Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="FirstNametxtbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FirstNametxtbox" ErrorMessage="Alphabets Only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Last Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="LastNametxtbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="LastNametxtbox" ErrorMessage="Alphabets Only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Email ID:</b>
                </td>
                <td>
                    <asp:TextBox ID="EmailIDtxtbox" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailIDtxtbox" ErrorMessage="Email ID is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Address:</b>
                </td>
                <td>
                    <asp:TextBox ID="Addresstxtbox" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <b>Gender:</b>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="GenderSelection" runat="server" Width="177px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Mobile Number:</b>
                </td>
                <td>
                    <asp:TextBox ID="MobileNumbertxtbox" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Password:</b>
                </td>
                <td>
                    <asp:TextBox ID="Passwordtxtbox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Passwordtxtbox" ErrorMessage="Password is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Confirm Password:</b>
                </td>
                <td>
                    <asp:TextBox ID="ConfirmPasswordtxtbox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Passwordtxtbox" ControlToValidate="ConfirmPasswordtxtbox" ErrorMessage="Password is not matched" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Button ID="SignUpbtn" runat="server" Text="Sign Up" Font-Bold="True" Font-Size="Medium" OnClick="SignUpbtn_Click" style="margin-left: 55px" />
                </td>
             
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Label ID="Successlbl" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
                
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
