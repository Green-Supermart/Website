<%-- 
    Document   : success
    Created on : 16 Dec 2023, 00:52:43
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="form.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Password Updated - Admin | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="form.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/TwdpWvhk/admin-Logo.png" as="image" type="image/png">
        
        <script src="admin.js" defer></script>
    </head>
    
    <body>
        
        <div class="containerBlock flex" style="height: 100vh; width: 100%; justify-content: center; align-items: center;">
            
            <form id="resetSuccessForm" class="loginForm flex" action="" method="">
                
                <div class="formContainer flex flexCol">
                    
                    <div class="formLogo" onclick="window.location.href='../admin.jsp'">
                        <img src="https://i.postimg.cc/xCD2hzVy/admin-Logo2.png">
                    </div>
                    
                    <p class="stateMessage">
                        <i class="fa-solid fa-circle-check"></i>
                        Password Updated Successfully
                    </p>
                    
                    <button type="button" onclick="window.location.href='../admin.jsp'">Login Now</button>
                    
                </div>
                
            </form>
            
        </div>
        
    </body>
    
</html>
