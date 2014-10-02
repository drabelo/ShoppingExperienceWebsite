<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Cart.aspx.vb" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <br />

        <br />
        <table class="style1">
            <tr>
                <td class="style3" valign="top">
                    
                    <asp:ListBox ID="lstBox" runat="server"></asp:ListBox>
                    
                </td>
                <td class="style4" valign="top">
                    <asp:Button ID="btnRemove" runat="server" CssClass="style5" Text="Remove Item" 
                        Width="100px" />
                    <br />
                    <br />
                    <asp:Button ID="btnEmpty" runat="server" CssClass="style6" Text="Empty Cart" 
                        Width="100px" />
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnContinue" runat="server" PostBackUrl="~/Order.aspx" 
            Text="Continue Shopping" />&nbsp;
        <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" />

</asp:Content>

