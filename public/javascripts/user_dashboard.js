const hamBurger = document.querySelector(".toggle-btn");
hamBurger.addEventListener("click", function () {
    const sidebar = document.querySelector("#sidebar");
    sidebar.classList.toggle("expand");
    const caretIcon = document.querySelector(".toggle-btn i");
    caretIcon.classList.toggle("fa-caret-right");
    caretIcon.classList.toggle("fa-caret-left");
    caretIcon.classList.toggle("black"); // Add a class to change the color to black
});
