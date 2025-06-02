<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IEdit.aspx.cs" Inherits="Sale_Book.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table style="width:100%;" class="text-center">
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ma_sach" DataSourceID="VSach" Width="682px" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="ma_sach" HeaderText="Mã sách" InsertVisible="False" ReadOnly="True" SortExpression="ma_sach" />
                        <asp:BoundField DataField="ten_sach" HeaderText="Tên sách" SortExpression="ten_sach" />
                        <asp:BoundField DataField="don_gia" HeaderText="Đơn giá" SortExpression="don_gia" />
                        <asp:BoundField DataField="don_vi_tinh" HeaderText="Đơn vị tính" SortExpression="don_vi_tinh" />
                        <asp:BoundField DataField="ten_tac_gia" HeaderText="Tên tác giả" SortExpression="ten_tac_gia" />
                        
                        <asp:TemplateField>
                            <ItemTemplate>
                                <img src="Upload/<%# Eval("hinh") %>" alt="img" height="100" width="70"></img>
                            </ItemTemplate>
                           
                        </asp:TemplateField>

                        <asp:BoundField DataField="ten_the_loai" HeaderText="Thể loại" SortExpression="ten_the_loai" />
                        <asp:BoundField DataField="ten_nxb" HeaderText="Nhà xuất bản" SortExpression="ten_nxb" />
                        <asp:ButtonField CommandName="del" Text="Xóa" />
                        
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="VSach" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT Sach.ma_sach, Sach.ten_sach, Sach.don_gia, Sach.don_vi_tinh, Sach.noi_dung_tt, Sach.ten_tac_gia, Sach.hinh, The_loai.ten_the_loai, Nxb.ten_nxb FROM Sach INNER JOIN The_loai ON Sach.ma_the_loai = The_loai.ma_the_loai INNER JOIN Nxb ON Sach.ma_nxb = Nxb.ma_nxb" DeleteCommand="DELETE FROM Sach WHERE (ma_sach = @ms)">
                    <DeleteParameters>
                        <asp:Parameter Name="ms" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Tên sách"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_tensach" runat="server" Width="256px" CssClass="active"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Đơn giá"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_dongia" runat="server" Width="255px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Đơn vị tính</td>
            <td>
                <asp:TextBox ID="txt_donvitinh" runat="server" Width="255px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Thể loại"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddl_theloai" runat="server" DataSourceID="TheloaiDataS" DataTextField="ten_the_loai" DataValueField="ma_the_loai">
                </asp:DropDownList>
                <asp:Button ID="btn_addtheloai" runat="server" Text="Quản lý thể loại" PostBackUrl="~/Addtheloai.aspx" CssClass="btn btn-info" />
                <asp:SqlDataSource ID="TheloaiDataS" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT * FROM [The_loai]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Tác giả"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_tacgia" runat="server" Width="259px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Nhà xuất bản"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddl_nxb" runat="server" DataSourceID="nxbDataS" DataTextField="ten_nxb" DataValueField="ma_nxb">
                </asp:DropDownList>
                <asp:Button ID="btn_addnxb" runat="server" Text="Quản lý nhà xuất bản" OnClick="btn_addnxb_Click" PostBackUrl="~/Addnxb.aspx" CssClass="btn btn-info" />
                <asp:SqlDataSource ID="nxbDataS" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" SelectCommand="SELECT ma_nxb, ten_nxb FROM Nxb"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                Nội dung</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Hình minh họa</td>
            <td>
                <asp:FileUpload ID="chonhinh" runat="server" Width="409px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_rs" runat="server" Text="Mới" CssClass="btn btn-info" />
            </td>
            <td>
                <asp:Button ID="btn_luu" runat="server" Text="Lưu" OnClick="btn_luu_Click" CssClass="btn btn-info" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="ISach" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" InsertCommand="INSERT INTO Sach(ten_sach, ma_the_loai, ma_nxb, ten_tac_gia, noi_dung_tt, hinh, don_vi_tinh, don_gia) VALUES (@tensach, @theloai, @nxb, @tacgia, @noidung, @hinh, @donvi, @dongia)" ProviderName="<%$ ConnectionStrings:Sale_bookConnectionString.ProviderName %>">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="ddl_theloai" Name="theloai" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="txt_tacgia" Name="tacgia" PropertyName="Text" />
                        <asp:ControlParameter ControlID="ddl_nxb" Name="nxb" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="noidung" PropertyName="Text" />
                        <asp:ControlParameter ControlID="chonhinh" Name="hinh" PropertyName="FileName" />
                        <asp:ControlParameter ControlID="txt_donvitinh" Name="donvi" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_dongia" Name="dongia" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txt_tensach" Name="tensach" PropertyName="Text" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
