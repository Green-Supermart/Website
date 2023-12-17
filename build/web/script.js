/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


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