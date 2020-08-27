<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Shopping_Cart.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>

    </table>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
             <table>
        <tr>
            <td>

            </td>
        </tr>

        <tr>
            <td>

            </td>
        </tr>

        <tr>
            <td>

            </td>
        </tr>

        <tr>
            <td>

            </td>
        </tr>

        <tr>
            <td>

            </td>
        </tr>
    </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
   
</asp:Content>
