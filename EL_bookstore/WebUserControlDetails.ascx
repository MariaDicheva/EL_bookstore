<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlDetails.ascx.cs" Inherits="EL_bookstore.WebUserControlDetails" %>
<style type="text/css">
    .auto-style1 {
        height: 23px;
    }
    .auto-style2 {
        height: 23px;
        width: 249px;
    }
    .auto-style3 {
        width: 249px;
    }
</style>

<table style="width: 100%; font-weight: 700;">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="LblBookID" runat="server" Text="Kнига N:"></asp:Label>
        </td>
        <td class="auto-style1">
            <img alt="" src="" style="width: 83px; margin-left: 0px" /></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblBookTitle" runat="server" Text="Заглавие:"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblBookPRICE" runat="server" Text="Цена:"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblBookQuantity" runat="server" Text="Количество:"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblAmount" runat="server" Text="Сума:"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Отбележете за купуване" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

