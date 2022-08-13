<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="DeliveryReport.aspx.cs" Inherits="GMS.DeliveryReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: right;
    }
        .auto-style3 {
            margin-left: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="DeliveryReport">
        <h1>Delivery Report:</h1>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Order Id:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Order_Id" DataValueField="Order_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Height="30px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices1 %>" SelectCommand="SELECT DISTINCT[Order_Id] FROM [View_Prepare_Delivery]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Order Title:</td>
                <td>
                    <asp:TextBox ID="OrderTitle" runat="server" AutoPostBack="True" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delivery" CssClass="auto-style3" Height="30px" Width="55px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LabelMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
