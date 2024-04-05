document.addEventListener("DOMContentLoaded", function () {
    const emailAddresses = [
      "example1@example.com",
      "example2@example.com",
      "example3@example.com",
      "example4@example.com",
      // Add more email addresses as needed
    ];

    const mailingListBody = document.getElementById("mailing-list-body");

    function generateMailingList(option) {
      const selectedEmails = [];
      for (let i = 0; i < option; i++) {
        const randomIndex = Math.floor(
          Math.random() * emailAddresses.length,
        );
        selectedEmails.push(emailAddresses[randomIndex]);
      }
      appendGeneratedEmails(selectedEmails);
    }

    const generatedEmailLists = [];

    function appendGeneratedEmails(emails) {
      generatedEmailLists.push(emails);
      updateGeneratedEmailsTable();
    }

    function updateGeneratedEmailsTable() {
      const generatedEmailsElement =
        document.getElementById("generated-emails");
      generatedEmailsElement.innerHTML = "";
      generatedEmailLists.forEach((emails) => {
        const row = `<tr><td>${emails.join(", ")}</td><td><button id="copy-btn" class="btn btn-outline-secondary copy-generated-emails">Copy</button></td></tr>`;
        generatedEmailsElement.innerHTML += row;
      });

      const copyButtons = document.querySelectorAll(
        ".copy-generated-emails",
      );
      copyButtons.forEach((button, index) => {
        button.addEventListener("click", function () {
          copyGeneratedEmails(index);
        });
      });
    }

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

    const listOptionBtns = document.querySelectorAll(".list-option-btn");
    listOptionBtns.forEach((btn) => {
      btn.addEventListener("click", function () {
        const selectedOption = parseInt(btn.dataset.value);
        generateMailingList(selectedOption);
      });
    });
  });