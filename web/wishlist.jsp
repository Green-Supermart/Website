<%-- 
    Document   : wishlist
    Created on : 30 Nov 2023, 15:32:27
    Author     : Sandun
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
        
        <title>Wishlist | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="/Website/style.css" as="style" type="text/css">
        <link rel="preload" href="/Website/cart.css" as="style" type="text/css">
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        <link rel="preload" href="https://i.postimg.cc/MKJm2kGp/favicon.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/G9nCKgLp/green-Logo.png" as="image" type="image/png">
        <link rel="preload" href="https://i.postimg.cc/brf9L1tT/placeholder.png" as="image" type="image/png">
        
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
            <h1>Wishlist</h1>
        </header>
        <!--============================================================== HEADER END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
        <div class="containerBlock flex">
            <div class="container">
                
                <div class="cardsContainer flex flexRow">
                    <div class="productCard flex flexCol">
                        <div class="productImg flex">
                            <div class="productIcons flex flexRow">
                                <span class="discIndicator">
                                    -20%
                                </span>
                                <span class="wishlistIndicator">
                                    <i class="fa-solid fa-trash-can"></i>
                                </span>
                            </div>
                            <img src="https://i.postimg.cc/brf9L1tT/placeholder.png">
                        </div>
                        <div class="productContent flex flexCol">
                            <h1>
                                <a href="">
                                    Product Title
                                </a>
                            </h1>
                            <span class="productPrice flex flexRow">
                                <h2 class="price">Rs. 152.00</h2>
                                <h2 class="discPrice">Rs. 190.00</h2>
                            </span>
                            <button class="addToCartBtn flex flexRow">
                                <i class="fa-solid fa-cart-plus"></i>
                                Add to Cart
                            </button>
                        </div>
                    </div>
                    
                    <div class="productCard flex flexCol">
                        <div class="productImg flex">
                            <div class="productIcons flex flexRow">
                                <span class="discIndicator">
                                    -20%
                                </span>
                                <span class="wishlistIndicator">
                                    <i class="fa-solid fa-trash-can"></i>
                                </span>
                            </div>
                            <img src="https://i.postimg.cc/brf9L1tT/placeholder.png">
                        </div>
                        <div class="productContent flex flexCol">
                            <h1>
                                <a href="">
                                    Product Title
                                </a>
                            </h1>
                            <span class="productPrice flex flexRow">
                                <h2 class="price">Rs. 152.00</h2>
                                <h2 class="discPrice">Rs. 190.00</h2>
                            </span>
                            <button class="addToCartBtn flex flexRow">
                                <i class="fa-solid fa-cart-plus"></i>
                                Add to Cart
                            </button>
                        </div>
                    </div>
                    
                    <div class="productCard flex flexCol">
                        <div class="productImg flex">
                            <div class="productIcons flex flexRow">
                                <span class="discIndicator">
                                    -20%
                                </span>
                                <span class="wishlistIndicator">
                                    <i class="fa-solid fa-trash-can"></i>
                                </span>
                            </div>
                            <img src="https://i.postimg.cc/brf9L1tT/placeholder.png">
                        </div>
                        <div class="productContent flex flexCol">
                            <h1>
                                <a href="">
                                    Product Title
                                </a>
                            </h1>
                            <span class="productPrice flex flexRow">
                                <h2 class="price">Rs. 152.00</h2>
                                <h2 class="discPrice">Rs. 190.00</h2>
                            </span>
                            <button class="addToCartBtn flex flexRow">
                                <i class="fa-solid fa-cart-plus"></i>
                                Add to Cart
                            </button>
                        </div>
                    </div>
                    
                    <div class="productCard flex flexCol">
                        <div class="productImg flex">
                            <div class="productIcons flex flexRow">
                                <span class="discIndicator">
                                    -20%
                                </span>
                                <span class="wishlistIndicator">
                                    <i class="fa-solid fa-trash-can"></i>
                                </span>
                            </div>
                            <img src="https://i.postimg.cc/brf9L1tT/placeholder.png">
                        </div>
                        <div class="productContent flex flexCol">
                            <h1>
                                <a href="">
                                    Product Title
                                </a>
                            </h1>
                            <span class="productPrice flex flexRow">
                                <h2 class="price">Rs. 152.00</h2>
                                <h2 class="discPrice">Rs. 190.00</h2>
                            </span>
                            <button class="addToCartBtn flex flexRow">
                                <i class="fa-solid fa-cart-plus"></i>
                                Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
                
                
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
