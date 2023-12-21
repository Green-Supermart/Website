<%-- 
    Document   : Checkoutnew
    Created on : Dec 19, 2023, 11:03:37 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="/Website/style.css">
        <link rel="stylesheet" href="/Website/cart.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Checkout | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        
        <script src="/Website/script.js" defer></script>
        <script src="/Website/cart.js" defer></script>
    </head>
    <body>
         <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="/Website/navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- HEADER START ============================================================-->
        <header class="flex">
            <h1>Checkout</h1>
        </header>
        <!--============================================================== HEADER END -->
        
        <div class="containerBlock flex">
            <div class="container">

                <div class="containerCO">
          
                    <div class="COcard">
                        <div class="newdate">December 14, 2023</div>
                        <div class="COorderNumber">Order No.20757</div>
                        <table>
                            <tr>
                                <td>
                                    <a href="">
                                    <i class="fa-solid fa-trash-can" style="color: #808080;"></i>
                                    </a>
                                </td>
                                <td>
                                    <img src="https://i.postimg.cc/brf9L1tT/placeholder.png" alt="Image 1" class="COImage">
                                </td>
                                <td>
                                    <div class="COItem">Item 01</div>
                                </td>
                                <td style="width: 76%; text-align: right;">
                                    <div class="COquantity" >
                                        ×3
                                    </div>
                                </td>
                                <td style="width: 8%; text-align: right;">
                                    <div class="COprice" >
                                        180
                                    </div>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <a href="">
                                    <i class="fa-solid fa-trash-can" style="color: #808080;"></i>
                                    </a>
                                </td>
                                <td>
                                    <img src="https://i.postimg.cc/brf9L1tT/placeholder.png" alt="Image 2" class="COImage">
                                </td>
                                <td>
                                    <div class="COItem">Item 02</div>
                                </td>
                                <td style="width: 76%; text-align: right;">
                                    <div class="COquantity" >
                                        ×1
                                    </div>
                                </td>
                                <td style="width: 8%; text-align: right;">
                                    <div class="COprice" >
                                        38
                                    </div>
                                </td>
                                
                            </tr><tr>
                                <td>
                                    <a href="">
                                    <i class="fa-solid fa-trash-can" style="color: #808080;"></i>
                                    </a>
                                </td>
                                <td>
                                    <img src="https://i.postimg.cc/brf9L1tT/placeholder.png" alt="Image 3" class="COImage">
                                </td>
                                <td>
                                    <div class="COItem">Item 03</div>
                                </td>
                                <td style="width: 76%; text-align: right;">
                                    <div class="COquantity" >
                                        ×5
                                    </div>
                                </td>
                                <td style="width: 8%; text-align: right;">
                                    <div class="COprice" >
                                        1800
                                    </div>
                                </td>
                                
                            </tr>
                           <tr>
                                <td colspan="5">
                                    <hr style="margin: 5px 0; border: none; border-top: 1px solid #ddd;">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" style="text-align: left; padding:20px; padding-right: 10px;">
                                  <div class="COTotalLabel">Total</div>
                                </td>
                                 <td style="text-align: right;" colspan="2" >
                                     <div class="COTotalPrice" ">
                                        180
                                    </div>
                                </td>
                </tr>
                        </table>
                        
                    </div>
                        </div>

                        <div class="helpCardsContainer flex flexCol" style="margin-bottom: 40px;">
                            <div class="helpLink flex flexRow">
                                
                                <div class="linkContent flex">
                                    <div class="linkText flex flexCol">
                                        <h1>Delivery address</h1>
                                        <h1 style="color:black; font-size:20px;">123, York Street, New York, USA. </h1>
                                    </div>
                                    
                                    <a href="">
                                        <i class="fa-solid fa-chevron-right" style="color: #01a733;font-size: 20px; " ></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="CObuttoncon flex">
                            <button class="CObutton">Checkout</button>
                        </div>

            </div>
        </div>

        
        
      
        
                    
         <!-- FOOTER START ============================================================-->
        <footer class="flex" id="footer"></footer>
        <script src="/Website/footer.js"></script>
        <!--============================================================== FOOTER END -->
        
        
        <!-- SCROLL-TO-TOP START =====================================================-->
        <button id="toTopBtn" class="flex greenBtn" title="Scroll to Top">
            <i class="fa-solid fa-chevron-up"></i>
        </button>
	<!--======================================================= SCROLL-TO-TOP END -->
        
    </body>
</html>