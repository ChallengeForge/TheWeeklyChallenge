document.addEventListener("DOMContentLoaded", function() {
    const rows = document.querySelectorAll("#articleRows .col-display");
    let maxVisible = 3; // Start with 3 items visible
    const showMoreBtn = document.getElementById("showMore");
    const showLessBtn = document.getElementById("showLess");

    // Function to update column visibility based on maxVisible
    function updateColumnVisibility() {
        rows.forEach((row, index) => {
            row.style.display = index < maxVisible ? '' : 'none';
        });
    }

    // Initially update visibility based on maxVisible
    updateColumnVisibility();

    // Show more columns
    showMoreBtn.addEventListener("click", function() {
        maxVisible = Math.min(rows.length, maxVisible + 3);
        updateColumnVisibility();
        
        // Toggle button visibility
        if (maxVisible >= rows.length) {
            showMoreBtn.style.display = 'none';
        }
        if (maxVisible > 3) {
            showLessBtn.style.display = '';
        }
    });

    // Show less columns
    showLessBtn.addEventListener("click", function() {
        maxVisible = Math.max(3, maxVisible - 3);
        updateColumnVisibility();
        
        // Toggle button visibility
        if (maxVisible <= 3) {
            showLessBtn.style.display = 'none';
        }
        if (maxVisible < rows.length) {
            showMoreBtn.style.display = '';
        }
    });
});


document.addEventListener("DOMContentLoaded", function() {
    const filterInput = document.getElementById('titleFilter');
    const cards = document.querySelectorAll('#articleRows .card');

    filterInput.addEventListener('keyup', function() {
        const searchText = filterInput.value.toLowerCase();

        cards.forEach(card => {
            const title = card.querySelector('.card-title').textContent.toLowerCase();
            if (title.includes(searchText)) {
                card.parentElement.style.display = ''; // Show the card's column if the title matches
            } else {
                card.parentElement.style.display = 'none'; // Hide the card's column if the title does not match
            }
        });
    });
});



darkModeToggle.addEventListener("click", function() {
    document.body.classList.toggle("dark-mode");
    localStorage.setItem("dark-mode", document.body.classList.contains("dark-mode"));
});