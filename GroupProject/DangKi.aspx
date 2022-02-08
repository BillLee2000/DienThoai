
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="GroupProject.DangKi" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="css_dangki_dangnhap.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 163px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="main">
            <div class="dk">


                <div class="sign-up">
                    <h2 style="color: #9FDEAF; font-size: 50px; margin-top: 40px; height: 0px; width: 258px;">Register </h2>
                </div>

                <table align="center" cellpadding="5">

                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox ID="txttk" CssClass="input input_dk" placeholder="Account" Font-Size="16px" runat="server" Width="100%" padding="20px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txttk" Display="Dynamic" ErrorMessage="Không để trống bắt buộc">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox ID="txtEmail" CssClass="input input_dk" placeholder="Email" Font-Size="16px" runat="server" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Không để trống bắt buộc">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email không đúng định dạng"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-]\w+)*">@</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox ID="txtsdt" CssClass="input input_dk" placeholder="Phone number" runat="server" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="txtsdt" Display="Dynamic" ErrorMessage="Nhập số điện thoại">*</asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox CssClass="input input_dk" ID="txtho" placeholder="First name" runat="server" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="txtho" Display="Dynamic" ErrorMessage="Không để trống bắt buộc">.</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox CssClass="input input_dk" ID="txtten" placeholder="Last name" runat="server" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                ControlToValidate="txtten" Display="Dynamic" ErrorMessage="Không để trống bắt buộc">.</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox CssClass="input input_dk" ID="txtmk" placeholder="Password" runat="server" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="txtmk" Display="Dynamic" ErrorMessage="Nhập mật khẩu">*</asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox CssClass="input input_dk" ID="txtXacNhanEmail" placeholder="Confirm password" runat="server" Width="100%"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtmk"
                                ControlToValidate="txtXacNhanEmail" Display="Dynamic" ErrorMessage="Xác nhận không giống
                    mật khẩu">#</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox ID="txtMaBM" placeholder="ID" CssClass="input input_dk" runat="server" Width="47%"></asp:TextBox>
                            <asp:Label ID="lblMaBM" runat="server" Font-Bold="True" Font-Size="Larger"
                                ForeColor="Red" CssClass="id-sc"></asp:Label>
                        </td>
                        <td>
                            <asp:CustomValidator ID="MaBM" runat="server" ControlToValidate="txtMaBM"
                                Display="Dynamic" ErrorMessage="Nhập không đúng mã bảo mật !"
                                ValidateEmptyText="True" OnServerValidate="valCaptcha_ServerValidate"></asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnKiemLoi" CssClass="btn btn-dk" runat="server" Text="Register" BackColor="#99ffcc" Font-Bold="True" ForeColor="Black" Height="34px" Width="157px" OnClick="btnKiemLoi_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:ValidationSummary CssClass="hide" ID="ValidationSummary1" runat="server" HeaderText="Vui lòng khắc
phục các lỗi sau"
                                ShowMessageBox="True" BackColor="White" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td style="margin-left: 40px">
                            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
