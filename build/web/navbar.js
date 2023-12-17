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
    html += '<span id="catDropdownSpan" style="display: flex; flex-direction: row; gap: 10px; align-items: center; cursor: pointer;">All Categories';
    html += '<i class="fa-solid fa-angle-down"></i></span>';
    
    html += '<div class="catDropdownContent">';
    html += '<table>';
    html += '<tr>';
    html += '<td><a href="categories/beverages.jsp">Beverages</a></td>';
    html += '<td><a href="categories/biscuits.jsp">Biscuits</a></td>';
    html += '<td><a href="categories/cereals.jsp">Cereals</a></td>';
    html += '</tr>';
    
    html += '<tr>';
    html += '<td><a href="categories/cosmetics.jsp">Cosmetics</a></td>';
    html += '<td><a href="categories/desserts.jsp">Desserts</a></td>';
    html += '<td><a href="categories/flours.jsp">Flours</a></td>';
    html += '</tr>';
    
    html += '<tr>';
    html += '<td><a href="categories/fruits.jsp">Fruits</a></td>';
    html += '<td><a href="categories/medicine.jsp">Medicine</a></td>';
    html += '<td><a href="categories/pastaNoodles.jsp">Pasta & Noodles</a></td>';
    html += '</tr>';
    
    html += '<tr>';
    html += '<td><a href="categories/sauces.jsp">Sauces</a></td>';
    html += '<td><a href="categories/snacks.jsp">Snacks</a></td>';
    html += '<td><a href="categories/soapsLiquids.jsp">Soaps & Cleaning</a></td>';
    html += '</tr>';
    
    html += '<tr>';
    html += '<td><a href="categories/spreads.jsp">Spreads</a></td>';
    html += '<td><a href="categories/stationary.jsp">Stationary</a></td>';
    html += '<td><a href="categories/vegetables.jsp">Vegetables</a></td>';
    html += '</tr>';
    html += '</table>';
    html += '</div>';
    html += '</div>';
    
    html += '<form class="searchBox" id="searchBox">';
    html += '<input type="search" id="searchField" class="searchField" placeholder="Search" title="Search" required>';
    html += '<button type="submit" id="searchBtn" class="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button>';
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



// SEARCH BOX
var searchBox = document.getElementById('searchBox');
var searchField = document.getElementById('searchField');
var searchBtn = document.getElementById('searchBtn');

// When Search Field is Focused
searchField.addEventListener('focus', function() {
    // Search Box
    searchBox.style.border = '1px solid #1DA31A';
    searchBox.style.transition = '0.5s';
    // Search Button
    searchBtn.style.color = '#1DA31A';
    searchBtn.style.transition = '0.5s';
});
// When Search Field is Not Focused
searchField.addEventListener('blur', function() {
    // Search Box
    searchBox.style.border = '1px solid transparent';
    searchBox.style.transition = '0.5s';
    // Search Button
    searchBtn.style.color = '#808080';
    searchBtn.style.transition = '0.5s';
});