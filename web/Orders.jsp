<%-- 
    Document   : Orders
    Created on : 11 Dec 2023, 13:45:35
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="style.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Orders | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        
        <script src="script.js" defer></script>
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- HEADER START ============================================================-->
        <header class="flex">
            <h1>Orders</h1>
        </header>
        <!--============================================================== HEADER END -->
        <!-- PAGE-CONTENT START ======================================================-->
        
        <div class="containerBlock flex">
            <div class="container">
                
                <div class="helpCardsContainer flex flexCol">
                    <div class="wrap cf">
  <div class="cart">
<!--    <ul class="tableHead">
      <li class="prodHeader">Product</li>
      <li>Quantity</li>
      <li>Total</li>
       <li>Remove</li>
    </ul>-->
    <ul class="cartWrap">
      <li class="items odd">
        
    <div class="infoWrap"> 
        <div class="cartSection">
        <img src="http://lorempixel.com/output/technics-q-c-300-300-4.jpg" alt="" class="itemImg" />
          <p class="itemNumber">001</p>
          <h3>Item Name 1</h3>
        
           <p> <input type="text"  class="qty" placeholder="3"/>* Ru.0.00</p>
        
          <p class="stockStatus"> In Stock</p>
        </div>  
    
        
        <div class="prodTotal cartSection">
          <p>Ru.0.00</p>
        </div>
              <div class="cartSection removeWrap">
           <a href="#" class="remove">x</a>
        </div>
      </div>
      </li>
      <li class="items even">
        
       <div class="infoWrap"> 
        <div class="cartSection">
         
        <img src="http://lorempixel.com/output/technics-q-c-300-300-4.jpg" alt="" class="itemImg" />
          <p class="itemNumber">002</p>
          <h3>Item Name 1</h3>
        
           <p> <input type="text"  class="qty" placeholder="3"/>* Ru.0.00</p>
        
          <p class="stockStatus"> In Stock</p>
        </div>  
    
        
        <div class="prodTotal cartSection">
          <p>Ru.0.00</p>
        </div>
              <div class="cartSection removeWrap">
           <a href="#" class="remove">x</a>
        </div>
      </div>
      </li>
      
            <li class="items odd">
             <div class="infoWrap"> 
        <div class="cartSection">
            
        <img src="http://lorempixel.com/output/technics-q-c-300-300-4.jpg" alt="" class="itemImg" />
          <p class="itemNumber">003</p>
          <h3>Item Name 1</h3>
        
           <p> <input type="text"  class="qty" placeholder="3"/>* Ru.0.00</p>
        
          <p class="stockStatus out"> Out of Stock</p>
        </div>  
    
        
        <div class="prodTotal cartSection">
         <p>Ru.0.00</p>
        </div>
                    <div class="cartSection removeWrap">
           <a href="#" class="remove">x</a>
        </div>
              </div>
      </li>
      <li class="items even">
       <div class="infoWrap"> 
        <div class="cartSection info">
             
        <img src="http://lorempixel.com/output/technics-q-c-300-300-4.jpg" alt="" class="itemImg" />
          <p class="itemNumber">004</p>
          <h3>Item Name 1</h3>
        
          <p> <input type="text"  class="qty" placeholder="3"/>* Ru.0.00</p>
        
          <p class="stockStatus"> In Stock</p>
          
        </div>  
    
        
        <div class="prodTotal cartSection">
          <p>Ru.0.00</p>
        </div>
    
            <div class="cartSection removeWrap">
           <a href="#" class="remove">x</a>
        </div>
         </div>
      </li>
      
      
      <!--<li class="items even">Item 2</li>-->
 
    </ul>
  </div>
  <div class="subtotal cf">
    <ul>
            <li class="totalRow final"><span class="label">Total</span><span class="value">* Ru.0.00</span></li>
      <li class="totalRow"><a href="#" class="btn continue">Checkout</a></li>
    </ul>
  </div>
</div>

                    <div class="helpLink flex flexRow">
                        
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>Related Topic</h1>
                                <h2>Heading</h2>
                            </div>
                            
                            <a href="">
                                <i class="fa-solid fa-square-arrow-up-right"></i>
                            </a>
                        </div>
                    </div>
                    
                    <div class="helpLink flex flexRow">
                        
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>Related Topic</h1>
                                <h2>Heading</h2>
                            </div>
                            
                            <a href="">
                                <i class="fa-solid fa-square-arrow-up-right"></i>
                            </a>
                        </div>
                    </div>
                    
                    <div class="helpLink flex flexRow">
                        
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>Related Topic</h1>
                                <h2>Heading</h2>
                            </div>
                            
                            <a href="">
                                <i class="fa-solid fa-square-arrow-up-right"></i>
                            </a>
                        </div>
                    </div>
                    
                    <div class="helpLink flex flexRow">
                        
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h1>Related Topic</h1>
                                <h2>Heading</h2>
                            </div>
                            
                            <a href="">
                                <i class="fa-solid fa-square-arrow-up-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                
                
        <!--======================================================== PAGE-CONTENT END -->
        <!-- FOOTER START ============================================================-->
        <footer class="flex" id="footer"></footer>
        <script src="footer.js"></script>
        <!--============================================================== FOOTER END -->
        
        
        <!-- SCROLL-TO-TOP START =====================================================-->
        <button id="toTopBtn" class="flex greenBtn" title="Scroll to Top">
            <i class="fa-solid fa-chevron-up"></i>
        </button>
	<!--======================================================= SCROLL-TO-TOP END -->
        
    </body>
</html>
