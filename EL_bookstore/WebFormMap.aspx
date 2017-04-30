<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="WebFormMap.aspx.cs" Inherits="EL_bookstore.WebFormMap" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" style="font-size: medium">
    </asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
</asp:Content>