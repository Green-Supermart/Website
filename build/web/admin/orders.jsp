<%-- 
    Document   : orders
    Created on : 16 Dec 2023, 01:17:32
    Author     : Sandun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="/Website/admin/admin.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Orders - Admin | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="/Website/admin/admin.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/TwdpWvhk/admin-Logo.png" as="image" type="image/png">
        
        <script src="/Website/admin/admin.js" defer></script>
    </head>
    
    <body>
        
        <div class="body flex flexRow">
            
            <div class="navigation flex flexCol">
                
                <div class="navContainer flex flexCol">
                    <div class="navLogo flex" onclick="window.location.href='/Website/admin/dashboard.jsp'">
                        <img src="https://i.postimg.cc/TwdpWvhk/admin-Logo.png">
                    </div>
                    
                    <nav class="flex flexCol">
                        <span class="navLink flex flexRow" onclick="window.location.href='/Website/admin/dashboard.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-gauge"></i>
                            </span>
                            Dashboard
                        </span>
                        
                        <span class="navLink flex flexRow" onclick="window.location.href='/Website/admin/products.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-box"></i>
                            </span>
                            Products
                        </span>
                        
                        <span class="activeLink flex flexRow">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-truck-fast"></i>
                            </span>
                            Orders
                        </span>
                        
                        <span class="navLink flex flexRow" onclick="window.location.href='/Website/admin/transactions.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-dollar-sign"></i>
                            </span>
                            Transactions
                        </span>
                    </nav>
                </div>
                
            </div>
            
            <div class="dashboard">
                
                <!-- TOPBAR START ============================================================-->
                <div class="topBar flex" id="topBar"></div>
                <script src="/Website/admin/topBar.js"></script>
                <!--============================================================== TOPBAR END -->
                
                <div class="dashboardContent flex">
                    
                    <div class="dashboardContainer flex flexCol">
                        
                        <div class="pageTopic flex">
                            <div class="pageTopicContainer flex flexRow">
                                <h1>Orders</h1>
                                
                                <span class="reloadIcon flex" onclick="window.location.reload();" title="Refresh">
                                    <i class="fa-solid fa-arrows-rotate"></i>
                                </span>
                            </div>
                        </div>
                        
                        <section class="cardsContainer flex flexCol">
                            
                            <div class="profileCard flex flexCol" style="width: calc(100% - 40px); height: 70vh;">
                                
                                <div class="subCardsContainer flex flexRow" style="height: 100%; margin-top: 0; overflow: auto; align-items: start;">
                                    
                                    <div style="height: 2000px; width: 100%;"></div>
                                    
                                </div>
                                
                            </div>
                            
                        </section>
                        
                    </div>
                    
                </div>
            </div>
            
        </div>
        
    </body>
</html>
