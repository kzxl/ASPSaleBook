<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dang_Nhap_KH.aspx.cs" Inherits="Sale_Book.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>--%>
<center>
    <table cellpadding="5" cellspacing="0" class="alert-info">
        <tr>
            <td class="style3" colspan="2" style="text-align: center">Vui lòng nhập Tên đăng nhập và mật khẩu để đăng nhập</td>
        </tr>
        <tr>
            <td style="text-align: right"><b>Tên đăng nhập</b></td>
            <td style="text-align: left; padding-top: 4px; padding-bottom: 4px;">&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuser" ErrorMessage="Không được để trống tên đăng nhập">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right"><b>&nbsp;&nbsp; Mật khẩu</b></td>
            <td style="text-align: left; width: 50%;">&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Không được để trống mật khẩu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding-top: 4px; padding-bottom: 4px">&nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: left">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                    ImageUrl="~/images/dangnhap.png" onclick="ImageButton1_Click" Width="102px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</center>
</asp:Content>
