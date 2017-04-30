<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="EL_bookstore.Menu" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 705px;
        }
        .auto-style11 {
            width: 134px;
        }
        .auto-style12 {
            margin-left: 0px;
        }
    .auto-style13 {
        margin-top: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style11">
    <asp:Label ID="LblMenu0" runat="server" Text="Меню и  Категории" BackColor="#FFCC66" BorderStyle="Double" meta:resourcekey="LblMenuResource1" style="background-color: #FFFFCC; color: #990000; font-weight: 700; text-decoration: underline;" Width="106px"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
    <asp:GridView ID="GridViewMenu" runat="server" AutoGenerateColumns="False" Width="113px" CellPadding="4" GridLines="None" ShowHeader="False" CssClass="auto-style10" ForeColor="#333333" meta:resourcekey="GridViewMenuResource1" OnSelectedIndexChanged="GridViewMenu_SelectedIndexChanged" DataSourceID="SqlDataSource1" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%# Eval("BookType")%>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString5 %>" SelectCommand="SELECT DISTINCT BookType FROM Books"></asp:SqlDataSource>
     
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString5 %>" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookType] = @BookType)">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="web" Name="BookType" QueryStringField="Category" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString5 %>" SelectCommand="SELECT DISTINCT [BookType] FROM [Books]"></asp:SqlDataSource>
            </td>
            <td>
     
    <asp:GridView ID="GridViewMenu2" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridViewMenu2_SelectedIndexChanged" meta:resourcekey="GridViewMenu2Resource1" style="color: #990000" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style13">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="Книга номер" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="BookType" HeaderText="Тип" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="BookTitle" HeaderText="Заглавие" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="BookAuthor" HeaderText="Автор" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
            <asp:CommandField SelectText="Виж детайли за книгата" ShowSelectButton="True" meta:resourcekey="CommandFieldResource1" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Label ID="lblSearch" runat="server" Text="Търсене:" meta:resourcekey="lblSearchResource1" style="color: #990000; font-weight: 700"></asp:Label>
    &nbsp;&nbsp;<asp:TextBox ID="txtSearch" runat="server" Width="161px" meta:resourcekey="txtSearchResource1" CssClass="auto-style12"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSearch" runat="server" BackColor="White" OnClick="btnSearch_Click" PostBackUrl="~/Menu.aspx" Text="Търси" Width="100px" meta:resourcekey="btnSearchResource1" style="color: #000000" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <%-- <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIO.MDFConnectionString %>" SelectCommand="SELECT [BookTypeName] FROM [Books]"></asp:SqlDataSource>--%>
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="#990000" style="font-weight: 700;" Text="Кошница:" meta:resourcekey="Label1Resource1"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BookPictures/cart.jpg" PostBackUrl="~/Koshnica.aspx" Width="33px" meta:resourcekey="ImageButton1Resource1" Height="26px" style="margin-left: 16px; margin-top: 0px" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
</asp:Content>
