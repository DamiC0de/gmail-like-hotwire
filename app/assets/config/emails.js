document.addEventListener("turbo:load", function() {
  const emailsDiv = document.querySelector("#emails");

  if (emailsDiv) {
    emailsDiv.addEventListener("turbo:frame-load", function() {
      const newEmailDiv = document.createElement("div");
      newEmailDiv.innerHTML = "<p>New email received</p>";
      emailsDiv.appendChild(newEmailDiv);
    });
  }
});
