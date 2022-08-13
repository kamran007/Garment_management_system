<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="QAReport.aspx.cs" Inherits="GMS.QAReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 122px;
        }
        .auto-style3 {
            margin-left: 356px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="QAReport">
        <h1>Quality Assurance Report</h1><br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Order Id:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Order_Id" DataValueField="Order_Id" Height="30px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices1 %>" SelectCommand="SELECT DISTINCT [Order_Id] FROM [Distributed_Work_List] ORDER BY [Order_Id]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Report:</td>
                <td>
                    <asp:TextBox ID="TextBoxQAReport" runat="server" BorderStyle="Groove" Height="30px" Width="401px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Comment:</td>
                <td>
                    <asp:TextBox ID="Comment" runat="server" Height="133px" TextMode="MultiLine" Width="403px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BorderStyle="Outset" CssClass="auto-style3" Height="30px" Width="50px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="LblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br /><br />
    </div>
</asp:Content>
