<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="Koshnica.aspx.cs" Inherits="EL_bookstore.Koshnica" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    &nbsp;<asp:Label ID="Label1" runat="server" style="font-weight: 700; text-decoration: underline; color: #990000; font-size: medium; text-align: center;" Text="Във вашата кошница има:" meta:resourcekey="Label1Resource1"></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString5 %>" SelectCommand="SELECT BookID, BookTitle, Price, SUM(Qty * Price) AS SumPrice, SUM(Qty) AS SumQty FROM ShopCart GROUP BY BookID, BookTitle, Price"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" RepeatColumns="3" meta:resourcekey="DataList1Resource1">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
            <br />
            Номер на книга:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
            <br />
            Заглавие:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            Цена:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' meta:resourcekey="PriceLabelResource1" />
            <br />
            Сума:
            <asp:Label ID="SumPriceLabel" runat="server" Text='<%# Eval("SumPrice") %>' meta:resourcekey="SumPriceLabelResource1" />
            <br />
            Количество:
            <asp:Label ID="SumQtyLabel" runat="server" Text='<%# Eval("SumQty") %>' meta:resourcekey="SumQtyLabelResource1" />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележи за изтриване" meta:resourcekey="CheckBox1Resource1" />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" ForeColor="Navy" Font-Bold="True" />
    </asp:DataList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Изтриване" Width="129px" meta:resourcekey="Button1Resource1" style="font-size: medium; color: #ffffff; background-color: #a10000; text-align: center;" />
&nbsp;
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" Width="84px" meta:resourcekey="GridView1Resource1" ForeColor="#333333" GridLines="None" Height="82px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Sum" HeaderText="Общо:" ReadOnly="True" SortExpression="Sum" meta:resourcekey="BoundFieldResource1" />
        </Columns>
        <EmptyDataTemplate>
            <br />
            <br />
        </EmptyDataTemplate>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString5 %>" SelectCommand="SELECT SUM(Qty * Price) AS Sum FROM ShopCart"></asp:SqlDataSource>
</asp:Content>
