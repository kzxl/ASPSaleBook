<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Nxb.aspx.cs" Inherits="Sale_Book.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ma_sach" DataSourceID="NxbDS" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <a href='Chitietsach.aspx?code=<%# Eval("ma_sach") %>'>
            <img src="Upload/<%# Eval("hinh") %>" alt="img" height="200" width="170"/>
            </a>
            <br />
            <asp:Label ID="ten_sachLabel" runat="server" CssClass="text-info" Text='<%# Eval("ten_sach") %>' />
            <br />
            <asp:Label ID="don_giaLabel" runat="server" Text='<%# Eval("don_gia") %>' />
            VND/
            <asp:Label ID="don_vi_tinhLabel" runat="server" Text='<%# Eval("don_vi_tinh") %>' />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="NxbDS" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT TOP (10) Sach.ten_sach, Sach.hinh, Sach.don_gia, Sach.don_vi_tinh, Sach.ma_sach, Nxb.ten_nxb, Nxb.ma_nxb FROM Sach INNER JOIN Nxb ON Sach.ma_nxb = Nxb.ma_nxb WHERE (Nxb.ma_nxb = @nxb) ORDER BY Sach.ma_sach DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="nxb" QueryStringField="code" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
