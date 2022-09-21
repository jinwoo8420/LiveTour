document.addEventListener("DOMContentLoaded", () => {
  const nickname = document.querySelector("#inputNickname");
  const btn_check = document.querySelector(".btn-nickname");

  const div_index = {
    nickname: 0,
  };

  const error_divs = document.querySelectorAll("div.error");

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

  nickname?.addEventListener("blur", (e) => {
    const current = e.currentTarget;
    const nickname_div = error_divs[div_index.nickname];

    // 중복검사 수행
    fetch(`${rootPath}/my/nicknamecheck?nickname=${current.value}`)
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
  });

  btn_check?.addEventListener("click", () => {
    if (nickname.value === "") {
      alert("nickname 입력");
      nickname.focus();
      return false;
    }

    if (error_divs[div_index.nickname].innerText === "이미 가입 된 nickname") {
      alert("nickname 중복 확인");
      nickname.focus();
      return false;
    }

    document.querySelector("form.form-nickname")?.submit();
  });
});
