$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
});

$(".click-on").click(function () {
    $(".after-click").fadeIn();
});
var loader = document.getElementById("loader");
window.addEventListener("load", function () {
    $("#loader").fadeOut();
    if ($("#informer").text() === "new") {
        $(".notcon").show();
        window.setTimeout(function () {
            $(".notification-box").addClass("showNotice");
        }, 2000);
    }
    else if ($("#informer").text() === "QueryNotSubmitted") {
        $(".notcon").show();
        window.setTimeout(function () {
            $(".notification-box").addClass("showNotice");
        }, 2000);
    }
});
$(".stop-loading").click(function () {
    $(".after-click").fadeOut();
    $("#loader").fadeOut();
});

$(".close-notice").click(function () {
    $(".notcon").fadeOut("slow");
});
//-----------------Mob Menu-------------------
$(".toggle-menu").click(function () {
    $(".mob-menu").slideToggle();
});

//============== Owl Carousel =-=-=-=-=-=-=-=-=-
$(document).ready(function () {
    $('.owl-carousel').owlCarousel();
});




/*
		$("#dumbtn").click(function () {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 1000);
		});
		$(".close-notice").click(function () {
			$(".notcon").fadeOut("slow");
		});
 */