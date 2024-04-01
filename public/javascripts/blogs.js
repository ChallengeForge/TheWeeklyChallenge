document.addEventListener("DOMContentLoaded", function () {
  const itemsPerPage = 6; // Number of items per page
  let currentPage = 0; // Current page index
  const articleRows = document.getElementById("articleRows");
  const rowsContainer = document.querySelector(
    ".row-cols-1"
  );
  const articleRow = Array.from(
    articleRows.querySelectorAll(".col-display")
  );
  // Function to show items for a specific page
  function showPage(pageIndex) {
    const startIndex = pageIndex * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    articleRow.forEach((member, index) => {
      member.style.display =
        index >= startIndex && index < endIndex ? "flex" : "none";
    });
  }
  // Function to handle next button click
  document
    .getElementById("nextPageBtn")
    .addEventListener("click", function () {
      currentPage = Math.min(
        currentPage + 1,
        Math.ceil(articleRow.length / itemsPerPage) - 1
      );
      showPage(currentPage);
    });
  // Function to handle previous button click
  document
    .getElementById("prevPageBtn")
    .addEventListener("click", function () {
      currentPage = Math.max(currentPage - 1, 0);
      showPage(currentPage);
    });
  // Initial page display
  showPage(currentPage);
});

document.addEventListener("DOMContentLoaded", function () {
  const filterInput = document.getElementById("titleFilter");
  const cards = document.querySelectorAll("#articleRows .card");

  filterInput.addEventListener("keyup", function () {
    const searchText = filterInput.value.toLowerCase();

    cards.forEach((card) => {
      const title = card.querySelector(".card-title").textContent.toLowerCase();
      if (title.includes(searchText)) {
        card.parentElement.style.display = ""; // Show the card's column if the title matches
      } else {
        card.parentElement.style.display = "none"; // Hide the card's column if the title does not match
      }
    });
  });
});

darkModeToggle.addEventListener("click", function () {
  document.body.classList.toggle("dark-mode");
  localStorage.setItem(
    "dark-mode",
    document.body.classList.contains("dark-mode"),
  );
});