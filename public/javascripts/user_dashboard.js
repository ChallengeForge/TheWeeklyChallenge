const hamBurger = document.querySelector(".toggle-btn");
hamBurger.addEventListener("click", function () {
    const sidebar = document.querySelector("#sidebar");
    sidebar.classList.toggle("expand");
    const caretIcon = document.querySelector(".toggle-btn i");
    caretIcon.classList.toggle("fa-caret-right");
    caretIcon.classList.toggle("fa-caret-left");
    caretIcon.classList.toggle("black"); // Add a class to change the color to black
});


function goDark() {
    // setting local storage value theme = dark
    localStorage.setItem("theme", "dark");
    //removing all possible classes of the other 2 modes
    header.classList.remove("blue-mode");
    body.classList.remove("blue-mode");
    dropdown.classList.remove("blue-mode");
    body.classList.add("dark-mode");
  
    if (hero || client) {
      hero.classList.remove("blue-mode");
      hero.classList.add("dark-mode");
      client.classList.add("dark-mode");
    }
    if (mainSection) {
      mainSection.classList.remove("blue-mode");
      mainSection.classList.add("dark-mode");
    }
  
    footer.classList.remove("blue-mode");
    footer.classList.add("dark-mode");
  
    // adding dark mode
  }
  
  function goLight() {
    localStorage.setItem("theme", "light");
    header.classList.remove("blue-mode");
    dropdown.classList.remove("blue-mode");
    body.classList.remove("dark-mode");
    body.classList.remove("blue-mode");
  
    if (hero || client) {
      hero.classList.remove("dark-mode");
      hero.classList.remove("blue-mode");
      client.classList.remove("dark-mode");
    }
  
    if (mainSection) {
      mainSection.classList.remove("blue-mode");
      mainSection.classList.remove("dark-mode");
    }
  
    footer.classList.remove("blue-mode");
    footer.classList.remove("dark-mode");
  }
  
  function goBlue() {
    localStorage.setItem("theme", "blue");
    body.classList.remove("dark-mode");
    dropdown.classList.add("blue-mode");
    header.classList.add("blue-mode");
    body.classList.add("blue-mode");
  
    if (hero || client) {
      hero.classList.remove("dark-mode");
      client.classList.remove("dark-mode");
      hero.classList.add("blue-mode");
    }
  
    if (mainSection) {
      mainSection.classList.remove("dark-mode");
      mainSection.classList.add("blue-mode");
    }
  
    footer.classList.remove("dark-mode");
    footer.classList.add("blue-mode");
  }
  
  document.querySelector(".theme1").addEventListener("click", goLight, false); // Tells the first button to run the goLight function when clicked
  
  document.querySelector(".theme2").addEventListener("click", goDark, false); // Tells the second button to run the goDark function when clicked
  
  document.querySelector(".theme3").addEventListener("click", goBlue, false);
  
