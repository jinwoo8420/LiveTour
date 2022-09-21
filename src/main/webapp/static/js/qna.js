document.addEventListener("DOMContentLoaded", () => {
  const category = document.querySelector("#selCategory");
  const memo = document.querySelector("#inputMemo");
  const tel = document.querySelector("#inputTel");
  const Bizname = document.querySelector("#inputBizName");
  const radio_tel = document.querySelector(".radio_tel");
  const radio_email = document.querySelector(".radio_email");
  const btn_qna = document.querySelector(".btn_qna");
  const control_tel = document.querySelector(".control-tel");
  const control_email = document.querySelector(".control-email");

  control_tel?.addEventListener("click",()=>{
    control_email.style.backgroundImage="none";
    control_tel.style.backgroundImage=`${rootPath}/static/img/svg/form-checked-on.svg`;
  })

  control_email?.addEventListener("click",()=>{
    control_tel.style.backgroundImage="none";
    control_email.style.backgroundImage=`${rootPath}/static/img/svg/form-checked-on.svg`;
  })

  radio_tel?.addEventListener("click",()=>{
    tel.type="number";
  })

  radio_email?.addEventListener("click",()=>{
    tel.type="email";
  })

  btn_qna?.addEventListener("click", () => {
    if (category.value === "0") {
      alert("카테고리 선택 필수");
      category.focus();
      return false;
    }

    if (memo.value === "") {
      alert("내용 입력");
      memo.focus();
      return false;
    }

    if (tel.value === "") {
      alert("연락처 입력");
      tel.focus();
      return false;
    }

    if (Bizname.value === "") {
      alert("파일 선택");
      Bizname.focus();
      return false;
    }

    document.querySelector("form.qnaForm")?.submit();
  });
});
