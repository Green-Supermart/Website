<%-- 
    Document   : accountsettings
    Created on : Dec 12, 2023, 9:34:42 AM
    Author     : Ruwin
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
        
        <title>Account Settings | GREEN Supermart</title>
        
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
            <h1>Account Settings</h1>
        </header>
        <!--============================================================== HEADER END -->
         
      
        
          <div class="containerBlock flex">
            <div class="container">
                
                <div class="helpCardsContainer flex flexCol">
                   
                    <div class="flex flexRow" style="width: 100%; height: auto; justify-content: space-between;">
                        <div class="flex" style="background: #FFFFFF; height: 300px; width: 300px; border-radius: 10px; align-items: center; justify-content: center;">
                             
                            <div class="flex flexCol" style="width: 80%; height: 80%; justify-content: space-between; align-items: center;">
                                <div style="width: 170px; height: 170px;">
                                    <img style="width: 100%; height: 100%; object-fit: cover; object-position: center;" src="https://i.postimg.cc/FzDgHnTB/userPic.png" alt="Profile Picture">
                                </div>
                                <span class="flex flexRow" style="gap: 10px; align-items: center;">
                                    Update Profile Picture
                                    <i class="fa-solid fa-square-up-right" style="color: #1DA31A;"></i>
                                </span>
                            </div>
                           
                        </div>
                        <div class="flex flexCol" style="height: 300px; width: calc(100% - 330px); justify-content: space-between; align-items: center;">
                            <div style="background: #FFFFFF; height: 45%; width: 100%; border-radius: 10px;">
                                <div class="helpLink flex flexRow">
                                 <div class="acccardlinkContent flex">
                                 <div class="acccardlinkText flex flexCol">
                                <h3>Full Name</h3>
                                <h2>John Doe</h2>
                            </div>
                                     
                            <a href="">
                                 <i class="fa-solid fa-angle-right"></i>
                            </a>
                            </div>
                            </div>
                            </div>
                            <div style="background: #FFFFFF; height: 45%; width: 100%; border-radius: 10px;">
                               <div class="helpLink flex flexRow">
                                 <div class="acccardlinkContent flex">
                                 <div class="acccardlinkText flex flexCol">
                                <h3>Email Address</h3>
                                <h2>johndoe@mail.com</h2>
                            </div>
                                     
                            <a href="">
                                 <i class="fa-solid fa-angle-right"></i>
                            </a>
                            </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    
             
            
                    
                                
                 
                    <div class="helpLink flex flexRow">
                        
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h2>Update Password</h2>
                            </div>
                            
                            <a href="">
                                <i class="fa-solid fa-angle-right"></i>
                            </a>
                        </div>
                    </div>
                    
                    
                         <div class="helpLink flex flexRow">
                        
                        <div class="linkContent flex">
                            <div class="linkText flex flexCol">
                                <h3>Delivery Address</h3>
                                <h2>123, York Street, New York, United States 10001</h2>
                            </div>
                            
                            <a href="">
                                <i class="fa-solid fa-angle-right"></i>
                            </a>
                        </div>
                    </div>
                  
                    
            </div>
          </div>
        </div>
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
