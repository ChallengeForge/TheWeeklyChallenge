// Read More Button Functionality
document.querySelectorAll(".read-more-btn").forEach((button) => {
  button.addEventListener("click", () => {
    const content = button.previousElementSibling;
    content.classList.toggle("expanded");
    button.textContent = content.classList.contains("expanded")
      ? "Read Less"
      : "Read More";
  });
});

// Fade In and Fade Out Animation
window.addEventListener("scroll", () => {
  document.querySelectorAll(".fade-in, .fade-out").forEach((element) => {
    const rect = element.getBoundingClientRect();
    const windowHeight =
      window.innerHeight || document.documentElement.clientHeight;
    const isInViewport = rect.top >= 0 && rect.bottom <= windowHeight;
    const isPartiallyInView = rect.top < windowHeight && rect.bottom >= 0;

    if (isInViewport || isPartiallyInView) {
      element.classList.add("fade-in");
      element.classList.remove("fade-out");
    } else {
      element.classList.add("fade-out");
      element.classList.remove("fade-in");
    }
  });
});
