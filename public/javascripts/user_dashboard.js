const hamBurger = document.querySelector(".toggle-btn");
hamBurger.addEventListener("click", function () {
    const sidebar = document.querySelector("#sidebar");
    sidebar.classList.toggle("expand");
    const caretIcon = document.querySelector(".toggle-btn i");
    caretIcon.classList.toggle("fa-caret-right");
    caretIcon.classList.toggle("fa-caret-left");
    caretIcon.classList.toggle("black"); // Add a class to change the color to black
});

(function() {


    /**
   * Mobile nav toggle
   */
  on("click", ".mobile-nav-toggle", function (e) {
    select("#navbar").classList.toggle("navbar-mobile");
    this.classList.toggle("bi-list");
    this.classList.toggle("bi-x");
  });

  /**
   * Mobile nav dropdowns activate
   */
  on(
    "click",
    ".navbar .dropdown > a",
    function (e) {
      if (select("#navbar").classList.contains("navbar-mobile")) {
        e.preventDefault();
        this.nextElementSibling.classList.toggle("dropdown-active");
      }
    },
    true,
  );

  /**
   * Scroll with offset on links with a class name .scrollto
   */
  on(
    "click",
    ".scrollto",
    function (e) {
      if (select(this.hash)) {
        e.preventDefault();

        let navbar = select("#navbar");
        if (navbar.classList.contains("navbar-mobile")) {
          navbar.classList.remove("navbar-mobile");
          let navbarToggle = select(".mobile-nav-toggle");
          navbarToggle.classList.toggle("bi-list");
          navbarToggle.classList.toggle("bi-x");
        }
        scrollto(this.hash);
      }
    },
    true,
  );

  /**
   * Scroll with ofset on page load with hash links in the url
   */
  window.addEventListener("load", () => {
    if (window.location.hash) {
      if (select(window.location.hash)) {
        scrollto(window.location.hash);
      }
    }
  });

});

  
    // Function to set default mode
    function setDefaultMode() {
        document.body.classList.remove('dark-mode');
        document.body.classList.remove('blue-mode');
    }

    // Function to set dark mode
    function setDarkMode() {
        document.body.classList.add('dark-mode');
        document.body.classList.remove('blue-mode');
    }

    // Function to set blue mode
    function setBlueMode() {
        document.body.classList.add('blue-mode');
        document.body.classList.remove('dark-mode');
    }

    // Add event listeners
    document.getElementById('defaultMode').addEventListener('click', setDefaultMode);
    document.getElementById('darkMode').addEventListener('click', setDarkMode);
    document.getElementById('blueMode').addEventListener('click', setBlueMode);

    // Initially set default mode
    setDefaultMode();


