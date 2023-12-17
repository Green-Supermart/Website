<%-- 
    Document   : 404
    Created on : 9 Dec 2023, 13:20:28
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap');
            
            *{
                margin: 0;
                padding: 0;
                font-family: 'Prompt', sans-serif;
                scrollbar-width: thin;
            }
            
            /* SCROLLBAR PROPERTIES START ========================================= */
            *::-webkit-scrollbar {
                width: 8px;
                height: 8px;
            }
            *::-webkit-scrollbar-track {
                background: transparent;
            }
            *::-webkit-scrollbar-thumb {
                background-color: #ababab;
            }
            *::-webkit-scrollbar-thumb:hover {
                background-color: #8f8f8f;
            }
            *::-webkit-scrollbar-thumb:active {
                background-color: #7a7a7a;
            }
            /* =========================================== SCROLLBAR PROPERTIES END */
            
            html{
                color: #242424;
                background: #ECECEC;
                scroll-behavior: smooth;
            }
            
            .flex{
                display: flex;
            }
            .flexRow{
                flex-direction: row;
            }
            .flexCol{
                flex-direction: column;
            }
            
            a{
                text-decoration: none;
            }
            a:hover{
                text-decoration: underline;
                text-underline-offset: 4px;
                text-decoration-color: #1DA31A;
            }
            
            .externLinks i{
                color: #1DA31A;
            }
            
            nav{
                height: 70px;
                width: 100%;
                background: #FFFFFF;
                box-shadow: 0 0 30px #80808061;
                display: flex;
                align-items: center;
                justify-content: center;
                position: sticky;
                top: 0;
                z-index: 10;
            }
            .navContainer{
                height: 55%;
                width: 90%;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }
            
            .navLogo{
                height: 80%;
            }
            .navLogo img{
                height: 100%;
            }
            
            .catDropdown{
                height: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 10px;
            }
            
            .catDropdownContent{
                display: none;
                width: auto;
                height: auto;
                color: #242424;
                background: #FFFFFF;
                padding: 15px 15px;
                border-radius: 10px;
                position: absolute;
                top: 65px;
                left: 5px;
                filter: drop-shadow(0 0 15px #0002);
                z-index: 10;
                transition: 0.3s;
            }
            .catDropdownContent table{
                width: 100%;
                height: auto;
                border-collapse: collapse;
            }
            .catDropdownContent table tr td{
                font-size: 14px;
                font-weight: 400;
                color: #242424;
                width: 250px;
                height: 50px;
                display: inline-flex;
                justify-content: start;
                align-items: center;
                border-bottom: 1.5px solid #1DA31A1A;
                border-right: 1.5px solid #1DA31A1A;
            }
            .catDropdownContent table tr td:last-child{
                border-right: none;
            }
            .catDropdownContent table tr:last-child td{
                border-bottom: none;
            }
            .catDropdownContent table a{
                text-decoration: none;
                color: #242424;
                display: flex;
                align-items: center;
                padding-left: 15px;
                gap: 5px;
                transition: 0.2s;
            }
            .catDropdownContent table a:hover{
                color: #1DA31A;
                transition: 0.2s;
            }
            .catDropdownContent table a i{
                color: #1DA31A;
                font-size: 10px;
            }
            
            .catDropdownShow{
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                transition: 0.3s;
            }
            
            
            .searchBox{
                height: 100%;
                display: flex;
                border-radius: 10px;
            }
            
            .searchBox .searchField{
                height: 100%;
                width: 500px;
                color: #808080;
                background: #ECECEC;
                padding: 0 15px 0 15px;
                outline: none;
                border: none;
                border-radius: 10px 0 0 10px;
            }
            
            .searchBox .searchBtn{
                height: 100%;
                color: #808080;
                background: #ECECEC;
                padding: 0 15px 0 15px;
                border: none;
                outline: none;
                cursor: pointer;
                border-radius: 0 10px 10px 0;
            }
            
            .actionIcons{
                height: 100%;
                gap: 60px;
                align-items: center;
                justify-content: center;
            }
            
            .actionIcons i{
                font-size: 22px;
                color: #1DA31A;
                cursor: pointer;
            }
            
            .userPic{
                height: 90%;
                cursor: pointer;
                opacity: 1;
                transition: 0.3s;
            }
            .userPic:hover{
                opacity: 0.6;
                transition: 0.3s;
            }
            .userPic img{
                height: 100%;
                border-radius: 5px;
            }
            
            .containerBlock{
                width: 100%;
                height: auto;
                color: #242424;
                background: #ECECEC;
                justify-content: center;
            }
            .container{
                width: 90%;
                height: 100%;
                padding: 50px 0;
            }
            
            #toTopBtn{
                display: none;
                justify-content: center;
                align-items: center;
                position: fixed;
                bottom: 20px;
                right: 20px;
                z-index: 5;
                font-size: 20px;
                width: 45px;
                height: 45px;
                border-radius: 10px;
                padding: 0;
                cursor: pointer;
            }
            
            .greenBtn{
                color: #ECECEC;
                background: #1DA31A;
                border: 2px solid #1DA31A;
                transition: 0.3s;
            }
            .greenBtn:hover{
                background: #168C13;
                transition: 0.3s;
            }
            
            footer{
                height: 300px;
                color: #242424;
                background: #D9D9D9;
                font-weight: 300;
                align-items: center;
                justify-content: center;
            }
            
            .footerContainer{
                width: 90%;
                height: auto;
                justify-content: space-between;
            }
            
            footer a{
                font-weight: 300;
            }
            
            footer h1{
                color: #1DA31A;
                font-size: 16px;
                font-weight: 500;
                margin-bottom: 10px;
            }
            
            .footerImgSection{
                gap: 25px;
            }
            .footerImg{
                height: 40px;
                width: fit-content;
            }
            .footerImg img{
                height: 100%;
                width: auto;
                object-fit: cover;
            }
            
            .footerImgSection i{
                color: #1DA31A;
            }
            .footerImgSection a{
                color: #333333;
            }
            
            .footerContent{
                width: 40%;
                justify-content: space-evenly;
            }
            .footerLinks{
                gap: 8px;
            }
            .footerLinks a{
                width: fit-content;
                color: #242424;
            }
            
            .container404{
                width: 100%;
                align-items: center;
                justify-content: center;
                gap: 10px;
                margin: 50px 0;
            }
            
            .container404 h1{
                color: #1DA31A;
                font-weight: 400;
            }
            
            .container404 p{
                font-size: 20px;
                font-weight: 300;
            }
            
            .container404 .icon404{
                color: #1DA31A;
                font-size: 120px;
                margin: 20px 0;
            }
            
            .container404 a{
                color: #ECECEC;
                background: #1DA31A;
                font-size: 14px;
                text-decoration: none;
                padding: 7px 14px;
                border-radius: 5px;
                transition: 0.3s;
            }
            .container404 a:hover{
                background: #168C13;
                transition: 0.3s;
            }
        </style>
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Page Not Found | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script>
            function navbarHTML() {
                var html = '<div class="navContainer">';
                html += '<a class="navLogo" href="/Website">';
                html += '<img src="https://i.postimg.cc/G9nCKgLp/green-Logo.png" alt="Logo">';
                html += '</a>';
                
                html += '<div class="catDropdown">';
                html += '<span style="display: flex; flex-direction: row; gap: 5px; align-items: center; cursor: pointer;">All Categories';
                html += '<i class="fa-solid fa-angle-down"></i></span>';
                
                html += '<div class="catDropdownContent">';
                html += '<table>';
                html += '<tr>';
                html += '<td><a href="../categories/beverages.jsp">Beverages</a></td>';
                html += '<td><a href="../categories/biscuits.jsp">Biscuits</a></td>';
                html += '<td><a href="../categories/cereals.jsp">Cereals</a></td>';
                html += '</tr>';
                
                html += '<tr>';
                html += '<td><a href="../categories/cosmetics.jsp">Cosmetics</a></td>';
                html += '<td><a href="../categories/desserts.jsp">Desserts</a></td>';
                html += '<td><a href="../categories/flours.jsp">Flours</a></td>';
                html += '</tr>';
                
                html += '<tr>';
                html += '<td><a href="../categories/fruits.jsp">Fruits</a></td>';
                html += '<td><a href="../categories/medicine.jsp">Medicine</a></td>';
                html += '<td><a href="../categories/pastaNoodles.jsp">Pasta & Noodles</a></td>';
                html += '</tr>';
                
                html += '<tr>';
                html += '<td><a href="../categories/sauces.jsp">Sauces</a></td>';
                html += '<td><a href="../categories/snacks.jsp">Snacks</a></td>';
                html += '<td><a href="../categories/soapsLiquids.jsp">Soaps & Cleaning</a></td>';
                html += '</tr>';
                
                html += '<tr>';
                html += '<td><a href="../categories/spreads.jsp">Spreads</a></td>';
                html += '<td><a href="../categories/stationary.jsp">Stationary</a></td>';
                html += '<td><a href="../categories/vegetables.jsp">Vegetables</a></td>';
                html += '</tr>';
                html += '</table>';
                html += '</div>';
                html += '</div>';
                
                html += '<form class="searchBox" id="searchBox">';
                html += '<input type="search" id="searchField" class="searchField" placeholder="Search" title="Search" required>';
                html += '<button type="submit" id="searchBtn" class="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button>';
                html += '</form>';
                
                html += '<div class="actionIcons flex flexRow">';
                html += '<a href="wishlist.jsp" title="Wishlist">';
                html += '<i class="fa-solid fa-heart"></i>';
                html += '</a>';
                html += '<div title="Cart">';
                html += '<i class="fa-solid fa-cart-shopping"></i>';
                html += '</div>';
                html += '</div>';
                
                html += '<div class="userPic">';
                html += '<img src="https://i.postimg.cc/rF84Pdw2/default-Avatar.png">';
                html += '</div>';
                html += '</div>';
                return html;
            }
            
            var container = document.getElementById('navbar');
            container.innerHTML = navbarHTML();
            
            // DROPDOWN MENU
            var catDropdown = document.querySelector('.catDropdown');
            var catDropdownContent = document.querySelector('.catDropdownContent');
            
            catDropdown.addEventListener('click', function() {
                catDropdownContent.classList.toggle('catDropdownShow');
            });
            document.addEventListener('click', function(event) {
                if (!catDropdown.contains(event.target)) {
                    catDropdownContent.classList.remove('catDropdownShow');
                }
            });
            catDropdownContent.addEventListener('click', function(event) {
                event.stopPropagation();
            });
            
            // Add right arrow to category links when hovered
            var catDropdownContentLinks = document.querySelectorAll('.catDropdownContent a');
            catDropdownContentLinks.forEach(function(link) {
                link.addEventListener('mouseover', function() {
                    link.innerHTML += ' <i class="fa-solid fa-chevron-right"></i>';
                });
                link.addEventListener('mouseout', function() {
                    link.innerHTML = link.innerHTML.replace(' <i class="fa-solid fa-chevron-right"></i>', '');
                });
            });
        </script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <div class="container404 flex flexCol">
                    <h1>Page Not Found</h1>
                    <p>Try searching or go to the homepage</p>
                    <div class="icon404" id="icon404"></div>
                    <a href="/Website">
                        Home <i class="fa-solid fa-square-arrow-up-right"></i>
                    </a>
                </div>
                
            </div>
        </div>
        <!--======================================================== PAGE-CONTENT END -->
        
        
        <!-- FOOTER START ============================================================-->
        <footer class="flex" id="footer">
            
            <div class="footerContainer flex flexRow">
                <div class="footerImgSection flex flexCol">
                    
                    <div class="footerImg">
                        <img src="https://i.postimg.cc/G9nCKgLp/green-Logo.png" alt="Logo">
                    </div>
                    
                    <div class="flex flexCol" id="copyright"></div>
                    
                    <div>
                        <i class="fa-solid fa-envelope"></i> 
                        <a href="mailto:greensupermartlk@gmail.com">greensupermartlk@gmail.com</a>
                    </div>
                    
                </div>
                
                <div class="footerContent flex flexRow">
                    
                    <div class="footerLinks flex flexCol">
                        <h1>Support</h1>
                        <a href="helpCenter.jsp">Help Center</a>
                        <a href="returnPolicy.jsp">Return Policy</a>
                    </div>
                    
                    <div class="footerLinks flex flexCol">
                        <h1>Legal</h1>
                        <a href="privacyPolicy.jsp">Privacy Policy</a>
                        <a href="termsConditions.jsp">Terms & Conditions</a>
                    </div>
                    
                    <div class="footerLinks flex flexCol">
                        <h1>Socials</h1>
                        <span class="externLinks">
                            <a href="https://github.com/Green-Supermart/Website" target="_blank">GitHub</a> <i class="fa-solid fa-square-arrow-up-right"></i>
                        </span>
                        <span class="externLinks">
                            <a href="https://www.instagram.com" target="_blank">Instagram</a> <i class="fa-solid fa-square-arrow-up-right"></i>
                        </span>
                    </div>
                    
                </div>
                
            </div>
            
        </footer>
        <!--============================================================== FOOTER END -->
        
        
        <!-- SCROLL-TO-TOP START =====================================================-->
        <button id="toTopBtn" class="flex greenBtn" title="Scroll to Top">
            <i class="fa-solid fa-chevron-up"></i>
        </button>
        <!--======================================================= SCROLL-TO-TOP END -->
        
        
        <script>
            // TO TOP BUTTON START ============================================================================= //
            const scrollToTopBtn = document.getElementById("toTopBtn");
            window.onscroll = function () {
                scrollFunction();
            };
            
            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    scrollToTopBtn.style.display = "flex";
                } else {
                    scrollToTopBtn.style.display = "none";
                }
            }
            
            scrollToTopBtn.addEventListener("click", function () {
                document.body.scrollTop = 0; // For Safari
                document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
            });
            // =============================================================================== TO TOP BUTTON END //
            
            
            // RANDOM 404 ERROR ICON START ===================================================================== //
            const icons = [
                '<i class="fa-solid fa-magnifying-glass"></i>',
                '<i class="fa-solid fa-person-digging"></i>',
                '<i class="fa-solid fa-bomb"></i>',
                '<i class="fa-solid fa-truck-fast"></i>',
                '<i class="fa-solid fa-ghost"></i>',
                '<i class="fa-solid fa-mug-hot"></i>',
                '<i class="fa-solid fa-lemon"></i>',
                '<i class="fa-solid fa-paper-plane"></i>',
                '<i class="fa-solid fa-wifi"></i>',
                '<i class="fa-solid fa-snowflake"></i>',
                '<i class="fa-solid fa-shop"></i>',
                '<i class="fa-solid fa-bag-shopping"></i>',
                '<i class="fa-solid fa-building"></i>',
                '<i class="fa-solid fa-tags"></i>',
                '<i class="fa-solid fa-rocket"></i>',
                '<i class="fa-solid fa-moon"></i>',
                '<i class="fa-solid fa-leaf"></i>',
                '<i class="fa-solid fa-ship"></i>',
                '<i class="fa-solid fa-soap"></i>',
                '<i class="fa-solid fa-coins"></i>',
                '<i class="fa-solid fa-receipt"></i>',
                '<i class="fa-solid fa-tv"></i>',
                '<i class="fa-solid fa-pizza-slice"></i>',
                '<i class="fa-solid fa-hippo"></i>'
            ];
            const icon404 = document.getElementById('icon404');
            
            function updateIcon() {
                // Choose a random message
                const randomIcon = icons[Math.floor(Math.random() * icons.length)];
                
                // Update the innerHTML with the random message
                icon404.innerHTML = randomIcon;
            }
            
            // Add event listeners for page load and refresh
            window.addEventListener('load', updateIcon);
            // ======================================================================= RANDOM 404 ERROR ICON END //
            
            
            // COPYRIGHT START ================================================================================= //
            const copyright = document.getElementById("copyright");
            copyright.innerHTML = 'Copyright © ' + new Date().getFullYear() + ' GREEN Supermart Services<br>All Rights Reserved';
            // =================================================================================== COPYRIGHT END //
        </script>
        
    </body>
</html>
