<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/ShoppingDb.mdb" 
        SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CategoryID" QueryStringField="cat" 
                Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductID" 
        DataMember="DefaultView" DataSourceID="AccessDataSource1" 
        EnablePersistedSelection="True" GroupItemCount="3" align="center">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color:#FFF8DC;">
              ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />

                <asp:Image ID= "imgProduct" runat ="server" width = "200px"
               ImageUrl='<%# Bind ("ImageFile", "Images/{0}") %>' />
                <br />
                Price:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                EventDate:
                <asp:Label ID="EventDateLabel" runat="server" Text='<%# Eval("EventDate") %>' />
                <br />
                <asp:LinkButton ID="lnkSelect" Text="Buy Now" CssClass="hyperlink" 
                CommandName="Select" runat="server"  ForeColor="#000000"/>
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" 
                    Text='<%# Eval("ProductID") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                ShortDescription:
                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" 
                    Text='<%# Bind("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:TextBox ID="LongDescriptionTextBox" runat="server" 
                    Text='<%# Bind("LongDescription") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" 
                    Text='<%# Bind("ImageFile") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                    Text='<%# Bind("UnitPrice") %>' />
                <br />
                OnHand:
                <asp:TextBox ID="OnHandTextBox" runat="server" Text='<%# Bind("OnHand") %>' />
                <br />
                EventDate:
                <asp:TextBox ID="EventDateTextBox" runat="server" 
                    Text='<%# Bind("EventDate") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                ShortDescription:
                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" 
                    Text='<%# Bind("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:TextBox ID="LongDescriptionTextBox" runat="server" 
                    Text='<%# Bind("LongDescription") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" 
                    Text='<%# Bind("ImageFile") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                    Text='<%# Bind("UnitPrice") %>' />
                <br />
                OnHand:
                <asp:TextBox ID="OnHandTextBox" runat="server" Text='<%# Bind("OnHand") %>' />
                <br />
                EventDate:
                <asp:TextBox ID="EventDateTextBox" runat="server" 
                    Text='<%# Bind("EventDate") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />

                <asp:Image ID= "imgProduct" runat ="server" width = "200px"
               ImageUrl='<%# Bind ("ImageFile", "Images/{0}") %>' />
                <br />
                Price:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                EventDate:
                <asp:Label ID="EventDateLabel" runat="server" Text='<%# Eval("EventDate") %>' />
                <br />
                <asp:LinkButton ID="lnkSelect" Text="Buy Now" CssClass="hyperlink" CommandName="Select" runat="server" ForeColor="#000000"/>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" 
                style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                ShortDescription:
                <asp:Label ID="ShortDescriptionLabel" runat="server" 
                    Text='<%# Eval("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:Label ID="LongDescriptionLabel" runat="server" 
                    Text='<%# Eval("LongDescription") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" 
                    Text='<%# Eval("CategoryID") %>' />
                <br />
                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                <br />
                Price:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                OnHand:
                <asp:Label ID="OnHandLabel" runat="server" Text='<%# Eval("OnHand") %>' />
                <br />
                EventDate:
                <asp:Label ID="EventDateLabel" runat="server" Text='<%# Eval("EventDate") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    </div>
</asp:Content>

