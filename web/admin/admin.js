/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var imageDropzone = document.getElementById("imageDropzone");
var productImage = document.getElementById("productImage");
const imageDropzoneMsg = document.getElementById("imageDropzoneMsg");
const imageIndicator = document.getElementById("imageIndicator");

imageDropzone.addEventListener("drop", function(event) {
    event.preventDefault();
    
    var file = event.dataTransfer.files[0];
    var input = document.getElementById("productImage");
    input.files = event.dataTransfer.files;
});

imageDropzone.addEventListener("click", function(event) {
    var input = document.getElementById("productImage");
    input.click();
});

productImage.addEventListener("change", function(event) {
    var file = event.target.files[0];
    imageIndicator.innerHTML = file.name;
    imageDropzoneMsg.style.display = "none";
    setImageBackground();
    console.log(file);
});

// set uploaded image as the background of the imageDropzone
function setImageBackground() {
    var file = productImage.files[0];
    var reader = new FileReader();
    reader.onload = function(e) {
        imageDropzone.style.backgroundImage = "url(" + e.target.result + ")";
        imageDropzone.style.backgroundSize = "contain";
        imageDropzone.style.backgroundRepeat = "no-repeat";
        imageDropzone.style.backgroundPosition = "center";
    };
    reader.readAsDataURL(file);
}