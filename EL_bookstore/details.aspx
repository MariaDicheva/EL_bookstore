<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="EL_bookstore.details" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            color: #FF0000;
        }
        .auto-style9 {
            color: #CC6600;
        }
        .auto-style10 {
            color: #990000;
            text-decoration: underline;
        }
        .auto-style11 {
            text-decoration: underline;
        }
        .auto-style12 {
            text-decoration: underline;
            font-size: large;
        }
        .auto-style13 {
            color: #990000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="BookID" DataSourceID="SqlDataSource1"  ForeColor="Black" Width="314px" meta:resourcekey="FormView1Resource1" >
    <EditItemTemplate>
        BookID:
        <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabel1Resource1" />
        <br />
        BookAuthor:
        <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource1" />
        <br />
        BookTitle:
        <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource1" />
        <br />
        BookDescription:
        <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource1" />
        <br />
        BookPrice:
        <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource1" />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" meta:resourcekey="UpdateButtonResource1" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="UpdateCancelButtonResource1" />
    </EditItemTemplate>
    <InsertItemTemplate>
        BookID:
        <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' meta:resourcekey="BookIDTextBoxResource1" />
        <br />
        BookAuthor:
        <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource2" />
        <br />
        BookTitle:
        <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource2" />
        <br />
        BookDescription:
        <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource2" />
        <br />
        BookPrice:
        <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource2" />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" meta:resourcekey="InsertButtonResource1" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="InsertCancelButtonResource1" />
    </InsertItemTemplate>
    <ItemTemplate>
        <strong><span class="auto-style9"><span class="auto-style11">
        <asp:Image ID="Image1" runat="server" CssClass="auto-style7" Height="127px" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" style="text-align: center" Width="139px" />
        <br />
        <br />
        </span> &nbsp;</span></strong><asp:Label ID="BookIDLabel" runat="server" CssClass="auto-style9" meta:resourcekey="BookIDLabelResource1" Text='<%# Eval("BookID") %>' Visible="False" />
        <strong>
        <br class="auto-style7" />
        <span class="auto-style9"><span class="auto-style12">Заглавие:</span>
        <asp:Label ID="BookTitleLabel" runat="server" BorderColor="#CC9900" CssClass="auto-style13" meta:resourcekey="BookTitleLabelResource1" Text='<%# Bind("BookTitle") %>' />
        </span>
        <br />
        <br class="auto-style7" />
        </strong>
        <span class="auto-style10"><strong>Автор:</strong></span>
        <asp:Label ID="BookAuthorLabel" runat="server" CssClass="auto-style9" meta:resourcekey="BookAuthorLabelResource1" Text='<%# Bind("BookAuthor") %>' />
        <strong>
        <br />
        <br class="auto-style9" />
        <span class="auto-style10">Описание: </span>
        </strong>
        <em>
        <asp:Label ID="BookDescriptionLabel" runat="server" CssClass="auto-style9" meta:resourcekey="BookDescriptionLabelResource1" Text='<%# Bind("BookDescription") %>' />
        </em>
        <strong>
        <br />
        <br class="auto-style9" />
        <span class="auto-style9"><span class="auto-style11">Цена:</span> </span></strong>
        <asp:Label ID="BookPriceLabel" runat="server" CssClass="auto-style9" meta:resourcekey="BookPriceLabelResource1" Text='<%# Bind("BookPrice") %>' />
        <strong>
        <br />
        </strong>
        <asp:Label ID="LblQty" runat="server" Text='Количество:' style="font-weight: 700; text-decoration: underline;" meta:resourcekey="LblQtyResource1" CssClass="auto-style9" />
        &nbsp;<asp:TextBox ID="TextBoxQty" runat="server" meta:resourcekey="TextBoxQtyResource1" Height="19px" style="margin-top: 3px" Width="94px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ButtonKoshnica" runat="server" BackColor="White" Text="Добавете в кошнцата" Width="288px" OnClick="Button1_Click" meta:resourcekey="ButtonKoshnicaResource1" style="color: #990000; background-color: #FF9966; font-weight: 700;" Height="31px" />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Menu.aspx" meta:resourcekey="LinkButton1Resource1">Назад</asp:LinkButton>
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString5 %>" SelectCommand="SELECT [BookID], [BookAuthor], [BookTitle], [BookDescription], [BookPrice] FROM [Books] WHERE ([BookID] = @BookID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="BookID" QueryStringField="BookID" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <asp:Label ID="Label" runat="server" Text="" meta:resourcekey="LabelResource2"></asp:Label>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
