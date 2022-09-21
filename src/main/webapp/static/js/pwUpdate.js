document.addEventListener("DOMContentLoaded", () => {
  const password = document.querySelector("#inputPassword");
  const newpassword = document.querySelector("#inputNewPassword");
  const re_password = document.querySelector("#inputNewPasswordC");
  const btn_update = document.querySelector(".btn_update");

  const div_index = {
    password: 0,
    newpassword: 1,
    re_password: 2,
  };

  const error_divs = document.querySelectorAll("div.error");

  // 숫자와 문자를 포함하는 6 ~ 12자리 문자열 검사 패턴
  const passRule = /^[A-Za-z0-9]{6,12}$/;

  // 문자, 숫자, 특수문자가 포함된 8 ~ 15자리 문자열 검사 패턴
  const passRule2 =
    /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

  // 화면이 모두 그려지면 username input box에 focus
  password?.focus();

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

  password?.addEventListener("blur", (e) => {
    const current = e.currentTarget;
    const error = error_divs[div_index.password];

    fetch(`${rootPath}/my/passwordcheck?old_pw=${current.value}`)
      .then((res) => res.text())
      .then((result) => {
        if (result === "OK") {
          ok_msg(error, "확인 완료");
        } else {
          error_msg(error, "현재 비밀번호가 일치하지 않음");
          current.focus();
          return false;
        }
      });
  });

  newpassword?.addEventListener("input", (e) => {
    const current = e.currentTarget;
    const error = error_divs[div_index.newpassword];

    if (!passRule2.test(current.value)) {
      error_msg(error, "password 영문, 특수문자, 숫자 포함 8 ~ 15자 이내");
    } else {
      ok_msg(error, "사용 가능한 password");
    }

    if (current.value === password.value) {
      error_msg(error, "이전 비밀번호와 동일");
      current.focus();
      return false;
    } else {
      ok_msg(error, "사용 가능한 password");
    }

    re_password?.addEventListener("input", (e) => {
      const current = e.currentTarget;
      const error = error_divs[div_index.re_password];

      if (current.value === newpassword?.value) {
        ok_msg(error, "password 일치");
      } else {
        error_msg(error, "password 일치하지 않음");
        current.focus();
        return false;
      }
    });
  });

  btn_update?.addEventListener("click", () => {
    if (password.value === "") {
      alert("password 입력");
      password.focus();
      return false;
    }

    if (newpassword.value === "") {
      alert("새 password 입력");
      newpassword.focus();
      return false;
    }

    // password.value의 값이 패턴에 일치하지 않을시
    if (passRule2.test(newpassword.value) === false) {
      alert("password 영문, 특수문자, 숫자 포함 8 ~ 15자 이내");
      newpassword.focus();
      return false;
    }

    if (re_password.value === "") {
      alert("새 password 확인 입력");
      re_password.focus();
      return false;
    }

    if (newpassword.value !== re_password.value) {
      alert("password와 새 password 확인 값이 일치하지 않음");
      newpassword.value = "";
      re_password.value = "";
      newpassword.focus();
      return false;
    }

    if (
      error_divs[div_index.password].innerText ===
      "현재 비밀번호가 일치하지 않음"
    ) {
      alert("password 확인");
      password.focus();
      return false;
    }

    if (
      error_divs[div_index.newpassword].innerText === "이전 비밀번호와 동일"
    ) {
      alert("이전 password와 동일 불가");
      newpassword.focus();
      return false;
    }

    document.querySelector("form.update")?.submit();
  });
});
