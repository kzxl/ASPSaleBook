<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gio_Hang.aspx.cs" Inherits="Sale_Book.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Tổng Số Sách: " 
            Font-Size="14pt" ForeColor="#009933"></asp:Label>
    <asp:Label ID="lbltongsach" runat="server" Font-Bold="True" Font-Size="14pt" 
            ForeColor="#FF9900"></asp:Label>
        <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Tổng Tiền: " 
            Font-Size="14pt" ForeColor="#009933"></asp:Label>
    <asp:Label ID="lbltongtien" runat="server" Font-Bold="True" Font-Size="14pt" 
            ForeColor="#FF9900"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand" AllowPaging="True" AllowSorting="True" DataSourceID="GiohangDS">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="ma_sach" HeaderText="Mã sách" InsertVisible="False" ReadOnly="True" SortExpression="ma_sach" />
            <asp:BoundField DataField="ten_sach" HeaderText="Tên sách" SortExpression="ten_sach" />
            <asp:BoundField DataField="don_gia" HeaderText="Đơn giá" 
                    SortExpression="don_gia" />
            <asp:BoundField DataField="ngay_mua" HeaderText="Ngày mua" 
                    SortExpression="ngay_mua" />
            <asp:ButtonField CommandName="del" Text="Xóa" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="GiohangDS" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT Sach.ten_sach, Sach.don_gia, Hoa_don.ngay_mua, Khach_hang.ten_dn, Sach.ma_sach FROM Hoa_don INNER JOIN Khach_hang ON Hoa_don.ma_khach_hang = Khach_hang.ma_khach_hang INNER JOIN Sach ON Hoa_don.ma_sach = Sach.ma_sach WHERE (Khach_hang.ten_dn = @input)" InsertCommand="INSERT INTO Hoa_don(ma_khach_hang, ma_sach, ngay_mua) VALUES (@mkh, @ms, @nm)">
        <InsertParameters>
            <asp:SessionParameter Name="mkh" SessionField="makhach" />
            <asp:SessionParameter Name="ms" SessionField="masach" />
            <asp:SessionParameter Name="nm" SessionField="ngay" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="input" SessionField="username" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="MakhachDS" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT [ma_khach_hang], [ten_dn] FROM [Khach_hang] WHERE ([ten_dn] = @ten_dn)">
        <SelectParameters>
            <asp:SessionParameter Name="ten_dn" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="lblthongbao" runat="server" ForeColor="#FF3300"></asp:Label>
</center>
</asp:Content>
