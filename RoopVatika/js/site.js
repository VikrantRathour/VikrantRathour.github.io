// Fix Header JS
window.onscroll = function () { myFunction() };

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
    if (window.pageYOffset > sticky) {
        header.classList.add("sticky");
    } else {
        header.classList.remove("sticky");
    }
}


// Blog Section Active InActive Tab JS
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();


// Slick Slider JS In Testimonial
$('.autoplay').slick({
    autoplay: true,
    dots: false,
    infinite: true,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 1,
    responsive: [
        {
            breakpoint: 1024,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3,
                infinite: true,
                dots: true
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }

    ]
});

$('.testimonial-content').slick({
    autoplay: true
});



// On Click Show Search Panel and Shopping Cart JS
$('.toolbar-btn').on('click', function (e) {
    e.preventDefault();
    e.stopPropagation();
    var $this = $(this);
    var target = $this.attr('href');
    var prevTarget = $this
        .parent()
        .siblings()
        .children('.toolbar-btn')
        .attr('href');
    $(target).toggleClass('open');
    $(prevTarget).removeClass('open');
});

// On Click Close Search Panel and Shopping Cart
$('.btn-close, .btn-close-btn').on('click', function (e) {
    e.preventDefault();
    var $this = $(this);
    $this.parents('.open').removeClass('open');
});


// Top Header Currency Dropdown JS
$('.currency-dropdown > a').click(function () {
    $(this).parent().siblings().find('ul').fadeOut(200);
    $(this).next('ul').stop(true, false, true).fadeToggle(200);
    return false;
});

// On Click Active Currency button
$('.header-left-box ul li a').click(function () {
    $('.header-left-box ul li a').removeClass("activeCurrency");
    $(this).addClass("activeCurrency");
});


// Out Side Click Remove Submenu Dropdown None JS
//$('body').click(function () {
//    $('.header-left-box ul li ul').css('display', 'none');
//    $('.offcanvas-minicart_wrapper').removeClass('open');
//});