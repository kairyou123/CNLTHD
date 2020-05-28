var swiper = new Swiper('.swiper-container', {
  slidesPerView: 4,
  spaceBetween: 10,
  slidesPerGroup: 4,
  loop: true,
  loopFillGroupWithBlank: false,
  // autoplay: {
  //   delay: 5500,
  //   disableOnInteraction: false,
  // },
  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});
