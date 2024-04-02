const hamBurger = document.querySelector(".toggle-btn");
hamBurger.addEventListener("click", function () {
    const sidebar = document.querySelector("#sidebar");
    sidebar.classList.toggle("expand");
    const caretIcon = document.querySelector(".toggle-btn i");
    caretIcon.classList.toggle("fa-caret-right");
    caretIcon.classList.toggle("fa-caret-left");
    caretIcon.classList.toggle("black"); // Add a class to change the color to black
});


  
// document.addEventListener("DOMContentLoaded", function() {
//     // Check user's preference from local storage or any other source
//     var userPreference = localStorage.getItem("theme");

//     // Function to toggle between dark mode and blue mode
//     function toggleTheme(theme) {
//         // Remove existing style tags
//         var existingStyles = document.querySelectorAll("style[data-theme]");
//         existingStyles.forEach(function(style) {
//             style.remove();
//         });

//         // Create a new style tag for the selected theme
//         var newStyle = document.createElement("style");
//         newStyle.setAttribute("data-theme", theme);

//         if (theme === "dark") {
//             newStyle.textContent = `
//                 body,
//                 #sidebar,
//                 .wrapper,
//                 .card {
//                     background-color: #333; /* Dark background */
//                     color: #fff; /* Light text color */
//                 }
//                 /* Add other specific styles for dark mode here */
//             `;
//         } else if (theme === "blue") {
//             newStyle.textContent = `
//                 body,
//                 .wrapper,
//                 .main-content,
//                 #sidebar,
//                 #sidebar.expand
//                 {
//                     background-color: #a4d4fc; /* Light blue background */
//                     color: #333; /* Dark text color */
//                 }
//                 .card {
//                     background-color: #f0f5ff; /* Light blue background */
//                     color: #333; /* Dark text color */
//                 }
//                 card:hover {
//                     background-color: #f0f5ff; /* Light blue background */
//                     color: #333; /* Dark text color */
//                 }
//                 /* Add other specific styles for blue mode here */
//             `;
//         }

//         // Append the new style tag to the head
//         document.head.appendChild(newStyle);
//     }

//     // Check user preference and apply corresponding theme
//     if (userPreference === "dark") {
//         toggleTheme("dark");
//     } else {
//         toggleTheme("blue"); // Default to blue mode
//     }

//     // Event listener to toggle theme when preference is changed
//     document.querySelectorAll(".dropdown .border-bottom").forEach(function(element) {
//         element.addEventListener("click", function(event) {
//             var selectedTheme = event.target.textContent.toLowerCase();
//             toggleTheme(selectedTheme);
//             // Save user's preference
//             localStorage.setItem("theme", selectedTheme);
//         });
//     });
// });
