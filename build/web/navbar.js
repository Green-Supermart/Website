/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function navbarHTML() {
    var html = '<div class="navContainer">';
    html += '<a class="navLogo" href="/Website">';
    html += '<img src="https://i.postimg.cc/G9nCKgLp/green-Logo.png" alt="Logo">';
    html += '</a>';
    
    html += '<div class="catDropdown">';
    html += 'All Categories';
    html += '<i class="fa-solid fa-angle-down"></i>';
    html += '</div>';
    
    html += '<form class="searchBox">';
    html += '<input type="search" class="searchField" placeholder="Search" title="Search" required>';
    html += '<button type="submit" class="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button>';
    html += '</form>';
    
    html += '<div class="actionIcons flex flexRow">';
    html += '<a href="../wishlist.jsp" title="Wishlist">';
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