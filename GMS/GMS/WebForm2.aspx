<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="GMS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="BuyerList">
        <h1><u>BUyerList:</u></h1><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Buyer_Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="782px" Font-Size="Large" RowStyle-Height="53px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Buyer_Id" HeaderText="Buyer Id" ReadOnly="True" SortExpression="Buyer_Id" />
            <asp:BoundField DataField="Company_Name" HeaderText="Company Name" SortExpression="Company_Name" />
            <asp:BoundField DataField="Trade_Licence_No" HeaderText="Trade Licence No" SortExpression="Trade_Licence_No" />
            <asp:BoundField DataField="Buyer_Address" HeaderText="Buyer Address" SortExpression="Buyer_Address" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Email_Address" HeaderText="Email Address" SortExpression="Email_Address" />
            <asp:BoundField DataField="Phone_No" HeaderText="Phone No" SortExpression="Phone_No" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices1 %>" SelectCommand="SELECT [Buyer_Id], [Company_Name], [Trade_Licence_No], [Buyer_Address], [Country], [Email_Address], [Phone_No] FROM [Buyer]"></asp:SqlDataSource>
        <br /><br />
        </div>
</asp:Content>
