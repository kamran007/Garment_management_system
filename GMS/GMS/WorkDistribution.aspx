<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="WorkDistribution.aspx.cs" Inherits="GMS.WorkDistribution" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 369px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="WorkDistribution">
        <h1>Work Distribution Form:</h1>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order Title:</td>
                <td>
                    <asp:DropDownList ID="DropDownListOrder" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Order_Id" DataValueField="Order_Id" OnSelectedIndexChanged="DropDownListOrder_SelectedIndexChanged" Width="128px" Height="33px">
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBoxOrder" runat="server" AutoPostBack="True" Height="30px"></asp:TextBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices1 %>" SelectCommand="SELECT [Order_Title], [Order_Id] FROM [Order_List]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee Name:</td>
                <td>
                    <asp:DropDownList ID="DropDownListEmployee" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Employee_Name" DataValueField="Employee_Id" OnSelectedIndexChanged="DropDownListEmployee_SelectedIndexChanged" Width="128px" Height="33px">
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBoxEmployee" runat="server" AutoPostBack="True" Height="30px"></asp:TextBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices1 %>" SelectCommand="SELECT [Employee_Id], [Employee_Name], [Employee_Rank] FROM [Employee]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Work Detail:</td>
                <td>
                    <asp:TextBox ID="TextBoxWorkDetail" runat="server" Height="129px" TextMode="MultiLine" Width="423px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtSubmit" runat="server" OnClick="BtSubmit_Click" Text="Submit" BorderStyle="Outset" CssClass="auto-style2" Height="30px" Width="50px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
