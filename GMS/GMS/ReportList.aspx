<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="ReportList.aspx.cs" Inherits="GMS.ReportList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Report">
        <h1><u>Quality Assurance Report List:</u></h1><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Report_Id" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="782px" Font-Size="Large" RowStyle-Height="53px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Report_Id" HeaderText="Report Id" InsertVisible="False" ReadOnly="True" SortExpression="Report_Id" />
                <asp:BoundField DataField="Order_Id" HeaderText="Order Id" SortExpression="Order_Id" />
                <asp:BoundField DataField="Order_Title" HeaderText="Order Title" SortExpression="Order_Title" />
                <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                <asp:BoundField DataField="QC_Name" HeaderText="Quality Checked By" SortExpression="QC_Name" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices1 %>" SelectCommand="SELECT Report_Id,QA_Report_List.Order_Id,Order_Title,Result,Comment,QC_Name FROM QA_Report_List, Order_List, Quality_Checker where QA_Report_List.Order_Id=Order_List.Order_Id and QA_Report_List.QC_Id= Quality_Checker.QC_Id"></asp:SqlDataSource>
        <br /><br />
    </div>
</asp:Content>
