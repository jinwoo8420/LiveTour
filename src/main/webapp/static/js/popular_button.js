document.addEventListener("DOMContentLoaded", () => {
  const div_menu = document.querySelector("div.location_btn");
  const div_pop_view = document.querySelector("div.popular_view");

  const getPopular = (tour_location, food_location, lodgment_location) => {
    fetch(
      `${rootPath}/index/get/${tour_location}/${food_location}/${lodgment_location}`
    )
      .then((res) => res.text())
      .then((result) => {
        div_pop_view.innerHTML = result;
      });
  };

  //서울로 초기 값을준다
  getPopular("1", "1", "1");

  div_menu?.addEventListener("click", (e) => {
    const button = e.target;
    if (button.tagName === "BUTTON") {
      const tour_location = button.dataset.tour_location;
      const food_location = button.dataset.food_location;
      const lodgment_location = button.dataset.lodgment_location;

      console.log(tour_location, food_location, lodgment_location);
      getPopular(tour_location, food_location, lodgment_location);
    }
  });

  /* 버튼 색상 변경 */
  var btns = document.querySelectorAll("button.area-btn");

  function btnClick(event) {    
    if (event.target.classList[1] === "clicked") {
      event.target.classList.remove("clicked");
    } else {
      for (var i = 0; i < btns.length; i++) {
        btns[i].classList.remove("clicked");
      }
      event.target.classList.add("clicked");
    }
  }

  function init() {
    for (var i = 0; i < btns.length; i++) {
      btns[i].addEventListener("click", btnClick);
    }
  }
  init();
});
