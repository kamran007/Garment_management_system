<%@ Page Title="BuyerGivesOrder" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="GiveOrder.aspx.cs" Inherits="GMS.GiveOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 299px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="GiveOrder">
       <h1>Order Form:</h1>

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order Title:</td>
                <td>
                    <asp:TextBox ID="OrderTitle" runat="server" Width="503px" BorderStyle="Groove" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description:</td>
                <td>
                    <asp:TextBox ID="Description" runat="server" Height="185px" TextMode="MultiLine" Width="506px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Delivery Date:</td>
                <td>
                    <asp:TextBox ID="DeliveryDate" runat="server" TextMode="Date" BorderStyle="Groove" Height="30px" Width="156px"></asp:TextBox>
                    <asp:Button ID="BtSubmit" runat="server" OnClick="BtSubmit_Click" Text="Submit" BorderStyle="Outset" CssClass="auto-style2" Height="30px" Width="50px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LblMessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
