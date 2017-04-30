<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="WebFormContact.aspx.cs" Inherits="EL_bookstore.WebFormContact" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 156px;
            color: #990000;
        }
        .auto-style7 {
            width: 18px;
        }
        .auto-style8 {
            width: 336px;
        }
        .auto-style9 {
            width: 156px;
            height: 23px;
        }
        .auto-style10 {
            width: 18px;
            height: 23px;
        }
        .auto-style11 {
            width: 156px;
            color: #990000;
            height: 47px;
            background-color: #FFCC99;
        }
        .auto-style12 {
            width: 18px;
            height: 47px;
        }
        .auto-style13 {
            height: 47px;
        }
        .auto-style14 {
            width: 156px;
            color: #990000;
            height: 53px;
            background-color: #FFCC99;
        }
        .auto-style15 {
            width: 18px;
            height: 53px;
        }
        .auto-style16 {
            height: 53px;
        }
        .auto-style17 {
            width: 156px;
            color: #990000;
            height: 23px;
            background-color: #FFCC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width:100%;">
        <tr>
            <td class="auto-style9"><strong>До:</strong></td>
            <td class="auto-style10"></td>
            <td class="auto-style5" colspan="4" style="background-color: #FFCC99">
                <asp:TextBox ID="MailTo" runat="server" meta:resourcekey="MailToResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>От:</strong></td>
            <td class="auto-style12"></td>
            <td colspan="4" class="auto-style13">
                <asp:TextBox ID="MailFrom" runat="server" meta:resourcekey="MailFromResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Относно:</strong></td>
            <td class="auto-style15"></td>
            <td colspan="4" class="auto-style16">
                <asp:TextBox ID="Subject" runat="server" meta:resourcekey="SubjectResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Запитване:</strong></td>
            <td class="auto-style7" rowspan="4">&nbsp;</td>
            <td colspan="4" rowspan="4">
                <asp:TextBox ID="Body" runat="server" Height="89px" TextMode="MultiLine" Width="360px" meta:resourcekey="BodyResource1" style="margin-right: 2px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="White" OnClick="Button1_Click" Text="Изпрати" Width="89px" meta:resourcekey="Button1Resource1" Height="39px" style="color: #990000; font-weight: 700" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="MailMsg" runat="server" BackColor="White" BorderColor="Red" ForeColor="Red" Text="[MailMsg]" meta:resourcekey="MailMsgResource1" style="color: #990000"></asp:Label>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

