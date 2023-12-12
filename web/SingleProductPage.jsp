<%-- 
    Document   : SingleProductPage
    Created on : 10 Dec 2023, 10:37:42
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
        
        <title>Deals | GREEN Supermart</title>
        
        <link rel="icon" href="https://i.postimg.cc/MKJm2kGp/favicon.png">
        
        <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" as="style" type="text/css" crossorigin>
        
        <script src="script.js" defer></script>
    </head>
    
    <body>
        
        <!-- NAVBAR START ============================================================-->
        <nav id="navbar"></nav>
        <script src="navbar.js"></script>
        <!--============================================================== NAVBAR END -->
        
        
        <!-- PAGE-CONTENT START ======================================================-->
       
<main>
  <div class="container">
    <div class="grid second-nav">
      <div class="column-xs-12">
        <nav>
          <ol class="breadcrumb-list">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Soaps</a>
            <li class="breadcrumb-item active">Pears Baby Soap Venivel & Turmeric</li>
          </ol>
        </nav>
      </div>
    </div>
    <div class="grid product">
      <div class="column-xs-12 column-md-7">
        <div class="product-gallery">
          <div class="product-image">
            <img class="active" src="https://s3-alpha-sig.figma.com/img/9fa7/4913/9fbfd7724337d1f1a7c8251124c9cffe?Expires=1703462400&Signature=G6BLXX4o~FRRtEXafUkspWycfuxr-TK9zNfWUjJ2sdaErcicaqhPlvBbeg9bpCOWX8qm0COOgBfIK2EYlCsj-6H5iEWGGlTYeZGc78jx5eBWL4Z~5qcpaT6VziQL0KjgUHMNa1Y6~CUoYN~obJz1XNT82Bdatn8utbzZqWvz0JFdc6Ve-ee1pyv77aYo1~mo~bpiLLEzrKKbdl69S0OAiSmMi2o3wdDWv3E8P0mCip1zvSOVm9cHN47M5JxiSK3lIm6h2vRcfEnSNLakr7baJd97ZXpdQonAXhL42uguzBZlU8nkDd0SGryeyn13QDqwhUz~U9IiT10WRDhF5wqLnw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4">
          </div>
          <ul class="image-list">
            <li class="image-item"><img src="https://s3-alpha-sig.figma.com/img/9fa7/4913/9fbfd7724337d1f1a7c8251124c9cffe?Expires=1703462400&Signature=G6BLXX4o~FRRtEXafUkspWycfuxr-TK9zNfWUjJ2sdaErcicaqhPlvBbeg9bpCOWX8qm0COOgBfIK2EYlCsj-6H5iEWGGlTYeZGc78jx5eBWL4Z~5qcpaT6VziQL0KjgUHMNa1Y6~CUoYN~obJz1XNT82Bdatn8utbzZqWvz0JFdc6Ve-ee1pyv77aYo1~mo~bpiLLEzrKKbdl69S0OAiSmMi2o3wdDWv3E8P0mCip1zvSOVm9cHN47M5JxiSK3lIm6h2vRcfEnSNLakr7baJd97ZXpdQonAXhL42uguzBZlU8nkDd0SGryeyn13QDqwhUz~U9IiT10WRDhF5wqLnw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"></li>
            <li class="image-item"><img src="https://i.ebayimg.com/images/g/XQAAAOSw-spi7zlq/s-l140.jpg"></li>
            <li class="image-item"><img src="https://i.ebayimg.com/images/g/JAMAAOSw2-li7zj2/s-l140.jpg"></li>
          </ul>
        </div>
      </div>
      <div class="column-xs-12 column-md-5">
        <h1>Pears Baby Soap Venivel & Turmeric</h1>
        <p>By Pears</p>
        <h2>Rs. 152.00</h2>
        
        <button class="add-to-cart">Add To Cart</button>
      </div>
    </div>
  </div>
</main>
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

