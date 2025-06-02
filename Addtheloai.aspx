<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Addtheloai.aspx.cs" Inherits="Sale_Book.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;" class="text-center">
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ma_the_loai" DataSourceID="DSThe_loai" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="ma_the_loai" HeaderText="Mã thể loại" InsertVisible="False" ReadOnly="True" SortExpression="ma_the_loai" />
                    <asp:BoundField DataField="ten_the_loai" HeaderText="Tên thể loại" SortExpression="ten_the_loai" />
                    <asp:ButtonField CommandName="del" Text="Xóa" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="DSThe_loai" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT [ma_the_loai], [ten_the_loai] FROM [The_loai]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="width: 214px">
            <asp:Label ID="Label2" runat="server" Text="Tên thể loại"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_tentheloai" runat="server" Width="159px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="text-center">
            <asp:Button ID="btn_rs" runat="server" CssClass="btn-info" Text="Mới" />
            &nbsp;&nbsp;
            <asp:Button ID="btn_luu" runat="server" CssClass="btn-info" Text="Lưu" OnClick="btn_luu_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="btn_pre" runat="server" CssClass="btn-info" Text="Trở về" OnClick="btn_pre_Click" PostBackUrl="~/IEdit.aspx" />
        </td>
    </tr>
    <tr>
        <td colspan="2" class="text-center">
            <asp:SqlDataSource ID="AddTheloai" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" InsertCommand="INSERT INTO The_loai(ten_the_loai) VALUES (@tentheloai)" ProviderName="<%$ ConnectionStrings:Sale_bookConnectionString.ProviderName %>">
                <InsertParameters>
                    <asp:ControlParameter ControlID="txt_tentheloai" Name="tentheloai" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
