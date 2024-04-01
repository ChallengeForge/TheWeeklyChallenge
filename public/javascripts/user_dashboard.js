const hamBurger = document.querySelector(".toggle-btn");
hamBurger.addEventListener("click", function () {
    const sidebar = document.querySelector("#sidebar");
    sidebar.classList.toggle("expand");
    const caretIcon = document.querySelector(".toggle-btn i");
    caretIcon.classList.toggle("fa-caret-right");
    caretIcon.classList.toggle("fa-caret-left");
    caretIcon.classList.toggle("black"); // Add a class to change the color to black
});


  // Function to toggle between blue mode and dark modedocument.addEventListener('DOMContentLoaded', function() {
    document.addEventListener('DOMContentLoaded', function() {
      var dropdownItems = document.querySelectorAll('.dropdown li');

      dropdownItems.forEach(function(item) {
          item.addEventListener('click', function(event) {
              event.preventDefault();
              var theme = event.target.parentElement.classList[1];
              setTheme(theme);
          });
      });

      function setTheme(theme) {
          var blueModeStyle = document.getElementById('blue-mode');
          var darkModeStyle = document.getElementById('dark-mode');
          var defaultStyle = document.getElementById('default-style');

          if (theme === 'theme3') {
              blueModeStyle.disabled = false;
              darkModeStyle.disabled = true;
              defaultStyle.disabled = true;
          } else if (theme === 'theme2') {
              blueModeStyle.disabled = true;
              darkModeStyle.disabled = false;
              defaultStyle.disabled = true;
          } else {
              blueModeStyle.disabled = true;
              darkModeStyle.disabled = true;
              defaultStyle.disabled = false;
          }
      }
  });