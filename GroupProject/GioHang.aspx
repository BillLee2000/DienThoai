<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="GroupProject.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="padding: 200px 20px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="FoodID" HeaderText="Mã Món Ăn" />
            <asp:BoundField DataField="FoodName" HeaderText="Tên Món Ăn" />
            <asp:BoundField DataField="Quantity" HeaderText="Số Lượng" />
            <asp:BoundField DataField="UnitPrice" HeaderText="Đơn Giá" />
            <asp:BoundField DataField="Amount" HeaderText="Thành Tiền" />
        </Columns>

    </asp:GridView>
    <asp:Label ID="lblTongTien" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
