<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="EL_bookstore.News" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: center;
        }
        .auto-style10 {
            text-align: justify;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style10">
        <strong style="text-align: left">RSS News:</strong></p>
    <strong>
    <asp:Label ID="lblTitle" runat="server" style="text-align: center; color: #000000;" Text="Title:" meta:resourcekey="lblTitleResource1"></asp:Label>
    <br />
    <asp:Label ID="lblLanguage" runat="server" Text="Language:" meta:resourcekey="lblLanguageResource1" style="color: #000000"></asp:Label>
    <br />
    <asp:Label ID="lblLink" runat="server" Text="Link:" meta:resourcekey="lblLinkResource1" style="color: #000000"></asp:Label>
    <br />
    <asp:Label ID="lblDescription" runat="server" Text="Description:" meta:resourcekey="lblDescriptionResource1" style="color: #000000"></asp:Label>
    </strong>
    <br />
    <br />
    <asp:GridView ID="GrViewNews" runat="server" meta:resourcekey="GrViewNewsResource1" style="color: #990000" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <p class="auto-style7">
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
