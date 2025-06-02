<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login_Success.aspx.cs" Inherits="Sale_Book.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-center text-info">
        <span class="style2">Đang Chuyển hướng....</span><br />
        <span class="style3">Vui lòng đợi&nbsp;</span></p>
<p class="text-center text-info">
        <span class="style3">
        <asp:Label ID="lblInfo" runat="server" Text=" "></asp:Label>
        <br />
        </span>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="13pt" NavigateUrl="~/Index.aspx">Về Trang Chủ</asp:HyperLink>
    </p>
</asp:Content>
