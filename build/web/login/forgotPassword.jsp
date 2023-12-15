<%-- 
    Document   : forgotPassword
    Created on : 5 Dec 2023, 15:42:00
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="../style.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Forgot Password - Login | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        
        <script src="../script.js" defer></script>
    </head>
    
    <body>
        
        <div class="containerBlock flex" style="height: 100vh; width: 100%; justify-content: center; align-items: center;">
            
            <form id="forgotPasswordForm" class="loginRegisterForm flex" action="" method="">
                
                <div class="formContainer flex flexCol">
                    
                    <div class="formLogo" onclick="window.location.href='/Website'">
                        <img src="https://i.postimg.cc/G9nCKgLp/green-Logo.png">
                    </div>
                    
                    <p>Enter your email address to reset password:</p>
                    
                    <input type="email" placeholder="Email Address" title="Email Address" required>
                    
                    <button type="submit">Confirm</button>
                    
                </div>
                
            </form>
            
        </div>
        
    </body>
    
</html>
