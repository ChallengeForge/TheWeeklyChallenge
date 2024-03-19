document.addEventListener("change", function (event) {
  if (event.target.matches("#yearDropdown")) {
    populateMonthDropdown();
  } else if (event.target.matches("#monthDropdown")) {
    populateWeekDropdown();
  } else if (event.target.matches("#weekDropdown")) {
    showTaskContainer();
  }
});

const yearDropdown = document.getElementById("yearDropdown");
const monthDropdown = document.getElementById("monthDropdown");
const weekDropdown = document.getElementById("weekDropdown");
const taskContainer = document.getElementById("taskContainer");

function populateMonthDropdown() {
  const selectedYear = yearDropdown.value;
  const months = {
    2022: ["select a month", "January", "February", "March"],
    2023: ["select a month", "January", "February", "March"],
    2024: ["select a month", "January", "February", "March"],
  };

  monthDropdown.innerHTML = months[selectedYear]
    .map((month) => `<option value="${month}">${month}</option>`)
    .join("");

  weekDropdown.innerHTML = "";
  taskContainer.style.display = "none";
}

function populateWeekDropdown() {
  const selectedYear = yearDropdown.value;
  const selectedMonth = monthDropdown.value;
  const weeks = {
    2022: {
      January: ["select a week", "Week 1", "Week 2", "Week 3"],
      February: ["select a week", "Week 1", "Week 2", "Week 3"],
      March: ["select a week", "Week 1", "Week 2", "Week 3"],
    },
    2023: {
      January: ["select a week", "Week 1", "Week 2", "Week 3"],
      February: ["select a week", "Week 1", "Week 2", "Week 3"],
      March: ["select a week", "Week 1", "Week 2", "Week 3"],
    },
    2024: {
      January: ["select a week", "Week 1", "Week 2", "Week 3"],
      February: ["select a week", "Week 1", "Week 2", "Week 3"],
      March: ["select a week", "Week 1", "Week 2", "Week 3"],
    },
  };

  weekDropdown.innerHTML = weeks[selectedYear][selectedMonth]
    .map((week) => `<option value="${week}">${week}</option>`)
    .join("");

  taskContainer.style.display = "none";
}

function showTaskContainer() {
  taskContainer.style.display = "block";
}
