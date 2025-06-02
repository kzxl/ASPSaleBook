<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tim_kiem.aspx.cs" Inherits="Sale_Book.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>--%>
    <center>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#CC6600" 
            Text="KẾT QUẢ TÌM KIẾM"></asp:Label>
        <br />
        <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label>
        <asp      <br />
        <br />
        <hr/>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ma_sach" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
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
        ;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" 
            SelectCommand="SELECT ma_sach, ten_sach, don_gia, don_vi_tinh, hinh FROM Sach WHERE (ten_sach LIKE N'%' + @Tensach + N'%')" OnSelecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:SessionParameter Name="Tensach" SessionField="Timkiem" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
