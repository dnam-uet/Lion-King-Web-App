// Handle Slide show

var buttons = document.getElementsByClassName("dot");
var images = document.getElementsByClassName("main__slideshow-element");
function currentSlide(slide){
	for(var image of images){
		image.style.display = "none";
	}
	images[slide].style.display = "block";
	buttons[slide].class += " active";
}
currentSlide(0);