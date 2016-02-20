window.onload = function(){


  var lists = document.querySelectorAll('.limenu');

  for (var i = 0; i < lists.length; i++) {
    clickMenu(i);
  };

  function clickMenu (n) {
    lists[n].addEventListener('click', function () {
      var sns = document.querySelectorAll('.menu .sns');
      for (var j = sns.length - 1; j >= 0; j--) {
         sns[j].className = 'sns';
         sns[n].className = 'sns pic';
       }; 
    });
  }




  var button1 =document.querySelector('.b1');
  button1.addEventListener( 'click', function( ev ){
      // get references to the two boxes
      var pic1 = document.getElementById('pic1');
      var pic2 = document.getElementById('pic2');
      var pic3 = document.getElementById('pic3');

      // slide both boxes simultaneously
      pic2.style.left = "0"; // onto the screen
      pic1.style.left = "500%"; // off the screen
      // pic3.style.left = "15%";
    });
  var button2 =document.querySelector('.b2');
  button2.addEventListener( 'click', function( ev ){
      // get references to the two boxes
      var pic1 = document.getElementById('pic1');
      var pic2 = document.getElementById('pic2');
      var pic3 = document.getElementById('pic3');
      // slide both boxes simultaneously
      pic2.style.left = "-500%"; // onto the screen
      pic1.style.left = "0"; // off the screen
    });





  

  window.addEventListener('scroll',togglePMenu);
    function togglePMenu(){

      var ulmenu = document.querySelector(".sushimenu");
      var header = document.querySelector("#about_us");
      var menu = document.querySelector(".menu");
      var l = menu.offsetHeight + header.offsetHeight-ulmenu.offsetHeight*2;
      var y = window.scrollY;
      
      if(y <=header.offsetHeight){
          
        ulmenu.className = 'sushimenu abs';   
      }else if(y <l){
       
        ulmenu.className = 'sushimenu fix';   
      }else{
         
        ulmenu.className = 'sushimenu abs';  
      } 
    }



}



