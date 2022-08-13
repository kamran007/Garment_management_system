<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="ManagementTask.aspx.cs" Inherits="GMS.ManagementTask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="ManagementTask">
        <h1>Management Task:</h1>
        <br />
        <ul>
            <li class="auto-style2"><a href="AddEmployee.aspx"><span class="auto-style3">Add Employee</span></a></li>
            <li class="auto-style2"><a href="AddQC.aspx"><span class="auto-style3">Add Quality Checker</span></a></li>
            <li class="auto-style2"><a href="AddManagement.aspx"><span class="auto-style3">Add Management</span></a></li>
            <li class="auto-style2"><a href="WorkDistribution.aspx"><span class="auto-style3">Work Distribution</span></a></li>
            <li class="auto-style2"><a href="DeliveryReport.aspx"><span class="auto-style3">Priduct Delivery</span></a></li>
        </ul>
        <br /><br />
    </div>
</asp:Content>
