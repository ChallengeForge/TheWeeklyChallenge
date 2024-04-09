(function () {
  "use strict";

  /**
   * Easy selector helper function
   */
  const select = (el, all = false) => {
    el = el.trim();
    if (all) {
      return [...document.querySelectorAll(el)];
    } else {
      return document.querySelector(el);
    }
  };

  /**
   * Easy event listener function
   */
  const on = (type, el, listener, all = false) => {
    let selectEl = select(el, all);
    if (selectEl) {
      if (all) {
        selectEl.forEach((e) => e.addEventListener(type, listener));
      } else {
        selectEl.addEventListener(type, listener);
      }
    }
  };

  /**
   * Easy on scroll event listener
   */
  const onscroll = (el, listener) => {
    el.addEventListener("scroll", listener);
  };

  /**
   * Navbar links active state on scroll
   */
  let navbarlinks = select("#navbar .scrollto", true);
  const navbarlinksActive = () => {
    let position = window.scrollY + 200;
    navbarlinks.forEach((navbarlink) => {
      if (!navbarlink.hash) return;
      let section = select(navbarlink.hash);
      if (!section) return;
      if (
        position >= section.offsetTop &&
        position <= section.offsetTop + section.offsetHeight
      ) {
        navbarlink.classList.add("active");
      } else {
        navbarlink.classList.remove("active");
      }
    });
  };
  window.addEventListener("load", navbarlinksActive);
  onscroll(document, navbarlinksActive);

  /**
   * Scrolls to an element with header offset
   */
  const scrollto = (el) => {
    let header = select("#header");
    let offset = header.offsetHeight;

    let elementPos = select(el).offsetTop;
    window.scrollTo({
      top: elementPos - offset,
      behavior: "smooth",
    });
  };

  /**
   * Toggle .header-scrolled class to #header when page is scrolled
   */
  let selectHeader = select("#header");
  if (selectHeader) {
    const headerScrolled = () => {
      if (window.scrollY > 100) {
        selectHeader.classList.add("header-scrolled");
      } else {
        selectHeader.classList.remove("header-scrolled");
      }
    };
    window.addEventListener("load", headerScrolled);
    onscroll(document, headerScrolled);
  }

  /**
   * Back to top button
   */
  let backtotop = select(".back-to-top");
  if (backtotop) {
    const toggleBacktotop = () => {
      if (window.scrollY > 100) {
        backtotop.classList.add("active");
      } else {
        backtotop.classList.remove("active");
      }
    };
    window.addEventListener("load", toggleBacktotop);
    onscroll(document, toggleBacktotop);
  }

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

  /**
   * Preloader
   */
  let preloader = select("#preloader");
  if (preloader) {
    window.addEventListener("load", () => {
      preloader.remove();
    });
  }

  /**
   * Animation on scroll
   */
  window.addEventListener("load", () => {
    AOS.init({
      duration: 1000,
      easing: "ease-in-out",
      once: true,
      mirror: false,
    });
  });
})();

/**
 * Lottie loader functions
 */

/**
 * Lottie loader functions
 */

var anim; // Declaring anim variable to make it accessible globally

function lottieRemover() {
  if (anim) {
    anim.destroy();
  }
}
// below argument is received to make the decision of when to take lottie change or not
function lottiLoader(x = 0) {
  var lottiePath =
    x === 0
      ? "/javascripts/lottiejson/green.json"
      : "/javascripts/lottiejson/purple.json";
  var animationContainer = document.getElementById("animation-container");
  // Remove existing animation before loading new one
  lottieRemover();

  fetch(lottiePath)
  .then(response => response.json()) 
  .then(lottieObj => {
    anim = bodymovin.loadAnimation({
      container: animationContainer,
      renderer: "svg", // You can also use 'canvas' or 'html'
      loop: true, // Set to true if you want the animation to loop
      autoplay: true,
      animationData: lottieObj
    });
  });
}

/**
 * Color Preferences Theme for different sections
 */

var body = document.querySelector("body");
var hero = document.getElementById("hero");
var header = document.querySelector("header");
var dropdown = document.querySelector(".navbar");
var client = document.querySelector(".clients");
var mainSection = document.querySelector(".main-section");
var footer = document.getElementById("footer");

function goDark() {
  localStorage.setItem("theme", "dark");
  localStorage.setItem("lottie", "green");
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

  lottiLoader(0);
}

function goLight() {
  localStorage.setItem("theme", "light");
  localStorage.setItem("lottie", "green");
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

  lottiLoader(0);
}

function goBlue() {
  localStorage.setItem("theme", "blue");
  localStorage.setItem("lottie", "blue");
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

  lottiLoader(1);
}

document.querySelector(".theme1").addEventListener("click", goLight, false);
document.querySelector(".theme2").addEventListener("click", goDark, false);
document.querySelector(".theme3").addEventListener("click", goBlue, false);

/**
 * Local Storage for Theme Color Save
 */

(function () {
  if (localStorage.getItem("theme")) {
    if (localStorage.getItem("theme") === "dark") {
      goDark();
    } else if (localStorage.getItem("theme") === "blue") {
      goBlue();
    } else {
      goLight();
    }
  } else {
    goLight();
  }

  if (localStorage.getItem("lottie")) {
    if (localStorage.getItem("lottie") === "blue") {
      goBlue();
    } else {
      goLight();
    }
  } else {
    goLight();
  }
})();

/**
 * Adjusting the guest contribution card for window resizing
 */

document.addEventListener("DOMContentLoaded", function () {
  let text = document.getElementById("guest-contri");
  if (window.innerWidth < 1400) {
    text.innerText = "Guest Contrib.";
  } else {
    text.innerText = "Guest Contribution";
  }
});

window.addEventListener("resize", function () {
  let text = document.getElementById("guest-contri");
  if (window.innerWidth < 1400) {
    text.innerText = "Guest Contrib.";
  } else {
    text.innerText = "Guest Contribution";
  }
});
