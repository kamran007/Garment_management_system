<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="OrderList.aspx.cs" Inherits="GMS.OrderList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="OrderList">
        <h1 align="center">Order List</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Order_Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="747px" Font-Size="Large" RowStyle-Height="53px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Order_Id" HeaderText="Order Id" InsertVisible="False" ReadOnly="True" SortExpression="Order_Id" />
                <asp:BoundField DataField="Order_Title" HeaderText="Order Title" SortExpression="Order_Title" />
                <asp:BoundField DataField="Order_Description" HeaderText="Order Description" SortExpression="Order_Description" />
                <asp:BoundField DataField="Receving_Date" HeaderText="Receving Date" SortExpression="Receving_Date" />
                <asp:BoundField DataField="Delivery_Date" HeaderText="Delivery Date" SortExpression="Delivery_Date" />
                <asp:BoundField DataField="Company_Name" HeaderText="Company Name" SortExpression="Buyer_Id" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" Height="35px"/>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center"/>
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices1 %>" SelectCommand="SELECT Order_Id,Order_Title,Order_Description,Receving_Date,Delivery_Date,Company_Name FROM Order_List,Buyer where Order_List.Buyer_Id=Buyer.Buyer_Id "></asp:SqlDataSource>

    </div>
</asp:Content>
