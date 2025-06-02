<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tacgia.aspx.cs" Inherits="Sale_Book.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ma_sach" DataSourceID="TacgiaDS" RepeatColumns="4" RepeatDirection="Horizontal">
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
    <asp:SqlDataSource ID="TacgiaDS" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT hinh, ten_sach, don_gia, ma_sach, ten_tac_gia, don_vi_tinh FROM Sach WHERE (ten_tac_gia = @tacgia)">
        <SelectParameters>
            <asp:QueryStringParameter Name="tacgia" QueryStringField="code" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
