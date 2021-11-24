const slides = document.querySelector('.slides'); //전체 슬라이드 컨테이너
const slideImg = document.querySelectorAll('.slides li');
let currentIdx = 0; //현재 슬라이드 index
const slideCount = slideImg.length; //슬라이드 개수
const prev = document.querySelector('.prev');
const next = document.querySelector('.next');
const slideWidth = 1000;
const slideMargin = 100;

//전체 슬라이드 컨테이너 넓이 설정
slides.style.width = (slideWidth + slideMargin) * slideCount + 'px';

function moveSlide(num) {
  slides.style.left = -num * slideWidth + 'px';
  currentIdx = num;
}

prev.addEventListener('click', function() {
  if(currentIdx !== 0) moveSlide(currentIdx - 1);
});

next.addEventListener('click', function() {
  if(currentIdx !== slideCount - 1) moveSlide(currentIdx + 1);
});