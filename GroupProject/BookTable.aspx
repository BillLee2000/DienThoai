
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookTable.aspx.cs" Inherits="GroupProject.BookTable" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="css_dangki_dangnhap.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <link href="main.css" rel="stylesheet" />
    <link href="base.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 163px;
        }
        .auto-style2 {
            height: 0px;
            width: 258px;
        }
    </style>

</head>
<body>
    <form id="form1"  runat="server">

              <header id="header" style="margin-top:-176px">
            <div class="search">
                <ul class="search-contact">
                    <li class="search-contact__item ">
                        <i class="fas fa-phone"></i>
                        <p>+ 84 934 72 74 72</p>
                    </li>
                    <li class="search-contact__item">
                        <i class="fas fa-envelope-square">
                        </i>
                        <p>DTU@gmail.com</p>
                    </li>

                </ul>
                <div class="search-icon">

        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/DangNhap.aspx">      <i class="fas fa-user-alt"></i> </asp:HyperLink>
          
                </div>
            </div>
            <div class="nav">
                <ul class="nav-list">
                    <li class="nav-list__item">
                        
                          <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/TrangChu.aspx#banner">THỰC ĐƠN</asp:HyperLink> 
                    </li>
                    <li class="nav-list__item">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/KhuyenMai.aspx">KHUYẾN MÃI</asp:HyperLink>
                       
                    </li>
                    <li class="nav-list__item">
                          <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/TrangChu.aspx#our">VỀ CHÚNG TÔI</asp:HyperLink>
                        
                    </li>
                    <li class="nav-list__item nav-list__item-logo">
                       
                               <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/TrangChu.aspx">



                                    <img src="./images/logo.png" alt="Alternate Text" />
                               </asp:HyperLink>
                           
                        
                    </li>

                      <li class="nav-list__item">
                        <a href="#">ĐẶT HÀNG</a>
                    </li>
                 
                    <li class="nav-list__item">
                          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/TrangChu.aspx#linkcontact">LIÊN HỆ</asp:HyperLink>
                        
                    </li>
                    <li class="nav-list__item">
                        <a href="#">ĐẶT BÀN</a>
                    </li>
                </ul>
            </div>
        </header>

        <div class="main">
            <div class="dk">


                 <div class="sign-up">
                             <h2 style="color:#9FDEAF;font-size:50px;margin-top:40px; transform: translateX(-30px); " class="auto-style2" > Reservation </h2>
                        </div> 

        <table align="center" cellpadding="5"   >
   
              <tr>    
                  <td class="auto-style1"></td>
                  <td>
                      <asp:TextBox ID="txttk_db" style=" transform: translateX(-66px);" CssClass="input input_bt" placeholder="Account" Font-Size="16px"  runat="server" Width="100%" padding="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txttk_db" Display="Dynamic"  ErrorMessage="Không để trống bắt buộc">*</asp:RequiredFieldValidator>                      
       </td>
 </tr>
                <tr>
 <td class="auto-style1">
 </td>
 <td>
                        <asp:TextBox ID="txtbd_db" style=" transform: translateX(-66px);" CssClass="input input_bt"  placeholder="Book Date" Font-Size="16px" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                         ControlToValidate="txtbd_db" Display="Dynamic" ErrorMessage="Fill Book Date">*</asp:RequiredFieldValidator>
 </td>
 </tr>
                 <tr>
 <td class="auto-style1">
 </td>
 <td>
              <asp:TextBox ID="txtpn_db" CssClass="input input_bt" style=" transform: translateX(-66px);"  placeholder="Phone number" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="txtpn_db" Display="Dynamic" ErrorMessage="Fill Phone Number">*</asp:RequiredFieldValidator>
           
 </td>
 </tr>
               <tr>    
                  <td class="auto-style1"></td>
                  <td>
                      <asp:TextBox CssClass="input input_bt"  style=" transform: translateX(-66px);"  ID="txtfn_db" placeholder="First name" runat="server" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
            ControlToValidate="txtfn_db" Display="Dynamic"  ErrorMessage="Fill First Name">.</asp:RequiredFieldValidator>                      
       </td>
 </tr>
                 <tr>    
                  <td class="auto-style1"></td>
                  <td>
                      <asp:TextBox CssClass="input input_bt"  style=" transform: translateX(-66px);" ID="txtln_db" placeholder="Last name" runat="server" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
            ControlToValidate="txtln_db" Display="Dynamic"  ErrorMessage="Fill Last Name">.</asp:RequiredFieldValidator>                      
       </td>
 </tr>
                    <tr>
 <td class="auto-style1">
 </td>
 <td>
              <asp:TextBox CssClass="input input_bt" ID="txtq_db" style=" transform: translateX(-66px);"  placeholder="Quantily" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="txtq_db" Display="Dynamic" ErrorMessage="Fill Quantily">*</asp:RequiredFieldValidator>
           
 </td>
 </tr>
                <tr>
 <td class="auto-style1">
</td>
 <td>
                    <asp:TextBox CssClass="input input_bt" ID="txtn_db" style=" transform: translateX(-66px);" placeholder="Note" runat="server" Width="100%"></asp:TextBox>
                
 </td>
 </tr>
                 <tr>
 <td class="auto-style1">
 </td>
 <td>
                    <asp:TextBox ID="txtMaBM" style=" transform: translateX(-66px);" placeholder="ID" CssClass="input input_bt" runat="server" Width="47%"></asp:TextBox>
                    <asp:Label ID="lblMaBM" runat="server" Font-Bold="True" Font-Size="Larger"
                     ForeColor="Red" CssClass="id-sc"></asp:Label>
 </td>
 <td>
                    <asp:CustomValidator ID="MaBM" runat="server" ControlToValidate="txtMaBM"
                    Display="Dynamic" ErrorMessage="Nhập không đúng mã bảo mật !"
                    validateEmptyText="True" OnServerValidate="valCaptcha_ServerValidate"></asp:CustomValidator>
 </td>
 </tr>
                 <tr class="btn-db">
 <td class="auto-style1">
 <asp:Button ID="btnDatBan" style=" transform: translateX(80px);" CssClass="btn btn-dk btn-db" runat="server" Text="Book"  BackColor="#99ffcc"  Font-Bold="True" ForeColor="Black" Height="34px" Width="155px" OnClick="btnDatBan_Click" />
                     </td>
 <td>
 <asp:Button ID="btnhuy" CssClass="btn btn-dk"   style=" transform: translateX(70px);" runat="server" Text="Cancel"  BackColor="#99ffcc"  Font-Bold="True" ForeColor="Black" Height="34px" Width="168px" OnClick="btnhuy_Click"  />
     </td>
 </tr>
                           <tr>
 <td class="auto-style1">
     &nbsp;</td>
 <td>
     &nbsp;</td>
 </tr>
                <tr>
 <td class="auto-style1">
     &nbsp;</td>
 <td>
<asp:ValidationSummary CssClass="hide" ID="ValidationSummary1" runat="server"  HeaderText="Vui lòng khắc
phục các lỗi sau" ShowMessageBox="True" BackColor="White" ForeColor="White" />
 </td>
 </tr>
                 <tr>
 <td class="auto-style1">
     &nbsp;</td>
 <td style="margin-left: 40px">
           <asp:GridView ID="GridView2" runat="server" ></asp:GridView>
        <asp:Label ID="Label_er" runat="server" ForeColor="Red"></asp:Label>
             </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>
