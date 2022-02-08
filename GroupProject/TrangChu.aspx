<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="GroupProject.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
               <div class="slider">
            <div class="slider__background">

                    <img class="mySlides" src="./images/slider1-1.jpg" style=" width:100% ">
                    <img class="mySlides" src="./images/slider2-2.jpg" style="width:100%">
                    <img class="mySlides" src="./images/slider3-3.jpg" style="width:100%">

                   <script>
                                           var myIndex = 0;
                            carousel();
        
                            function carousel() {
                              var i;
                              var x = document.getElementsByClassName("mySlides");
                              for (i = 0; i < x.length; i++) {
                                x[i].style.display = "none";  
                              }
                              myIndex++;
                              if (myIndex > x.length) {myIndex = 1}    
                              x[myIndex-1].style.display = "block";  
                              setTimeout(carousel, 2000); // Change image every 2 seconds
                                                   }
 
                       


                   </script>
                  
            </div>
            <img id="sld"class="" src="./images/cong.png" style="width:100% ">
          
       </div>
       <div id="our">
                <ul class="our__header">
                    <li class="our__item__list-header our__item__list">
                        Về chúng tôi
                    </li>
                    <li class="our__item__list-detail our__item__list">
                        CUỘC HÀNH TRÌNH CỦA CHÚNG TÔI
                    </li>
                  
                </ul>

            


                <div class="our__container">
                    <div class="our__container__header">
                            <h2>Hệ thống nhà hàng</h2>
                            <p>“Thai Market Delicious food Cooked With Lots Of Love and Care”</p>
                    </div>
                  
                </div>

                <div class="our__location">
                    <div class="location-list">
                       
                       
                        <img src="./images/img_location/534x600thai-market-17-le-hong-phong-1566188994.jpg" alt="">

                    
                        <div class="location-list__title">
                         
                                <h3 > FOOD THAI 04 TRần QUỐC TOÃN</h3>
                                <p>04 Trần Quốc Toãn</p>
    
                       
                         

                        </div>
                    </div>
                    <div class="location-list">
                       
                       
                        <img src="./images/img_location/534x600thai-market-183-nguyen-van-thoai-1566188666.jpg" alt="">

                      
                        <div class="location-list__title">
                          
                                <h3 > FOOD THAI 06 NGUYỄN VĂN LINH </h3>
                                <p>06 Nguyễn Văn Linh</p>
                         
                           

                        </div>
                    </div>
                    <div class="location-list">
                       
                       
                        <img src="./images/img_location/534x600thai-market-1-1559404158.png" alt="">

                    
                    
                        <div class="location-list__title">
                           
                                <h3 > FOOD THAI 43 BÌNH MINH 5 </h3>
                                <p>43 Bình Minh 5</p>
                         
                          
                                
                        </div>
                    </div>   
                             
                    </div>
                 
                      
            
                 <img id="banner"src="./images/baner_img.jpg" alt="" class="img-banner">   


                  
                </div>

        <div id="menu">
            <div class="menu__title">
                <h3>Thực Đơn</h3>
                <h5 class="">CÁC MÓN LÀM NÊN THƯƠNG HIỆU CỦA CHÚNG TÔI</h5>
                
            </div>
            <div class="menu__container">

                <form onsubmit="return false">

                 
                <button id="modal1" onclick="monkhaivi()">Món Khai Vị</button>
                <button  id="modal" onclick="monchinh()">Món Chính</button>
                <button id="modal2" onclick="douong()">Đồ Uống</button>
                <button id="modal3" onclick="monchienxao()">Món Chiên Xào</button> 
                            </form>
              <div class="menu__container-list">
                  <div class="menu__container-item">
                      <p id="mon1">  1. Cơm Chiên (150.000 VND) </p>
                      <p id="mon2"> 2. Gỏi Trộn (100.000 VND)</p>
                      <p id="mon3">  3. Beer (10.000 VND)</p>
  
                  </div>
                  <div class="menu__container-item">
                      <p id="mon4">  4. Gà Chiên (150.000 VND) </p>
                      <p id="mon5"> 5. Nước Suối (10.000 VND)</p>
                      <p id="mon6">  6. Ghẹ Chiên (100.000 VND)</p>
  
                  </div>
              </div>
               
                
               <script>
                   

                /* menu */
            
                        function monkhaivi() {
                          document.getElementById("mon1").innerHTML = "1. Salad Cá Ngừ(75.000VND)";
                           document.getElementById("mon2").innerHTML = "2. Gỏi Trộn(60.000VND)";
                            document.getElementById("mon3").innerHTML = "3. Súp Cua(70.000VND)";
                            document.getElementById("mon4").innerHTML = "4. Salad Gà(75.000VND)";
                           document.getElementById("mon5").innerHTML = "5. Gỏi Sứa(60.000VND)";
                            document.getElementById("mon6").innerHTML = "7 .Súp Gà(70.000VND)";
                        }
                        function monchinh() {
                          document.getElementById("mon1").innerHTML = "1 .Mì Ý (150.000VND) ";
                           document.getElementById("mon2").innerHTML = "2 .Pasta(140.000VND)";
                            document.getElementById("mon3").innerHTML = "3 .Gỏi Thailan(150.000VND)";
                            document.getElementById("mon4").innerHTML = "4 .Cơm Dương Châu(75.000VND)";
                           document.getElementById("mon5").innerHTML = "5 .Mì Xào(60.000VND)";
                            document.getElementById("mon6").innerHTML = "6 .Gà Luộc (70.000VND)";
                        }
                        function douong() {
                          document.getElementById("mon1").innerHTML = "1 .Coca (10.000VND)";
                           document.getElementById("mon2").innerHTML = "2 .Beer (10.000VND)";
                            document.getElementById("mon3").innerHTML = "3 .Nước suối (10.000VND)";
                            document.getElementById("mon4").innerHTML = "4 .Trà Sữa (15.000VND)";
                           document.getElementById("mon5").innerHTML = "5 .Cafe(20.000VND)";
                            document.getElementById("mon6").innerHTML = "6 .Nước Ép Táo (50.000VND)";
                        }
                        function monchienxao(){
                          document.getElementById("mon1").innerHTML = "1 .Rau Cải Xào (100.000VND)";
                           document.getElementById("mon2").innerHTML = "2 .Gà Chiên (120.000VND)";
                            document.getElementById("mon3").innerHTML = "3 .Cơm Chiên (110.000VND)";
                            document.getElementById("mon4").innerHTML = "4 .Bò Chiên (85.000VND)";
                           document.getElementById("mon5").innerHTML = "5 .Chân Gà Chiên(60.000VND)";
                            document.getElementById("mon6").innerHTML = "6 .Cá Chiên (70.000VND)";
                   }
                  
                           document.querySelector('#modal').addEventListener('click', function(event) {
                            event.preventDefault();
                    });
                    document.querySelector('#modal1').addEventListener('click', function(event) {
                            event.preventDefault();
                    });
                    document.querySelector('#modal2').addEventListener('click', function(event) {
                            event.preventDefault();
                    });
                    document.querySelector('#modal3').addEventListener('click', function(event) {
                            event.preventDefault();
                                             })  ;
               </script>
                
            
            </div>
            <div class="menu__images">

                <div class="menu__images-list">
                    <div class="">
                        <img src="./images/400x3205-1564734339.jpg" alt="" class="menu__images-item">
                    </div>
                  <div>

                      <img src="./images/400x3206-1564734350.jpg" alt="" class="menu__images-item">
                  </div>
                  <div>

                      <img src="./images/400x3207-1564733179.jpg" alt="" class="menu__images-item">
                  </div>
                  <div>

                      <img src="./images/400x3207-1564734367.jpg" alt="" class="menu__images-item">
                  </div>
                   
                </div>
    
                <div class="menu__images-list">
                    <div>

                        <img src="./images/400x3208-1564734379.jpg" alt="" class="menu__images-item">
                    </div>
                    <div>

                        <img src="./images/400x320com-chien-trai-thom-1566468586.jpg" alt="" class="menu__images-item">
                    </div>
                    <div>

                        <img src="./images/400x320soi-79-1566468908.jpg" alt="" class="menu__images-item">
                    </div>
                    <div>

                        <img src="./images/400x3207-1564733179.jpg" alt="" class="menu__images-item">
                    </div>
                    <div class=""id="linkcontact"></div>
                </div>
               
            </div>
            
        </div>
        <div id="contact">
            <div class="contact-main">
                <h3 class="title">
                    Liên hệ
                </h3>
                <p class="detail">
                    “NHỮNG MÓN ĂN NGON TUYỆT ĐƯỢC NẤU TỪ RẤT NHIỀU  YÊU  THƯƠNG VÀ 
                </br> TÂM  HUYẾT”
                </p>
                <ul class="adress">
                    <div class="address__list">
                        <li class="address__list__item">
                            <i class="far fa-clock"></i>
                            10:00 am To 22:00 pm
                        </li>
                        <li class="address__list__item">
                            <i class="far fa-envelope"></i>
                            thaimarketrestaurant@gmail.com
                        </li>
                    </div>
                    <div class="address__list">
                        <li class="address__list__item">
                            <i class="fas fa-phone-alt"></i>
                            + 84 934 72 74 72
                        </li>
                        <li class="address__list__item">
                            <i class="fas fa-globe-americas"></i>
                            www.thaimarket.vn
                        </li>
                    </div>

                    <table action=""  id="form-contact">
                        <asp:TextBox ID="txt_hoten" placeholder="Họ Tên" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txt_hoten" Display="Dynamic" ErrorMessage="Không để trống bắt buộc">*</asp:RequiredFieldValidator>  
                    </br>
                        <asp:TextBox ID="txt_email"  placeholder="Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="Không để trống bắt buộc">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="Email không đúng định dạng"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-]\w+)*">@</asp:RegularExpressionValidator>
                    </br>
                      <asp:TextBox ID="txt_title" placeholder="Tiêu Đề" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ControlToValidate="txt_title" Display="Dynamic" ErrorMessage="Không để trống bắt buộc">*</asp:RequiredFieldValidator>  
                    </br>
                       
                        <asp:TextBox ID="txt_nd" style="height:120px"  placeholder="Nội dung" runat="server"></asp:TextBox>              
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
            ControlToValidate="txt_nd" Display="Dynamic" ErrorMessage="Không để trống bắt buộc">*</asp:RequiredFieldValidator>  
                 
                   </br>
                      
                     
                            <asp:Button ID="btn_gui" CssClass="btn-submit" Width="40px" runat="server" Text="GỬI" OnClick="btn_gui_Click" />
                        </br>
                        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" HeaderText="Vui lòng khắc
