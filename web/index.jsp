<%-- 
    Document   : index
    Created on : 17 Nov 2023, 17:58:28
    Author     : Sandun
--%>

<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="/Website/style.css">
        <link rel="stylesheet" href="/Website/slider.css">
        <link rel="stylesheet" href="/Website/cart.css">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        
        <title>Your Everyday Supermart | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="/Website/style.css" as="style" type="text/css">
        <link rel="preload" href="/Website/slider.css" as="style" type="text/css">
        <link rel="preload" href="/Website/cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/brf9L1tT/placeholder.png" as="image" type="image/png">
        
        <script src="/Website/script.js" defer></script>
        <script src="/Website/slider.js" defer></script>
        <script src="/Website/cart.js" defer></script>
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="/Website/navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <section class="homeSlider flex flexRow" style="height: 75vh; width: 100%; align-items: center; margin-bottom: 60px;">
                    
                    <div class="prevSlide flex" id="prevSlide">
                        <i class="fa-solid fa-chevron-left"></i>
                    </div>
                    
                    <a class="currentSlideLink" id="currentSlideLink" href="">
                        <div class="currentSlide" id="currentSlide">
                            <img id="currentSlideImg" src="https://i.postimg.cc/brf9L1tT/placeholder.png">
                        </div>
                    </a>
                    
                    <div class="nextSlide flex" id="nextSlide">
                        <i class="fa-solid fa-chevron-right"></i>
                    </div>
                    
                </section>
                
                
                <section>
                    <h1 class="sectionHeading" style="text-align: center; margin-bottom: 40px; font-size: 26px;">Top Deals</h1>
                    
                    <div class="cardsContainer flex flexRow">
                        
                        <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greendb", "admin", "Admin123$");
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("SELECT * FROM products WHERE discountPercentage > 0 LIMIT 4");

                            while(rs.next()) {
                                int id = rs.getInt("id");
                                String productName = rs.getString("productName");
                                double originalPrice = rs.getDouble("originalPrice");
                                int discountPercentage = rs.getInt("discountPercentage");
                                String imgLink = rs.getString("imgLink");

                        %>

                        <div class="productCard flex flexCol" data-product-id="<%= id %>">
                            <div class="productImg flex">
                                <div class="productIcons flex flexRow">
                                    <% if (discountPercentage > 0){ %>
                                        <span class="discIndicator">
                                            -<%= discountPercentage %>%
                                        </span>
                                    <% } %>
                                    <span style="width: 10px; visibility: hidden;"></span>

                                    <span class="wishlistIndicator">
                                        <i class="fa-solid fa-heart"></i>
                                    </span>
                                </div>
                                <img src="<%= imgLink %>">
                            </div>
                            <div class="productContent flex flexCol">
                                <h1>
                                    <a href="">
                                        <%= productName %>
                                    </a>
                                </h1>
                                <span class="productPrice flex flexRow">
                                    <h2 class="price">Rs. <%= originalPrice - (originalPrice * discountPercentage / 100) %></h2>
                                    <% if (discountPercentage > 0){ %>
                                        <h2 class="discPrice">Rs. <%= originalPrice %></h2>
                                    <% } %>
                                </span>
                                <button class="addToCartBtn flex flexRow">
                                    <i class="fa-solid fa-cart-plus"></i>
                                    Add to Cart
                                </button>
                            </div>
                        </div>
                        
                        <%
                            }

                                con.close();
                            } catch(Exception e) {
                                out.println(e);
                            }
                        %>

                    </div>
                    
                    <span class="moreDealsLink flex flexRow">
                        <a href="/Website/deals.jsp">View More Deals</a>
                        <i class="fa-solid fa-square-arrow-up-right"></i>
                    </span>
                    
                </section>
                
                
                
                <section style="margin-top: 60px;">
                    <h1 class="sectionHeading" style="text-align: center; margin-bottom: 40px; font-size: 26px;">Top Categories</h1>
                    
                    <div class="cardsContainer flex flexRow">
                        <a style="height: auto; width: 20%; text-decoration: none;" href="/Website/categories/beverages.jsp">
                            <div class="catCard flex flexCol">
                                <div class="catCardImg flex">
                                    <img src="https://i.postimg.cc/fbcBzhc4/beverages.png">
                                </div>
                                <div class="catContent flex flexRow">
                                    <h1>Beverages</h1>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </div>
                            </div>
                        </a>
                        
                        <a style="height: auto; width: 20%; text-decoration: none;" href="/Website/categories/snacks.jsp">
                            <div class="catCard flex flexCol">
                                <div class="catCardImg flex">
                                    <img src="https://i.postimg.cc/Z53LHhD9/snacks.png">
                                </div>
                                <div class="catContent flex flexRow">
                                    <h1>Snacks</h1>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </div>
                            </div>
                        </a>
                        
                        <a style="height: auto; width: 20%; text-decoration: none;" href="/Website/categories/fruits.jsp">
                            <div class="catCard flex flexCol">
                                <div class="catCardImg flex">
                                    <img src="https://i.postimg.cc/k47wDhs2/fruits.png">
                                </div>
                                <div class="catContent flex flexRow">
                                    <h1>Fruits</h1>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </div>
                            </div>
                        </a>
                        
                        <a style="height: auto; width: 20%; text-decoration: none;" href="/Website/categories/medicine.jsp">
                            <div class="catCard flex flexCol">
                                <div class="catCardImg flex">
                                    <img src="https://i.postimg.cc/8PxHLCwQ/medicine.png">
                                </div>
                                <div class="catContent flex flexRow">
                                    <h1>Medicine</h1>
                                    <i class="fa-solid fa-square-arrow-up-right"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                </section>
                
            </div>
        </div>
        <!--======================================================== PAGE-CONTENT END -->
        
        
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
