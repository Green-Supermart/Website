<%-- 
    Document   : dashboard
    Created on : 13 Dec 2023, 20:44:57
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
        
        <title>Dashboard - Admin | GREEN Supermart</title>
        
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
                        <span class="activeLink flex flexRow">
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
                        
                        <span class="navLink flex flexRow" onclick="window.location.href='/Website/admin/orders.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-truck-fast"></i>
                            </span>
                            Orders
                        </span>
                        
                        <span class="navLink flex flexRow" onclick="window.location.href='/Website/admin/feedback.jsp'">
                            <span class="navLinkIcon flex">
                                <i class="fa-solid fa-comments"></i>
                            </span>
                            Feedback
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
                                <h1>Dashboard</h1>
                                
                                <span class="reloadIcon flex" onclick="window.location.reload();" title="Refresh">
                                    <i class="fa-solid fa-arrows-rotate"></i>
                                </span>
                            </div>
                        </div>
                        
                        <section class="cardsContainer flex flexRow">
                            
                            <div class="profileCard flex flexCol">
                                <h1>GREEN Supermart</h1>
                                <h2>2023</h2>
                                
                                <div class="subCardsContainer flex flexRow">
                                    <div class="subCard flex flexRow">
                                        <div class="subCardIcon flex">
                                            <i class="fa-solid fa-dollar-sign"></i>
                                        </div>
                                        
                                        <div class="subCardText flex flexCol">
                                            <h4>Rs. 300,000.00</h4>
                                            <h5>Revenue</h5>
                                        </div>
                                    </div>
                                    
                                    <div class="subCard flex flexRow">
                                        <div class="subCardIcon flex">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                        </div>
                                        
                                        <div class="subCardText flex flexCol">
                                            <h4>56843</h4>
                                            <h5>Sales Volume</h5>
                                        </div>
                                    </div>
                                    
                                    <div class="subCard flex flexRow">
                                        <div class="subCardIcon flex">
                                            <i class="fa-solid fa-user-group"></i>
                                        </div>
                                        
                                        <div class="subCardText flex flexCol">
                                            <h4>2345</h4>
                                            <h5>New Customers</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="salesCard flex flexCol">
                                <h1>Sales</h1>
                                <h2>November</h2>
                                
                                <div class="subCardsContainer flex flexRow" style="justify-content: start;">
                                    <div class="subCard flex flexRow" style="width: 45%;">
                                        <div class="subCardIcon flex">
                                            <i class="fa-solid fa-dollar-sign"></i>
                                        </div>
                                        
                                        <div class="subCardText flex flexCol">
                                            <h4>Rs. 23,589.78</h4>
                                            <h5>Revenue</h5>
                                        </div>
                                    </div>
                                    
                                    <div class="subCard flex flexRow" style="width: 45%;">
                                        <div class="subCardIcon flex">
                                            <i class="fa-solid fa-bag-shopping"></i>
                                        </div>
                                        
                                        <div class="subCardText flex flexCol">
                                            <h4>23145</h4>
                                            <h5>Sales Volume</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </section>
                        
                        <div class="dashboardChart flex">
                            <div class="chartContainer flex flexCol">
                                <h1>Sales Statistics</h1>
                                
                                <div class="statChart">
                                    <img src="https://i.postimg.cc/QtdVMqFd/sample-Chart.png" alt="Sample Chart">
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    
                </div>
            </div>
            
        </div>
        
    </body>
</html>
