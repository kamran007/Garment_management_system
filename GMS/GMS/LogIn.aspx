<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="GMS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
            text-align: right;
            width: 302px;
        }
    .auto-style3 {
        text-align: right;
        height: 22px;
            width: 302px;
        }
    .auto-style4 {
        height: 22px;
    }
        .auto-style5 {
            margin-left: 202px;
        }
        .auto-style7 {
            height: 22px;
            width: 260px;
        }
        .auto-style8 {
            width: 302px;
        }
        .auto-style9 {
            width: 260px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="logmain">

    <br />
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Category</td>
            <td class="auto-style9">
                <asp:DropDownList ID="DBCategory" runat="server" Font-Names="Algerian" Height="30px" Width="150px">
                    <asp:ListItem>Buyer</asp:ListItem>
                    <asp:ListItem Selected="True">Employee</asp:ListItem>
                    <asp:ListItem Value="Quality_Checker">Quality Checker</asp:ListItem>
                    <asp:ListItem>Management</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">User Name:</td>
            <td class="auto-style9">
                <asp:TextBox ID="UserName" runat="server" BorderStyle="Groove" Height="30px" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="UserName" ErrorMessage="Please insert User Name"></asp:RequiredFieldValidator>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td class="auto-style7">
                <asp:TextBox ID="Password" runat="server" TextMode="Password" BorderStyle="Groove" Height="30px" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="LogIn" runat="server" Text=" Log In" OnClick="LogIn_Click" Width="51px" BackColor="White" BorderStyle="Outset" CssClass="auto-style5" ForeColor="Tomato" Height="30px" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    </div>
</asp:Content>
