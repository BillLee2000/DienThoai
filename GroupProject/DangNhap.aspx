<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="GroupProject.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="css_dangki_dangnhap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="main">
                        <div class="sign-up">
                             <h2 style="color:#9FDEAF;font-size:50px;margin-top:40px; height: 0px; width: 258px;" > Sign Up</h2>
                        </div>
                       
                    <asp:TextBox ID="txt_taikhoan" CssClass="input" placeholder="Username" runat="server" Width="432px" ></asp:TextBox>       
                    <div class="matkhau" style="margin-top:20px">
            
                        <asp:TextBox ID="txt_matkhau" CssClass="input" placeholder="password" runat="server" Width="435px"></asp:TextBox>
                   </div>     
                   <p>           
                       <asp:Button ID="btn_login"  runat="server" Text="Login" BackColor="#9FDEAF"    OnClick="btn_login_Click" Height="34px" Width="157px" CssClass="btn" />
                        <asp:Button ID="Button1"  runat="server" Text="Register" BackColor="#9FDEAF"  OnClick="Button1_Click" Height="33px" Width="157px" CssClass="btn" />      
                       <div class="group">
					            <input id="check" type="checkbox" class="check" checked>
					            <label for="check" cssClass="lb-check"><span class="icon"></span> Keep me Signed in</label>
				            </div>
                    </p>          
                    <asp:Label CssClass="Label" style=" margin-left:170px"   ID="Label4" runat="server" ForeColor="#CC0000"></asp:Label>
                   
        </div>
    </form>
</body>
</html>
