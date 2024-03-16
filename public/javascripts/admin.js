const userPic = document.querySelector('.user-pic');
const subMenu = document.querySelector('.sub-menu-wrap');

userPic.addEventListener('click', function () {
  subMenu.classList.toggle('open-menu');
});