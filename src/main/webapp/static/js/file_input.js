document.addEventListener("DOMContentLoaded", () => {
  const fileCheck = document.querySelector("#file_input");
  const btnCheck = document.querySelector("#file_btn");
  const fileLabel = document.querySelector(".file_label");
  const fileform = document.querySelector(".file_form");

  const fileCheck2 = document.querySelector("#file_input2");
  const btnCheck2 = document.querySelector("#file_btn2");
  const fileLabel2 = document.querySelector(".file_label2");

  fileCheck.addEventListener("click", () => {
    fileLabel.style.display = "none";
    btnCheck.style.display = "block";

    btnCheck?.addEventListener("click", () => {
      fileform.submit();
    });
  });

  fileCheck2.addEventListener("click", () => {
    fileCheck2.style.display = "none";
    btnCheck2.style.display = "block";
  });
});
