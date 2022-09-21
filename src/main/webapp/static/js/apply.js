document.addEventListener("DOMContentLoaded", () => {
  const Company = document.querySelector("#inputCompany");
  const Phone = document.querySelector("#inputPhone");
  const Rocal = document.querySelector("#inputRocal");
  const Biznum = document.querySelector("#inputBiznum");
  const btn_apply = document.querySelector("#btn_apply");

  const div_index = {
    Company: 0,
    Phone: 1,
    Rocal: 2,
    Biznum: 3,
  };

  const error_divs = document.querySelectorAll("div.error");

  // 화면이 모두 그려지면 username input box에 focus
  Company?.focus();

  const error_msg = (div, message) => {
    div.classList.remove("w3-text-blue");
    div.classList.add("w3-text-red");
    div.innerText = message;
  };

  const ok_msg = (div, message) => {
    div.classList.remove("w3-text-red");
    div.classList.add("w3-text-blue");
    div.innerText = message;
  };

  /*
    input box에서 focus가 벗어났을때 발생하는 event
    focusout, blur
    focusout은 이벤트 버블링이 심하게 발생한다
    JS코드는 주로 blur 사용
    */

  Company?.addEventListener("input", (e) => {
    const current = e.currentTarget;
    const error = error_divs[div_index.Company];
  });

  Phone?.addEventListener("input", (e) => {
    const current = e.currentTarget;
    const error = error_divs[div_index.Phone];
  });
  Rocal?.addEventListener("input", (e) => {
    const current = e.currentTarget;
    const error = error_divs[div_index.Rocal];
  });

  Biznum?.addEventListener("blur", (e) => {
    const current = e.currentTarget;
    const Biznum_div = error_divs[div_index.Biznum];
  }); // end nickname event

  btn_apply?.addEventListener("click", () => {
    if (Company.value === "") {
      alert("업체명 입력");
      Company.focus();
      return false;
    }

    if (Company.value.length > 30) {
      alert("업체명 30자 이내로 입력하세요");
      Company.focus();
      return false;
    }

    if (Phone.value === "") {
      alert("휴대폰번호  입력해주세요.");
      Phone.focus();
      return false;
    }

    if (Rocal.value === "") {
      alert("지역명을  입력해주세요");
      Rocal.focus();
      return false;
    }
    if (Biznum.value === "") {
      alert("사업자등록증을  선택해주세요");
      Biznum.focus();
      return false;
    }

    document.querySelector("form.apply")?.submit();
  });
});
