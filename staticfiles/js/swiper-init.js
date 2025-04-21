document.addEventListener('DOMContentLoaded', function () {
    const swiper = new Swiper('.swiper-container', {
        loop: true, // Enable looping
        autoplay: {
            delay: 2000, // Delay between slides in milliseconds
            disableOnInteraction: false, // Continue autoplay after user interaction
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });

    // Payment Carousel Swiper
    const paymentSwiper = new Swiper('.payment-carousel', {
        loop: true, // Enable infinite looping
        autoplay: {
            delay: 2000, // Delay between slides in milliseconds
            disableOnInteraction: false, // Continue autoplay after user interaction
        },
        slidesPerView: 'auto', // Show multiple slides at once
        spaceBetween: 20, // Space between slides
    });
});
