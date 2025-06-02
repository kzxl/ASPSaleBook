<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Addnxb.aspx.cs" Inherits="Sale_Book.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;" class="text-center">
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" CssClass="text-center text-info" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="DSNxb" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="ma_nxb" HeaderText="Mã nxb" InsertVisible="False" ReadOnly="True" SortExpression="ma_nxb" />
                        <asp:BoundField DataField="ten_nxb" HeaderText="Tên nxb" SortExpression="ten_nxb" />
                        <asp:ButtonField CommandName="del" Text="Xóa" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="DSNxb" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT * FROM [Nxb]" DeleteCommand="DELETE FROM Nxb WHERE (ma_nxb = @ma)">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="ma" PropertyName="SelectedIndex" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 214px">Tên nhà xuất bản<br />
            </td>
            <td>
                <asp:TextBox ID="txt_tennxb" runat="server" Width="159px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="text-center">
                <asp:Button ID="btn_rs" runat="server" CssClass="btn-info" Text="Mới" OnClick="btn_rs_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="btn_luu" runat="server" CssClass="btn-info" Text="Lưu" OnClick="btn_luu_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="btn_pre" runat="server" CssClass="btn-info" Text="Trở về" OnClick="btn_pre_Click" PostBackUrl="~/IEdit.aspx" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="text-center">
                <asp:SqlDataSource ID="Addnxb" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" InsertCommand="INSERT INTO Nxb(ten_nxb) VALUES (@a)" ProviderName="<%$ ConnectionStrings:Sale_bookConnectionString.ProviderName %>">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txt_tennxb" Name="a" PropertyName="Text" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