phục các lỗi sau" ShowMessageBox="True" />
                        </br>
                       <asp:Label ID="Label3" runat="server" Text="" ></asp:Label>
                      </table>   
                     </ul>
            </div>
                   
                 <div class="form-gridview">
                         <asp:GridView ID="GridView1" runat="server" Width="228px"></asp:GridView>
                         
                 </div>


              <div class="contact-last" style="transform: translateY(38px);">
                <img src="./images/cong1.png" style="width: 1520px; transform: translateY(41px);" alt="">
             </div>
             </div>

        </div>

      <footer id="footer">
            <div class="footer-list">
                <h3 class="footer-item title">Liên hệ với chúng tôi</h3>
                <p class="footer-item detil">Bạn muốn tham gia cùng chúng tôi trên mạng xã hội</p>
                <ul class=" footer-item footer-icon">
                    <i class="fab fa-facebook"></i>
                    <i class="fab fa-youtube"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-google-plus-g"></i>
                </ul>
                <p class="footer-item author">
                    Copyright© 2019
                       Thai Market All rights reserved.
                </p>
            </div>

            <div class="footer-list">
                <img src="./images/logo.png" alt="" class=" footer-item footer-logo">
            </div>

            <div class="footer-list ">
                <h3 class="title footer-item">Nhận đăng ký bản tin</h3>
                <p class="detil footer-item">Nhận đăng ký bản tin từ chúng tôi</p>
                <div class="footer-form footer-item">
                    <input type="text" placeholder="Email...">
                    <button><i class="fas fa-long-arrow-alt-right"></i></button>

                </div>
                <p class="author flooter-item">Designed and Maintained by </p>
            </div>

        </footer>
       
    
</asp:Content>
