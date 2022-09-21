document.addEventListener("DOMContentLoaded", () => {
  const username = document.querySelector("#inputName");
  const password = document.querySelector("#inputPassword");
  const re_password = document.querySelector("#inputPasswordC");
  const nickname = document.querySelector("#inputNickname");
  const btn_join = document.querySelector("#btn-join");

  const div_index = {
    username: 0,
    password: 1,
    re_password: 2,
    nickname: 3,
  };

  const error_divs = document.querySelectorAll("div.error");

  // 숫자와 문자를 포함하는 6 ~ 12자리 문자열 검사 패턴
  const passRule = /^[A-Za-z0-9]{6,12}$/;

  // 문자, 숫자, 특수문자가 포함된 8 ~ 15자리 문자열 검사 패턴
  const passRule2 =
    /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

  // email 형식 검사
  const emailRule =
    /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

  // 화면이 모두 그려지면 username input box에 focus
  username?.focus();

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

  username?.addEventListener("blur", (e) => {
    const current = e.currentTarget;
    const error = error_divs[div_index.username];

    if (emailRule.test(current.value)) {
      ok_msg(error, "사용 가능한 email");
    } else {
      error_msg(error, "사용 불가한 email");
      return false; // email 양식 검사를 통과하지 못하면 다음 코드를 실행하지 않음
    } // 양식 검사 end

    fetch(`${rootPath}/user/usernamecheck?username=${current.value}`)
      .then((res) => res.text())
      .then((result) => {
        if (result === "OK") {
          ok_msg(error, "사용 가능한 email");
        } else {
          error_msg(error, "이미 등록된 email");
          current.focus();
          return false;
        }
      });
  });

  password?.addEventListener("input", (e) => {
    const current = e.currentTarget;
    const error = error_divs[div_index.password];

    if (!passRule2.test(current.value)) {
      error_msg(error, "password 영문, 특수문자, 숫자 포함 8 ~ 15자 이내");
    } else {
      ok_msg(error, "사용 가능한 password");
    }

    re_password?.addEventListener("input", (e) => {
      const current = e.currentTarget;
      const error = error_divs[div_index.re_password];

      if (current.value === password?.value) {
        ok_msg(error, "password 일치");
      } else {
        error_msg(error, "password 일치하지 않음");
      }
    });
  });

  nickname?.addEventListener("blur", (e) => {
    const current = e.currentTarget;
    const nickname_div = error_divs[div_index.nickname];

    if (current.value === "") {
      const msg = "nickname 입력 필수";

      error_msg(nickname_div, msg);

      current.focus();
      return false;
    }

    // 중복검사 수행
    fetch(`${rootPath}/user/nicknamecheck?nickname=${current.value}`)
      .then((res) => res.text())
      .then((result) => {
        // 서버에서 OK 문자열을 보내면 체크한 nickname은 사용 가능
        if (result === "OK") {
          ok_msg(nickname_div, "사용 가능한 nickname");
        } else {
          error_msg(nickname_div, "이미 가입 된 nickname");
          nickname.focus();
          return false;
        }
      });
  }); // end nickname event

  btn_join?.addEventListener("click", () => {
    if (username.value === "") {
      alert("email 입력");
      username.focus();
      return false;
    }

    if (username.value.length > 30) {
      alert("email 30자 이내로 입력");
      username.focus();
      return false;
    }

    if (emailRule.test(username.value) === false) {
      alert("email 형식 잘못됨");
      username.focus();
      return false;
    }

    if (username.value.toUpperCase() === password.value.toUpperCase()) {
      alert("email과 password는 동일 불가");
      username.value = "";
      password.value = "";
      username.focus();
      return false;
    }

    // password.value의 값이 패턴에 일치하지 않을시
    if (passRule2.test(password.value) === false) {
      alert("password 영문, 특수문자, 숫자 포함 8 ~ 15자 이내");
      password.focus();
      return false;
    }

    if (re_password.value === "") {
      alert("password 확인 입력");
      re_password.focus();
      return false;
    }

    if (password.value !== re_password.value) {
      alert("password와 password 확인 값이 일치하지 않음");
      password.value = "";
      re_password.value = "";
      password.focus();
      return false;
    }

    if (nickname.value === "") {
      alert("nickname 입력");
      nickname.focus();
      return false;
    }

    if (error_divs[div_index.username].innerText === "이미 등록된 email") {
      alert("email 중복 확인");
      username.focus();
      return false;
    }

    if (error_divs[div_index.nickname].innerText === "이미 가입 된 nickname") {
      alert("nickname 중복 확인");
      nickname.focus();
      return false;
    }

    document.querySelector("form.join")?.submit();
  });
});
