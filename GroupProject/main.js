$('.button').first().addClass('active');

$('.button').click(function(){
  var $this = $(this);
  $siblings = $this.parent().children(),
  position = $siblings.index($this);
  console.log (position);
  
  $('.content div').removeClass('active').eq(position).addClass('active');
  
  $siblings.removeClass('active');
  $this.addClass('active');
})

       
           /*  slider js */
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