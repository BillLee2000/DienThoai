<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KhuyenMai.aspx.cs" Inherits="GroupProject.khuyenmai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="KhuyenMai_css.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="slider">
        <div class="slider__background">

           
                <img class="mySlides" src="./images/full_khuyen-mai-1567824621.jpg" style="width:100% ; padding-top:50px ;">

        
        </div>
        <img id="sld"class="" src="http://www.thaimarket.vn/images/cong.png" style="width:100% ">
      
   </div>
   <div id="our">
            <ul class="our__header">
                <li class="our__item__list-header our__item__list">
                   Khuyến Mãi
                </li>
                <li class="our__item__list-detail our__item__list">
                    “THAI MARKET DELICIOUS FOOD COOKED WITH LOTS OF LOVE AND CARE”
                </li>
              
            </ul>

        


            <div class="our__container">
           
              
            </div>

            <div class="our__location">
                <div class="location-list">
                   
                   
                    <img src="./images/bannerdoc1.png" alt="">

                
                    <div class="location-list__title">
                     
                            <h3 > FOOD THAI 04 TRần QUỐC TOÃN</h3>
                            <p>04 Trần Quốc Toãn</p>

                   
                     

                    </div>
                </div>
                <div class="location-list">
                   
                   
                    <img src="./images/bannerdoc3.png" alt="">

                  
                    <div class="location-list__title">
                      
                            <h3 > FOOD THAI 06 NGUYỄN VĂN LINH </h3>
                            <p>06 Nguyễn Văn Linh</p>
                     
                       

                    </div>
                </div>
                <div class="location-list">
                   
                   
                    <img src="./images/bannerdoc.jpg" alt="">

                
                
                    <div class="location-list__title">
                       
                            <h3 > FOOD THAI 43 BÌNH MINH 5 </h3>
                            <p>43 Bình Minh 5</p>
                     
                      
                            
                    </div>
                </div>   
                         
                </div>
             
                  
        
      


              
            </div>

   
    <div id="contact" style="background:none">


        <div class="contact-main" style="background:none">
            <img src="./images/nen.png" alt="">
                <p class="discount-text">
                    Lần đầu tiên đến với vùng đất Đông Bắc 
                    Thai Lan - Udon Thani nắng nóng, xa lạ bỡ ngỡ nhưng vô cùng thân thiện, Điều làm lưu luyến và lắng đọng mãi mãi không chỉ đối với riêng tôi mà với tất cả mọi người đó là hương vị ‘bùng nổ’ trong vòm họng. Tôi bắt đầu lao vào các hương vị “bùng nổ” ấy một cách say mê không một chút đắn đo, suy toán.
                </p>

            


                        <div class="feedback">
                                <h5 class="feedback-item" style="color:var(--yellow-color);font-size:20px">Ngon Quá</h5>
                                <p style="font-size:14px"class="feedback-item">Món nước tên gì mình quên mất, nhưng ngon không thể diễn tả được. Chua chua nóng nóng trời ơi, quá ngon. Nếu đến Đà Nẵng lần nữa mình sẽ ghé ủng hộ.</p>
                                <img  class="feedback-item" src="./images/huan-hoa-hong-1.jpg" style="width:18% ; border-radius: 60px;" alt="">
                                <p class="feedback-item" > HUAN HOA HONG </p>
                        </div>

         <img src="./images/nenckm.png" class="img-nenckm" alt="hinhanh" style="width:1522px ;margin: 86px -431px;">
           
        </div>

        <div class="contact-last">
            <img src="./images/cong1.png" style="width: 1520px; margin-top: 240px;" alt="">
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
                <p class="footer-item author">Copyright© 2019
                   Thai Market All rights reserved.</p>
            </div>

            <div class="footer-list">
                <img src="./images/logo.png" alt="" class= " footer-item footer-logo">
            </div>

            <div class="footer-list ">
                <h3 class="title footer-item">Nhận đăng ký bản tin</h3>
                <p class="detil footer-item">Nhận đăng ký bản tin từ chúng tôi</p>
                <div class="footer-form footer-item">
                    <input type="text" placeholder="Email...">
                    <button> <i class="fas fa-long-arrow-alt-right"></i> </button>

                </div>
                <p class="author flooter-item">Designed and Maintained by </p>
            </div>
           
   </footer>

</asp:Content>
