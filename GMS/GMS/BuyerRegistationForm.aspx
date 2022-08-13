<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuyerRegistationForm.aspx.cs" Inherits="GMS.BuyerRegistationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
            text-align: right;
            width: 323px;
        }
        .auto-style3 {
            text-align: right;
            height: 26px;
            width: 323px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            margin-left: 245px;
        }
        .auto-style7 {
            height: 26px;
            width: 308px;
        }
        .auto-style8 {
            width: 323px;
        }
        .auto-style9 {
            width: 308px;
        }
        .auto-style10 {
            width: 144px;
        }
        .auto-style11 {
            height: 26px;
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="BuyerRegForm">

        <h1><u>Buyer Registation Form:</u></h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Company Name:</td>
            <td class="auto-style9">
                <asp:TextBox ID="CompanyName" runat="server" BorderStyle="Groove" Height="30px" Width="300px" EnableViewState="False"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCompany" runat="server" ControlToValidate="CompanyName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Trade licence No:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TradeLicenceNo" runat="server" BorderStyle="Groove" Height="30px" Width="300px" EnableViewState="False"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTrade" runat="server" ControlToValidate="TradeLicenceNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Address:</td>
            <td class="auto-style9">
                <asp:TextBox ID="Address" runat="server" BorderStyle="Groove" Height="30px" Width="300px" EnableViewState="False"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="Address" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Country:</td>
            <td class="auto-style9">
                <asp:TextBox ID="Country" runat="server" BorderStyle="Groove" Height="30px" Width="300px" EnableViewState="False"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCountry" runat="server" ControlToValidate="Country" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Phone No:</td>
            <td class="auto-style9">
                <asp:TextBox ID="PhoneNo" runat="server" TextMode="Number" BorderStyle="Groove" Height="30px" Width="300px" EnableViewState="False"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PhoneNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Email Address:</td>
            <td class="auto-style9">
                <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email" BorderStyle="Groove" Height="30px" Width="300px" EnableViewState="False"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="EmailAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmailAddresss" runat="server" ControlToValidate="EmailAddress" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email Address</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">User Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="UserName" runat="server" BorderStyle="Groove" Height="30px" Width="300px" EnableViewState="False"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="UserName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="LabelCorrectUserName" runat="server"></asp:Label>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="Password" runat="server" TextMode="Password" BorderStyle="Groove" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="Password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Conform Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="ConformPassword" runat="server" TextMode="Password" BorderStyle="Groove" Height="30px" Width="200px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style10">
                <asp:CompareValidator ID="CompareValidatorConformPassword" runat="server" ControlToCompare="Password" ControlToValidate="ConformPassword" ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="SignUp" runat="server" Text="  Submit" OnClick="SignUp_Click" BackColor="#009900" BorderStyle="Outset" CssClass="auto-style5" ForeColor="White" Height="40px" Width="74px" Font-Bold="True" Font-Size="Medium" />
            </td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="LblMessage" runat="server" BorderStyle="None"></asp:Label>
            </td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


    </div>
</asp:Content>
