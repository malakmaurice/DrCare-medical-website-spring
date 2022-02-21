
//section variables
const header_section = document.querySelector(".header-section");
const Slider = document.querySelector(".slider");
const service = document.querySelector(".service-container");
const about_drcare = document.querySelector(".about-drcare");
const department = document.querySelector(".department");
const doctor = document.querySelector(".doctor");
const booking = document.querySelector(".booking");
const scroll_animations = Array.from(document.querySelectorAll(".scroll-animations .animate__animated"));
const pricing = document.querySelector(".pricing");
const patient = document.querySelector(".patient");
// end section variables
var slideindex = 1;
var patientSlideIndex = 1;
// f is flag variable to indecate between manual and anutomatic slide
var f = 1;
showSlide(slideindex);
function currentSlide(n, flag = 1) {
    f = 0;
    if (flag)
        showSlide(slideindex = n);
    else
        showSlide(patientSlideIndex = n);

}
function showSlide() {
    var i;
    var slides = document.getElementsByClassName("slide");
    var patientSlide = document.querySelectorAll(".patient-slide");
    var dots = document.getElementsByClassName("dot");
    var patientDot = document.querySelectorAll(".patient .dot");

    if (slideindex > slides.length) slideindex = 1;
    if (patientSlideIndex > patientSlide.length) patientSlideIndex = 1;

    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < patientSlide.length; i++) {
        patientSlide[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    for (i = 0; i < patientDot.length; i++) {
        patientDot[i].className = patientDot[i].className.replace(" active", "");
    }

    slides[slideindex - 1].style.display = "block";
    patientSlide[patientSlideIndex - 1].style.display = "block";
    dots[slideindex].className += " active";
    patientDot[patientSlideIndex - 1].className += " active";

    let url = patientSlide[patientSlideIndex - 1].dataset.url;
    patientSlide[patientSlideIndex - 1].firstElementChild.firstElementChild.style.background = `url(${url}) no-repeat`;
    patientSlide[patientSlideIndex - 1].firstElementChild.firstElementChild.style.backgroundSize = "contain";

    if (f) {
        slideindex++;
        patientSlideIndex++;
        setTimeout(showSlide, 2000);
    }
}
// remove fadeIn animation from slider
setTimeout(() => {
    document.querySelector(".slider .content").classList.remove("animate__fadeInUp");
}, 2000);
// end of removing fadeIn animation from slider
const num = document.querySelectorAll(".counter");
var i = 1;
var j = 0;
var h = 1;
var m = 1;
var a, b, c, d, flag = 1;

function isScrolledIntoView(ele) {
    var docViewTop = document.documentElement.scrollTop;
    var docViewBottom = docViewTop + window.innerHeight;

    var elemTop = ele.offsetTop;
    var elemBottom = elemTop + ele.offsetHeight;
    // console.log(elemTop);
    return docViewBottom >= elemTop && docViewTop <= elemBottom;
}
window.onscroll = function () { myFunction() };
function myFunction() {
    // var currentScroll = document.documentElement.scrollTop;
    // currentScroll >= (booking.offsetTop) - 550 && currentScroll <= booking.offsetTop + booking.offsetHeight / 2)
    if (flag === 1 && isScrolledIntoView(booking) === true) {
        flag = 0;
        a = setInterval(myLoop, 300);
        b = setInterval(myLoop2, 2);
        c = setInterval(myLoop3, 9000 / 83);
        d = setInterval(myLoop4, 30);
    }
    // add animation class to elements when scrolling into view
    scroll_animations.forEach(element => {
        if (isScrolledIntoView(element) === true) {
            if (element.classList.contains("fadeleft"))
                element.classList.add("animate__fadeInLeft");
            else
                element.classList.add("animate__fadeInUp");
        }
    });
}

function myLoop() {
    if (i > 30)
        clearInterval(a);
    else {
        num[0].textContent = i;
        i++;
    }

};
function myLoop2() {
    if (j > 4500)
        clearInterval(b);
    else {
        num[1].textContent = j;
        j += 2;
    }

};
function myLoop3() {
    if (h > 83)
        clearInterval(c);
    else {
        num[2].textContent = h;
        h++;
    }

};
function myLoop4() {
    if (m > 300)
        clearInterval(d);
    else {
        num[3].textContent = m;
        m++;
    }

};

const item = document.querySelector(".department .menu");
item.addEventListener("click", myfun);
function myfun(e) {
    console.log(e);
    const active = document.querySelectorAll(".department .active");
    for (let h = 0; h < active.length; h++)
        active[h].className = active[h].className.replace("active", "");
    e.target.className += " active";
    const blo = document.querySelector('.department .description h1');
    blo.textContent = e.target.classList[1] + " Departments";
    const dep = document.querySelector(".department .dep");
    dep.className += " w3-animate-opacity";
    const img = document.querySelector(".department .dep .photo");
    var url;
    switch (e.target.classList[1]) {
        case 'Surgical':
            url = "url(./images/ezgif.com-gif-maker.jpg)";
            break;
        case 'Dental':
            url = "url(./images/dental.jpg)";
            break;
        case 'Ophthalmology':
            url = "url(./images/Ophthalmology.jpg)";
            break;
        case 'Cardiology':
            url = "url(./images/Cardiology.jpg)";
            break;
        case 'Neurolgy':
            url = "url(./images/Neurolgy.jpg)";
            break;
    }
    img.style.backgroundImage = url;
    setTimeout(function () { dep.className = "dep"; }, 1000);
}
// nav-bar event on click

const nav_bar = Array.from(document.querySelectorAll(".nav-bar li"));
nav_bar.forEach(element => {
    element.addEventListener("click", displayNavBar);
});
function displayNavBar(e) {
    switch (e.target.textContent) {
        case 'HOME':
            displayHome();
            break;
        case 'ABOUT':
            displayAbout();
            break;
        case 'DOCTOR':
            dispalyDoctor();
            break;
        case 'DEPARTMENTS':
            displayDepartment();
            break;
        case 'PRICING':
            displayPricing();
            break;
    }
}
function displayAbout() {
    header_section.style.display = "block";
    let h1, p;
    Slider.style.display = "none";
    service.style.display = "none";
    about_drcare.style.display = "flex";
    booking.style.display = "flex";
    department.style.display = "none";
    doctor.style.display = "none";
    pricing.style.display = "none";
    h1 = "About Us";
    P = "ABOUT US";
    const html = `
        <h1>${h1}</h1>
        <p><span style= "cursor: pointer"onclick="displayHome()" >HOME</span> > ${P} > </p>`;
    header_section.firstElementChild.firstElementChild.innerHTML = html;
}
function dispalyDoctor() {
    header_section.style.display = "block";
    let h1, p;
    Slider.style.display = "none";
    service.style.display = "none";
    about_drcare.style.display = "none";
    booking.style.display = "none";
    department.style.display = "none";
    doctor.style.display = "flex";
    patient.style.display = "none"
    pricing.style.display = "none";
    h1 = "Qualified Doctors";
    P = "DOCTOR";
    const html = `
        <h1>${h1}</h1>
        <p><span style= "cursor: pointer"onclick="displayHome()" >HOME</span> > ${P} > </p>`;
    header_section.firstElementChild.firstElementChild.innerHTML = html;
}
function displayDepartment() {
    header_section.style.display = "block";
    let h1, p;
    Slider.style.display = "none";
    service.style.display = "none";
    about_drcare.style.display = "none";
    doctor.style.display = "none";
    booking.style.display = "none";
    department.style.display = "block";
    patient.style.display = "none"
    pricing.style.display = "none";
    h1 = "Clinical Department";
    P = "DEPARTMENT";
    const html = `
        <h1>${h1}</h1>
        <p><span style= "cursor: pointer"onclick="displayHome()" >HOME</span> > ${P} > </p>`;
    header_section.firstElementChild.firstElementChild.innerHTML = html;
}

function displayPricing() {
    header_section.style.display = "block";
    let h1, p;
    Slider.style.display = "none";
    service.style.display = "none";
    about_drcare.style.display = "none";
    doctor.style.display = "none";
    booking.style.display = "none";
    department.style.display = "block";
    patient.style.display = "none"
    pricing.style.display = "block";
    h1 = "Pricing";
    P = "PRICING";
    const html = `
        <h1>${h1}</h1>
        <p><span style= "cursor: pointer"onclick="displayHome()" >HOME</span> > ${P} > </p>`;
    header_section.firstElementChild.firstElementChild.innerHTML = html;
}

function displayHome() {
    header_section.style.display = "none";
    Slider.style.display = "block";
    service.style.display = "flex";
    about_drcare.style.display = "flex";
    booking.style.display = "flex";
    department.style.display = "block";
    doctor.style.display = "flex";
    patient.style.display = "block"
    pricing.style.display = "block";
}
let pricePlan = Array.from(document.querySelectorAll(".price-plan .plan"));
pricePlan.forEach(element => {
    element.addEventListener("mouseenter", e => {
        e.target.querySelector(".price").style.color = "#ff8000";
        e.target.querySelector(".price-btn").style.background = "#ff8000";
        e.target.querySelector(".content").style.border = "2px #ff8000 solid";
    });
    element.addEventListener("mouseleave", e => {
        e.target.querySelector(".price").style.color = "rgb(47, 137, 252)";
        e.target.querySelector(".price-btn").style.background = "rgb(47, 137, 252)";
        e.target.querySelector(".content").style.border = "2px #2f89fc solid";
    })
});
