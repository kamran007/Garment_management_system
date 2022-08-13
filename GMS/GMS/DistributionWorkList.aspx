<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="DistributionWorkList.aspx.cs" Inherits="GMS.DistributionWorkList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="DistributionWorkList">
        <h1>Work Distribution List:</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="825px" Font-Size="Large" RowStyle-Height="53px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Distributed_Work_Id" HeaderText=" No" SortExpression="Distributed_Work_Id" />
                <asp:BoundField DataField="Detail_Work" HeaderText=" Detail Work" SortExpression="Detail_Work" />
                <asp:BoundField DataField="Employee_Name" HeaderText=" Employee Name" SortExpression="Employee_Name" />
                <asp:BoundField DataField="Employee_Rank" HeaderText=" Employee Rank" SortExpression="Employee_Rank" />
                <asp:BoundField DataField="Order_Id" HeaderText=" Order No" SortExpression="Order_Id" />
                <asp:BoundField DataField="Order_Title" HeaderText=" Order Title" SortExpression="Order_Title" />
                <asp:BoundField DataField="Management_Name" HeaderText=" Distributed By" SortExpression="Management_Name" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices1 %>" SelectCommand="SELECT * FROM [Work_distributionView] where Employee_Id= '"+Session["id"].ToString()+"'"></asp:SqlDataSource>
        

        <br /><br />
    </div>
</asp:Content>
