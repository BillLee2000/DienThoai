<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GroupProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <link href="main.css" rel="stylesheet" />
    <link href="base.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header id="header">
            <div class="search">
                <ul class="search-contact">
                    <li class="search-contact__item ">
                        <i class="fas fa-phone"></i>
                        <p>+ 84 934 72 74 72</p>
                    </li>
                    <li class="search-contact__item">
                        <i class="fas fa-envelope-square"></i>
                        <p>DTU@gmail.com</p>
                    </li>

                </ul>
                <div class="search-icon">
                    <i class="fas fa-search"></i>
                </div>
            </div>
            <div class="nav">
                <ul class="nav-list">
                    <li class="nav-list__item">
                        <a href="#banner">THỰC ĐƠN</a>
                    </li>
                    <li class="nav-list__item">
                        <a href="#footer">THÔNG TIN </a>
                    </li>
                    <li class="nav-list__item">
                        <a href="#our">VỀ CHÚNG TÔI</a>
                    </li>
                    <li class="nav-list__item nav-list__item-logo">
                        <a href="#">
                            <img src="./images/logo.png" alt="Alternate Text" />
                        </a>
                    </li>
                    <li class="nav-list__item">
                        <a href="#">ĐẶT HÀNG</a>
                    </li>
                    <li class="nav-list__item">
                        <a href="#linkcontact">LIÊN HỆ</a>
                    </li>
                    <li class="nav-list__item">
                        <a href="#">ĐẶT BÀN</a>
                    </li>
                </ul>
            </div>
        </header>

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
                    <div id=discount></div>
                      
            
                 <img id="banner"src="./images/baner_img.jpg" alt="" class="img-banner">   


                  
                </div>

        <div id="menu">
            <div class="menu__title">
                <h3>Thực Đơn</h3>
                <h5 class="">CÁC MÓN LÀM NÊN THƯƠNG HIỆU CỦA CHÚNG TÔI</h5>
                
            </div>
            <div class="menu__container">

                <form onsubmit="return false">


                <button onclick="monkhaivi()">Món Khai Vị</button>
                <button id="modal" onclick="monchinh()">Món Chính</button>
                <button onclick="douong()">Đồ Uống</button>
                <button onclick="monchienxao()">Món Chiên Xào</button> 
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

                    <form action="" id="form-contact">
                        <input type="text" placeholder="Họ Tên" >
                    </br>
                        <input type="text" placeholder="Email" >
                    </br>
                        <input type="text" placeholder="Tiêu Đề" >
                    </br>
                        <input type="text" placeholder="Nội dung" id="nd" >




                    </form>

                    <div class="form-btn">
                        <button class="btn-submit">
                            GỬi
                        </button>
                    </div>

                </ul>
               
            </div>

            <div class="contact-last">
                <img src="./images/cong1.png" style="width: 1520px;" alt="">
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


    </form>
</body>
</html>
