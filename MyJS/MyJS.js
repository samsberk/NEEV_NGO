//====================================== Owl carousel =====================================================

$(document).ready(function () {
    $('.loop').owlCarousel({
        center: true,
        items: 1,
        loop: true,
        nav: true,
        autoPlay: 50,
        margin: 10,
        responsive: {
            600: {
                items: 2
            },
            1100: {
                items: 4
            }
        }
    });
})