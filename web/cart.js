/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const cartIcon = document.getElementById("cartIcon");
const cartBackdrop = document.getElementById("cartBackdrop");
const cartBackIcon = document.getElementById("cartBackIcon");
const cartBox = document.getElementById("cartBox");
const cartCancelBtn = document.getElementById("cartCancelBtn");
const cartListContainer = document.getElementById("cartListContainer");
const cartList = document.getElementById("cartList");

function noScroll() {
    document.body.style.overflow = "hidden";
}

function scroll() {
    document.body.style.overflow = "auto";
}

// show cartBox
function showCart() {
    cartBackdrop.style.display = "block";
    cartBox.style.display = "flex";
    document.body.style.overflow = "hidden";
}

// hide cartBox
function hideCart() {
    cartBackdrop.style.display = "none";
    cartBox.style.display = "none";
    document.body.style.overflow = "auto";
}


cartIcon.addEventListener('click', function() {
    if (cartBackdrop.style.display === "none") {
        showCart();
    } else {
        hideCart();
    }
});

// hide cartBox when clicked outside
document.addEventListener('click', function(event) {
    if (!cartIcon.contains(event.target)) {
        cartBackdrop.style.display = "none";
        cartBox.style.display = "none";
        document.body.style.overflow = "auto";
    }
});
cartBox.addEventListener('click', function(event) {
    event.stopPropagation();
});
cartBackIcon.addEventListener('click', function(event) {
    cartBackdrop.style.display = "none";
    cartBox.style.display = "none";
    document.body.style.overflow = "auto";
});
cartCancelBtn.addEventListener('click', function(event) {
    cartBackdrop.style.display = "none";
    cartBox.style.display = "none";
    document.body.style.overflow = "auto";
});


// when pressed alt key + c, toggle cartBox show/hide
document.addEventListener('keydown', function(event) {
    if (event.altKey && event.key === "c") {
        if (cartBackdrop.style.display === "none") {
            showCart();
        } else {
            hideCart();
        }
    }
});



// do saveCartList() every 5 seconds and whenever cartList is changed
setInterval(function() {
    saveCartList();
}, 5000);
cartList.addEventListener('change', function() {
    saveCartList();
});

// save cartList in localStorage
function saveCartList() {
    localStorage.setItem('cartList', cartList.innerHTML);
}


// load cartList from localStorage every time the page is loaded and every 1 second
window.addEventListener('load', function() {
    cartList.innerHTML = localStorage.getItem('cartList');
});
setInterval(function() {
    cartList.innerHTML = localStorage.getItem('cartList');
}, 5000);

const cartAddBtn = document.getElementById("cartAddBtn");

cartAddBtn.addEventListener('click', function() {
    const cartItemDiv = document.createElement('div');
    cartItemDiv.classList.add('cartItem');
    cartItemDiv.innerHTML = `
    <div style="height: 100%; width: 50px;">
    <img style="height: 100%; width: 100%; object-fit: cover; border-radius: 5px;" src="https://i.postimg.cc/brf9L1tT/placeholder.png" alt="Product Image">
    </div>
    <div style="height: 100%; width: calc(100% - 165px); display: flex; flex-direction: column; justify-content: center;">
    <h1 style="font-size: 12px; font-weight: 400;">Product Title</h1>
    <h2 style="font-size: 10px; font-weight: 300;">Quantity: 2</h2>
    </div>
    <div class="cartItemAction" style="height: 100%; width: 70px; display: flex; justify-content: end; align-items: center; margin-right: 15px;">
    <i class="fa-solid fa-trash-can"></i>
    <p class="cartItemPrice">Rs. <span class="cartItemPrice">500</span></p>
    </div>
    `;
    cartList.appendChild(cartItemDiv);
});

// whenever cartAddBtn is clicked, update cartItemCount and do saveCartList()
cartAddBtn.addEventListener('click', function() {
    saveCartList();
});

// whenever "i" element in cartItem clicked, remove the included cartItem element from the cartList
cartList.addEventListener('click', function(event) {
    if (event.target.classList.contains('fa-trash-can')) {
        event.target.parentElement.parentElement.remove();
        saveCartList();
    }
});

const cartEmptyMsg = document.getElementById("cartEmptyMsg");

// check if there is any cartItem in cartList, if not, show "Your cart is empty" message
setInterval(function() {
    if (cartList.innerHTML === "") {
        cartEmptyMsg.style.display = 'flex';
    } else {
        cartEmptyMsg.style.display = 'none';
    }
}, 1000);