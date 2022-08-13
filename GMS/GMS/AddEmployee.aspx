<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="GMS.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            margin-left: 252px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="AddEmployee">

        <h1><u>Employee Registation Form:</u></h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Name:</td>
                <td>
                    <asp:TextBox ID="Name" runat="server" BorderStyle="Groove" Height="30px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="Name" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Rank:</td>
                <td>
                    <asp:TextBox ID="Rank" runat="server" BorderStyle="Groove" Height="30px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorRank" runat="server" ControlToValidate="Rank" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Salary:</td>
                <td>
                    <asp:TextBox ID="Salary" runat="server" BorderStyle="Groove" Height="30px" Width="300px" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSalary" runat="server" ControlToValidate="Salary" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address:</td>
                <td>
                    <asp:TextBox ID="Address" runat="server" BorderStyle="Groove" Height="30px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="Address" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email Address:</td>
                <td>
                    <asp:TextBox ID="EmailAddress" runat="server" BorderStyle="Groove" Height="30px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="EmailAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email Address</asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Phone No:</td>
                <td>
                    <asp:TextBox ID="PhoneNo" runat="server" BorderStyle="Groove" Height="30px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PhoneNo" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">User Name:</td>
                <td>
                    <asp:TextBox ID="UserName" runat="server" BorderStyle="Groove" Height="30px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="UserName" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:Label ID="LabelCorrectUserName" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" BorderStyle="Groove" Height="30px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Password" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Conform Password:</td>
                <td>
                    <asp:TextBox ID="ConformPassword" runat="server" TextMode="Password" BorderStyle="Groove" Height="30px" Width="200px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConformPassword" ErrorMessage="CompareValidator" ForeColor="Red">Password Not Match</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" BorderStyle="Outset" CssClass="auto-style3" Height="30px" Width="50px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LblMessage" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </div>
</asp:Content>
