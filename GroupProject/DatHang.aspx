<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DatHang.aspx.cs" Inherits="GroupProject.DatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="padding: 200px 20px">
        <span>Lọc theo loại: </span>
        <asp:DropDownList ID="DropDownListCategories" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListCategories_SelectedIndexChanged">
        </asp:DropDownList>
        <div>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%">
                <ItemTemplate>
                    <asp:Panel ID="Panel1" runat="server" Height="195px" GroupingText='<%# Eval("FoodName") %>' Style="margin: 30px" CssClass="food-item">
                        <table style="height: 193px">
                            <tr>
                                <td colspan="2">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="153px" Width="224px" ImageUrl='<%# Eval("FoodImage","~/images/food/{0}") %>' />
                               </td>
                               <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# String.Format(new System.Globalization.CultureInfo("vi-VN"), "{0:C}", DataBinder.Eval(Container.DataItem, "UnitPrice")) %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:LinkButton ID="btnChonMua" runat="server" CommandArgument='<%# Eval("FoodID") %>' Style="color: black" OnClick="btnChonMua_Click">Chọn mua</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    
</asp:Content>
