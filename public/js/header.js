// Scroll to top button

window.onscroll = function(){scrollFunction()};
var buttonScroll = document.getElementById("scroll__top");

buttonScroll.addEventListener("click",function(){
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
});

function scrollFunction(){
	if(document.body.scrollTop > 30 || document.documentElement.scrollTop > 30){
		buttonScroll.style.display = "block";
	}
	else{
		buttonScroll.style.display = "none";
	}
}

