document.addEventListener("DOMContentLoaded", function () {
  // Function to generate random email addresses
  function generateRandomEmails() {
    const emailAddresses = [];
    for (let i = 0; i < 5; i++) {
      const randomString = Math.random().toString(36).substring(7);
      const email = `example${i + 1}@example.com`;
      emailAddresses.push(email);
    }
    return emailAddresses;
  }

  // Generate 5 arrays of random email addresses
  const emailArrays = [];
  for (let i = 0; i < 5; i++) {
    emailArrays.push(generateRandomEmails());
  }

  const generatedEmailLists = [];

  // Function to append generated emails to the table
  function appendGeneratedEmails(emails) {
    generatedEmailLists.push(emails);
    updateGeneratedEmailsTable();
  }

  // Function to update the generated emails table
  function updateGeneratedEmailsTable() {
    const generatedEmailsElement = document.getElementById("generated-emails");
    generatedEmailsElement.innerHTML = "";
    generatedEmailLists.forEach((emails) => {
      const row = `<tr><td>${emails.join(", ")}</td><td><button id="copy-btn" class="btn btn-outline-secondary copy-generated-emails">Copy</button></td></tr>`;
      generatedEmailsElement.innerHTML += row;
    });

    const copyButtons = document.querySelectorAll(".copy-generated-emails");
    copyButtons.forEach((button, index) => {
      button.addEventListener("click", function () {
        copyGeneratedEmails(index);
      });
    });
  }

  // Function to copy generated emails to the clipboard
  function copyGeneratedEmails(index) {
    const emailsToCopy = generatedEmailLists[index].join(", ");
    navigator.clipboard
      .writeText(emailsToCopy)
      .then(() => {
        alert("Generated emails copied to clipboard: " + emailsToCopy);
      })
      .catch((err) => {
        console.error("Failed to copy emails to clipboard: ", err);
      });
  }

  // Function to generate mailing list based on user selection
  function generateMailingList(option) {
    const selectedEmailArrays = emailArrays.slice(0, option);
    selectedEmailArrays.forEach((emails) => {
      appendGeneratedEmails(emails);
    });
  }

  // Event listeners for list option buttons
  const listOptionBtns = document.querySelectorAll(".list-option-btn");
  listOptionBtns.forEach((btn) => {
    btn.addEventListener("click", function () {
      const selectedOption = parseInt(btn.dataset.value);
      generatedEmailLists.length = 0; // Clear the previously generated lists
      updateGeneratedEmailsTable(); // Clear the table
      generateMailingList(selectedOption);
    });
  });
});
