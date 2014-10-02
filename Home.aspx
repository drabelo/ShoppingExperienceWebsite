<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 305px;
        height: 225px;
    }
    .style4
    {
        font-style: italic;
        font-weight: bold;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style4">
            <img alt="" class="style2" src="images/bostonceltics.jpg" /></td>
        <td class="style4">
            Welcome to our website! KickASS Tickets. Here we try to offer you<br />
            the best prices for the best events. Feel free to look around and buy<br />
            anything you&#39;d like. For any questions, feel free to contact us!</td>
    </tr>
</table>
</asp:Content>

