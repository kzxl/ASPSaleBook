<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Theloai.aspx.cs" Inherits="Sale_Book.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="TheloaiDS" RepeatColumns="4" RepeatDirection="Horizontal">
            
            <ItemTemplate>
                <a href="Chitietsach.aspx?code=<%# Eval("ma_sach") %>">
                <img src="Upload/<%# Eval("hinh") %>" alt="img" height="200" width="170"/>
                </a> 

                <br />
                <asp:Label ID="ten_sachLabel" CssClass="text-info" runat="server" Text='<%# Eval("ten_sach") %>' />
                <br />
                <asp:Label ID="don_giaLabel" runat="server" Text='<%# Eval("don_gia") %>' />
                VND/ <asp:Label ID="don_vi_tinhLabel" runat="server" Text='<%# Eval("don_vi_tinh") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="TheloaiDS" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT TOP (10) The_loai.ten_the_loai, Sach.ten_sach, Sach.hinh, Sach.don_gia, Sach.don_vi_tinh, Sach.ma_sach, The_loai.ma_the_loai FROM The_loai INNER JOIN Sach ON The_loai.ma_the_loai = Sach.ma_the_loai WHERE (The_loai.ma_the_loai = @tl) ORDER BY Sach.ma_sach DESC">
            <SelectParameters>
                <asp:QueryStringParameter Name="tl" QueryStringField="code" />
            </SelectParameters>
</asp:SqlDataSource>
    
    </asp:Content>
