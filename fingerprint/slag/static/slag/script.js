let slider = document.querySelector(".slider-container")
let individualSlider = document.querySelectorAll(".slider-content")
let counter=1;
let width = individualSlider[0].clientWidth;
let interval = 3000;


window.addEventListener("resize",function(){
    width = individualSlider[0].clientWidth;
})
setInterval(function(){
    slides();
},interval);
function slides(){
    slider.style.transform = "translate("+(-width*counter)+"px)";
    slider.style.transition = "transform 1s";
    counter++;
    if(counter == individualSlider.length){
        setTimeout(function(){
            slider.style.transform = "translate(0px)";
            // slider.style.transition = "transform 0s";
            counter=1;
        },3000)
    }
}