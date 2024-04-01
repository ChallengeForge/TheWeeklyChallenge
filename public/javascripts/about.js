document.addEventListener("DOMContentLoaded", function () {
  const rows = document.querySelectorAll("#articleRows .col-display");
  let maxVisible = 1; // Start with 3 items visible
  const showMoreBtn = document.getElementById("showMore");
  const showLessBtn = document.getElementById("showLess");

  // Function to update column visibility based on maxVisible
  function updateColumnVisibility() {
    rows.forEach((row, index) => {
      row.style.display = index < maxVisible ? "" : "none";
    });
  }

  // Initially update visibility based on maxVisible
  updateColumnVisibility();

  // Show more columns
  showMoreBtn.addEventListener("click", function () {
    maxVisible = Math.min(rows.length, maxVisible + 1);
    updateColumnVisibility();

    // Toggle button visibility
    if (maxVisible >= rows.length) {
      showMoreBtn.style.display = "none";
    }
    if (maxVisible > 1) {
      showLessBtn.style.display = "";
    }
  });

  // Show less columns
  showLessBtn.addEventListener("click", function () {
    maxVisible = Math.max(1, maxVisible - 1);
    updateColumnVisibility();

    // Toggle button visibility
    if (maxVisible <= 1) {
      showLessBtn.style.display = "none";
    }
    if (maxVisible < rows.length) {
      showMoreBtn.style.display = "";
    }
  });
});

darkModeToggle.addEventListener("click", function () {
  document.body.classList.toggle("dark-mode");
  localStorage.setItem(
    "dark-mode",
    document.body.classList.contains("dark-mode"),
  );
});
