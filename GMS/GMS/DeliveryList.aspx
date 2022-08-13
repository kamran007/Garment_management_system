<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="DeliveryList.aspx.cs" Inherits="GMS.DeliveryList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="DeliveryList">
        <h1>Delivery Report List:</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="782px" Font-Size="Large" RowStyle-Height="53px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Delivery_Id" HeaderText="Delivery Id" InsertVisible="False" ReadOnly="True" SortExpression="Delivery_Id" />
                <asp:BoundField DataField="Order_Id" HeaderText="Order Id" SortExpression="Order_Id" />
                <asp:BoundField DataField="Order_Title" HeaderText="Order Title" SortExpression="Order_Title" />
                <asp:BoundField DataField="Deliveried_Date" HeaderText="Deliveried Date" SortExpression="Deliveried_Date" />
                <asp:BoundField DataField="Management_Name" HeaderText="Deliveried By" SortExpression="Management_Name" />
            </Columns>
            <FooterStyle BackColor="Aqua" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#FF3300" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices1 %>" SelectCommand=
            "SELECT Delivery_Id,Delivery_List.Order_Id,Order_Title,Deliveried_Date,Management_Name FROM Delivery_List,Order_List,Management where Delivery_List.Order_Id=Order_List.Order_Id and Delivery_List.Management_Id=Management.Management_Id"></asp:SqlDataSource>

    </div>
</asp:Content>
