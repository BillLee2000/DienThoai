<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChiTietDatHang.aspx.cs" Inherits="GroupProject.ChiTietDatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="padding:200px 20px">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <asp:Panel ID="Panel1" runat="server" Height="195px" GroupingText='<%# Eval("FoodName") %>' style="margin: 30px">
                    <table style="height: 193px">
                        <tr>
                            <td rowspan="2">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="153px" Width="224px" ImageUrl='<%# Eval("FoodImage","~/images/food/{0}") %>' />

                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# String.Format(new System.Globalization.CultureInfo("vi-VN"), "{0:C}", DataBinder.Eval(Container.DataItem, "UnitPrice")) %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span>Số lượng: </span>
                                <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                                <asp:Button ID="btnMua" runat="server" Text="Mua" CommandArgument='<%# Eval("FoodID") %>' OnClick="btnMua_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:LinkButton ID="btnGioHang" runat="server" style="color: black" OnClick="btnGioHang_Click">Giỏ Hàng</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
