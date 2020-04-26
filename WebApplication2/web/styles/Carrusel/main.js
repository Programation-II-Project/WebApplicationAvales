/* global M */

document.addEventListener('DOMContentLoaded', () => {
    const elementosCarousel = document.querySelectorAll('.carousel');
    M.Carousel.init(elementosCarousel, {
        duration: 110,
        dist: 0,
        shift: 2,
        padding: 3
    });
});

