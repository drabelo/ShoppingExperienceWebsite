<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ProductPage.aspx.vb" Inherits="ProductPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 566px;
    }
        .style3
        {
            width: 615px;
            height: 182px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/ShoppingDb.mdb" 
        SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="prod" 
                Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>

    <br />
<table class="style1" id = "dataView">
    <tr>
        <td class="style3">
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ProductID" DataSourceID="AccessDataSource1" Height="50px" 
        Width="125px" BackColor="White" BorderColor="#999999" 
    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
    ForeColor="Black" GridLines="Vertical" HorizontalAlign="Right">
                <AlternatingRowStyle BackColor="#CCCCCC" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:ImageField DataImageUrlField="ImageFile" 
                DataImageUrlFormatString="~/images/{0}">
            </asp:ImageField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>
        </td>
        <td>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ProductID" DataSourceID="AccessDataSource1" Height="50px" 
        Width="125px" BackColor="#CCCCCC" BorderColor="#999999" 
    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
    ForeColor="Black" HorizontalAlign="Left" CellSpacing="2"
       OnItemCommand= "DetailsView1_ItemCommand" style="margin-left: 6px" >
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="LongDescription" HeaderText="LongDescription" 
                SortExpression="LongDescription" />
            <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" 
                SortExpression="ShortDescription" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                SortExpression="CategoryID" />
            <asp:BoundField DataField="OnHand" HeaderText="OnHand" 
                SortExpression="OnHand" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="EventDate" HeaderText="EventDate" 
                SortExpression="EventDate" />
            <asp:ButtonField CommandName="bttnAdd" ButtonType="button" Text="Add to Cart" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
    </asp:DetailsView>
        </td>
    </tr>
</table>
<br />
<br />
<br />
    </div>
</asp:Content>

