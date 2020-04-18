

// Handle Slide show


var slideIndex = 1;
currentSlide(slideIndex);

function currentSlide(slide){
	showSlide(slideIndex = slide);
}

function plusSlides(slide){
	showSlide(slideIndex += slide);
}

function showSlide(slide){
	var images = document.getElementsByClassName("main__slideshow-element");
	var buttons = document.getElementsByClassName("dot");
	if(slideIndex > images.length){
		slideIndex = 1;
	}
	else if(slideIndex < 1){
		slideIndex = images.length;
	}
	for(var button of buttons){
		button.className = button.className.replace(" active","");
	}
	for(var image of images){
		image.style.display = "none";
	}
	images[slideIndex-1].style.display = "block";
	buttons[slideIndex-1].className += " active";
}