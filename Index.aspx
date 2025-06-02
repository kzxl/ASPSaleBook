<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Sale_Book._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <table style="width:100%;">
            <tr>
                <td class="container ">
                    <table style="width:100%;">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="VListB" RepeatColumns="4" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <center>
                            <a href="Chitietsach.aspx?code=<%#Eval("ma_sach") %>"><img src="Upload/<%# Eval("hinh") %>" alt="img" height="200" width="170" />
                            </a>
                                <br />
                            
                            <br />
                            
                            <asp:Label ID="ten_sachLabel" runat="server" CssClass="alert-info" Text='<%# Eval("ten_sach") %>' />
                            <br />
                            <asp:Label ID="ten_tac_giaLabel" runat="server" Text='<%# Eval("ten_tac_gia") %>' />
                            <br />
                            
                           
                       
                            <br />
                            </center>
                           
                       
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            
        </table>
    </p>
    <p>
        <asp:SqlDataSource ID="VListB" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT TOP (10) Sach.ten_sach, Sach.don_gia, Sach.don_vi_tinh, Sach.noi_dung_tt, Sach.hinh, Sach.ten_tac_gia, The_loai.ten_the_loai, Nxb.ten_nxb, Sach.ma_sach FROM Sach INNER JOIN The_loai ON Sach.ma_the_loai = The_loai.ma_the_loai INNER JOIN Nxb ON Sach.ma_nxb = Nxb.ma_nxb ORDER BY Sach.ma_sach DESC"></asp:SqlDataSource>
    </p>

</asp:Content>
