<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="GMS._Default" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
                 <div class="notice">
                 <marquee behavior="scroll" direction="left">we are here with world class product.To give Order please register in sign up option</marquee>
                 </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Block">
    <ContentTemplate>
        <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Trick">
        </asp:Timer>
        <asp:Image ID="Image1" runat="server" Width="960px" Height="400px"/>
    </ContentTemplate>






   </asp:UpdatePanel>
                     
</asp:Content>
