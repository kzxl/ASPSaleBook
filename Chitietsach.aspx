<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chitietsach.aspx.cs" Inherits="Sale_Book.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table cellpadding="3" cellspacing="0" class="style1">
        <tr>
            <td class="style3" colspan="2" 
                style="text-align: center; background-color: #3399FF; color: #FFFFFF; font-weight: bolder;">
                CHI TIẾT SÁCH</td>
        </tr>
        <tr>
            <td rowspan="6" 
                style="text-align: center; vertical-align: top; width: 140px; padding-top: 10px;">
                <asp:Image ID="imghinh_minh_hoa" runat="server" Height="200px" Width="170px" />
            </td>
            <td style="padding-left: 8px">
                <asp:Label ID="lblten_sach" runat="server" Font-Bold="True" Font-Size="13pt" CssClass="text-info"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <b>Tác Giả: </b>
                <asp:HyperLink ID="hpltac_gia" runat="server" 
                    NavigateUrl="">[hpltac_gia]</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <b>Thể Lọai:</b>
                <asp:HyperLink ID="hplthe_loai_sach" runat="server" 
                    NavigateUrl="">[hplthe_loai_sach]</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <b>Nhà Xuất Bản:</b>
                <asp:HyperLink ID="hplnha_xuat_ban" runat="server" 
                    NavigateUrl="">[hplnha_xuat_ban]</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <b>Đơn Giá:</b>
                <asp:Label ID="lbldon_gia" runat="server" ForeColor="#FF3300"></asp:Label>
            &nbsp;VNĐ /
                <asp:Label ID="lblcuon" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <asp:ImageButton ID="imgbtnchonmua" runat="server" 
                    ImageUrl="~/images/nut_chonmua.gif" onclick="imgbtnchonmua_Click" Width="127px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="container">
                <p class="text-left text-info"><b> Nội dung tóm tắt:</b></p>
                <br />
                <asp:Label ID="lblmo_ta" runat="server" Font-Bold="False" Font-Italic="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
