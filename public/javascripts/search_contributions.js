// Sample data
const sampleData = {
  years: [2021, 2022, 2023],
  months: ["January", "February", "March", "April", "May", "June"],
  weeks: ["Week 1", "Week 2", "Week 3", "Week 4"],
  languages: ["Python", "JavaScript", "Java", "C#", "Ruby", "Go"],
  users: ["Alice", "Bob", "Charlie", "Diana"],
  contributions: [
    {
      user: "Alice",
      date: "2022-04-01",
      language: "Python",
      codeSnippet: 'def hello_world():\n  print("Hello, World!")',
    },
    {
      user: "Bob",
      date: "2022-04-02",
      language: "JavaScript",
      codeSnippet:
        'function helloWorld() {\n  console.log("Hello, World!");\n}',
    },
    // More contributions...
    {
      user: "Charlie",
      date: "2022-04-03",
      language: "Java",
      codeSnippet:
        'public class HelloWorld {\n  public static void main(String[] args) {\n    System.out.println("Hello, World!");\n  }\n}',
    },
    {
      user: "Diana",
      date: "2022-04-04",
      language: "C#",
      codeSnippet:
        'public class HelloWorld {\n  public static void Main() {\n    System.Console.WriteLine("Hello, World!");\n  }\n}',
    },
    // ... and so on for each combination of user, date, and language.
  ],
};

// Assume more contributions are added to cover all combinations and dates.

// Function to populate dropdowns
function populateDropdown(selectId, options) {
  const selectElement = document.getElementById(selectId);
  selectElement.innerHTML = options
    .map((option) => `<option value="${option}">${option}</option>`)
    .join("");
}

// Function to search and display contributions
function searchContributions() {
  const contributionsList = document.getElementById("contributions-list");
  contributionsList.innerHTML = ""; // Clear the list
  // Logic to search and display contributions based on the selected year, month, week, user, and language
  // For this example, it simply lists all contributions
  sampleData.contributions.forEach((contribution) => {
    const listItem = document.createElement("a");
    listItem.classList.add("list-group-item", "list-group-item-action");
    listItem.href = "#";
    listItem.innerHTML = `
              <div class="d-flex w-100 justify-content-between">
                  <h5 class="mb-1">${contribution.user}</h5>
                  <small>${contribution.week}</small>
              </div>
              <p class="mb-1">${contribution.language}</p>
              <small>Click to view code.</small>
          `;
    listItem.onclick = function () {
      viewCode(contribution.codeSnippet);
    };
    contributionsList.appendChild(listItem);
  });
}

// Function toI apologize for the interruption. Let's continue with the JavaScript function:

// Function to view the code snippet in a modal or an alert for simplicity
function viewCode(codeSnippet) {
  // In a full implementation, you would use a modal. Here's a simple example using alert:
  alert(`Code: ${codeSnippet}`);
}

// Populate the dropdowns on page load
window.onload = function () {
  populateDropdown("year-dropdown", sampleData.years);
  populateDropdown("month-dropdown", sampleData.months);
  populateDropdown("week-dropdown", sampleData.weeks);
  populateDropdown("language-dropdown", sampleData.languages);
};
