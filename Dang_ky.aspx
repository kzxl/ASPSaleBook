<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dang_ky.aspx.cs" Inherits="Sale_Book.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>--%>
<center>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF3300" 
            Text="ĐĂNG KÝ TÀI KHOẢN MỚI"></asp:Label>
    <br />
    <table cellpadding="3" cellspacing="0" class="alert-info">
        <tr>
            <td style="text-align: right; padding-right: 8px; width: 50%">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Họ và Tên"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 8px">
                <asp:TextBox ID="txthoten" runat="server" OnTextChanged="txthoten_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txthoten" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 8px; width: 50%">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Ngày Sinh"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 8px">
                
                <asp:TextBox ID="txtngaysinh" runat="server" TextMode="DateTime" CssClass="" OnTextChanged="txtngaysinh_TextChanged"></asp:TextBox>
                   
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtngaysinh" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 8px; width: 50%">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Giới Tính"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 8px">
                <asp:TextBox ID="txtgioitinh" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtgioitinh" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 8px; width: 50%">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Địa Chỉ"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 8px">
                <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtdiachi" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 8px; width: 50%">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Điện Thoại"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 8px">
                <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtsdt" Display="Dynamic" ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 8px; width: 50%">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Email"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 8px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Sai Đinh Dạng Email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 8px; width: 50%">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Tên Đăng Nhập"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 8px">
                <asp:TextBox ID="txttendn" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txttendn" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 8px; width: 50%">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Mật Khẩu"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 8px">
                <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtmatkhau" Display="Dynamic" 
                        ErrorMessage="Không Được Đặt PassWord Rỗng">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 8px; width: 50%">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" 
                        Text="Nhập Lại Mật Khẩu"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 8px">
                <asp:TextBox ID="txtnhaplaimk" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplaimk" 
                        Display="Dynamic" ErrorMessage="Xác Nhận Password Không Đúng">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtnhaplaimk" ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <asp:ImageButton ID="imgbtndangky" runat="server" 
                        ImageUrl="~/images/dangky.png" onclick="imgbtndangky_Click"  Height="45px" Width="140px"/>
                <br />
                <asp:Label ID="lblthongbao" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <asp:SqlDataSource ID="KHAddDS" runat="server" ConnectionString="<%$ ConnectionStrings:Sale_bookConnectionString %>" InsertCommand="INSERT INTO Khach_hang(ten_khach_hang, dia_chi, dien_thoai, ten_dn, mat_khau, ngay_sinh, gioi_tinh, email, quyen) VALUES (@ten, @dc, @dt, @tdn, @mk, @ns, @gt, @email, '2')" ProviderName="<%$ ConnectionStrings:Sale_bookConnectionString.ProviderName %>">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txthoten" Name="ten" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtdiachi" Name="dc" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtsdt" Name="dt" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txttendn" Name="tdn" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtmatkhau" Name="mk" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtngaysinh" Name="ns" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtgioitinh" Name="gt" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtemail" Name="email" PropertyName="Text" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</center>
</asp:Content>
