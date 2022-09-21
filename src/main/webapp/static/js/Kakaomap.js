var container = document.getElementById("map");
var options = {
  center: new kakao.maps.LatLng(37.7899352, 127.5258072),
  level: 7,
};
var map = new kakao.maps.Map(container, options);

// 현재 위치
var currentPos;

// HTML5의 geolocation으로 사용할 수 있는지 확인합니다
if (navigator.geolocation) {
  // GeoLocation을 이용해서 접속 위치를 얻어옵니다
  navigator.geolocation.getCurrentPosition(function (position) {
    var lat = position.coords.latitude, // 위도
      lon = position.coords.longitude; // 경도

    currentPos = new kakao.maps.LatLng(lat, lon);

    var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
      message = '<div style="padding:5px;">현위치</div>'; // 인포윈도우에 표시될 내용입니다

    // 마커와 인포윈도우를 표시합니다
    displayMarker(locPosition, message);
  });
} else {
  // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

  var locPosition = new kakao.maps.LatLng(37.7899352, 127.5258072),
    message = "현재 위치를 알 수 없어 기본 위치로 이동합니다.";

  displayMarker(locPosition, message);
}

function displayMarker(locPosition, message) {
  var imageSrc = document.querySelector("img#pointer-me").src;
  var imageSize = new kakao.maps.Size(24, 35);
  var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

  // 마커를 생성합니다
  var marker = new kakao.maps.Marker({
    map: map,
    position: locPosition,
    image: markerImage,
  });

  var iwContent = message, // 인포윈도우에 표시할 내용
    iwRemoveable = true;

  // 인포윈도우를 생성합니다
  var infowindow = new kakao.maps.InfoWindow({
    content: iwContent,
    removable: iwRemoveable,
  });

  // 인포윈도우를 마커위에 표시합니다
  infowindow.open(map, marker);

  // 지도 중심좌표를 접속위치로 변경합니다
  map.setCenter(locPosition);
}

var markers = [];

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

function tourKeywordSearch() {
  // 장소 검색 객체를 생성합니다
  var ps = new kakao.maps.services.Places();

  var val_tour = document.querySelector("span#val_tour").innerText;

  // 검색 옵션 객체
  var searchOption = {
    location: currentPos,
    radius: 1000,
    size: 15,
  };

  // 키워드로 장소를 검색합니다
  searchPlaces();

  // 키워드 검색을 요청하는 함수입니다
  function searchPlaces() {
    if (!val_tour.replace(/^\s+|\s+$/g, "")) {
      alert("키워드를 입력해주세요!");
      return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch(val_tour, placesSearchCB, searchOption);
  }

  // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
  function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
      // 정상적으로 검색이 완료됐으면
      // 검색 목록과 마커를 표출합니다
      resultMarker(data);
    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
      alert("검색 결과가 존재하지 않습니다.");
      return;
    } else if (status === kakao.maps.services.Status.ERROR) {
      alert("검색 결과 중 오류가 발생했습니다.");
      return;
    }
  }

  // 지도에 마커를 표시하는 함수입니다
  function resultMarker(places) {
    var bounds = new kakao.maps.LatLngBounds();

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();

    for (var i = 0; i < places.length; i++) {
      // 마커를 생성하고 지도에 표시합니다
      var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
        marker = addTourMarker(placePosition, i);

      // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
      // LatLngBounds 객체에 좌표를 추가합니다
      bounds.extend(placePosition);

      // 마커와 검색결과 항목에 mouseover 했을때
      // 해당 장소에 인포윈도우에 장소명을 표시합니다
      // mouseout 했을 때는 인포윈도우를 닫습니다
      (function (marker, title) {
        kakao.maps.event.addListener(marker, "mouseover", function () {
          displayInfowindow(marker, title);
        });

        kakao.maps.event.addListener(marker, "mouseout", function () {
          infowindow.close();
        });
      })(marker, places[i].place_name);
    }

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
  }

  // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
  function addTourMarker(position, idx, title) {
    var imageSrc = document.querySelector("img#tour_img"); // 마커 이미지 url, 스프라이트 이미지를 씁니다

    imageSrc.style.backgroundColor = "#00af56";

    var imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
      markerImage = new kakao.maps.MarkerImage(imageSrc.src, imageSize),
      marker = new kakao.maps.Marker({
        position: position, // 마커의 위치
        image: markerImage,
      });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker); // 배열에 생성된 마커를 추가합니다

    return marker;
  }
}

function foodKeywordSearch() {
  // 장소 검색 객체를 생성합니다
  var ps = new kakao.maps.services.Places();

  var val_food = document.querySelector("span#val_food").innerText;

  // 검색 옵션 객체
  var searchOption = {
    location: currentPos,
    radius: 1000,
    size: 15,
  };

  // 키워드로 장소를 검색합니다
  searchPlaces();

  // 키워드 검색을 요청하는 함수입니다
  function searchPlaces() {
    if (!val_food.replace(/^\s+|\s+$/g, "")) {
      alert("키워드를 입력해주세요!");
      return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch(val_food, placesSearchCB, searchOption);
  }

  // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
  function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
      // 정상적으로 검색이 완료됐으면
      // 검색 목록과 마커를 표출합니다
      resultMarker(data);
    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
      alert("검색 결과가 존재하지 않습니다.");
      return;
    } else if (status === kakao.maps.services.Status.ERROR) {
      alert("검색 결과 중 오류가 발생했습니다.");
      return;
    }
  }

  // 지도에 마커를 표시하는 함수입니다
  function resultMarker(places) {
    var bounds = new kakao.maps.LatLngBounds();

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();

    for (var i = 0; i < places.length; i++) {
      // 마커를 생성하고 지도에 표시합니다
      var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
        marker = addFoodMarker(placePosition, i);

      // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
      // LatLngBounds 객체에 좌표를 추가합니다
      bounds.extend(placePosition);

      // 마커와 검색결과 항목에 mouseover 했을때
      // 해당 장소에 인포윈도우에 장소명을 표시합니다
      // mouseout 했을 때는 인포윈도우를 닫습니다
      (function (marker, title) {
        kakao.maps.event.addListener(marker, "mouseover", function () {
          displayInfowindow(marker, title);
        });

        kakao.maps.event.addListener(marker, "mouseout", function () {
          infowindow.close();
        });
      })(marker, places[i].place_name);
    }

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
  }

  // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
  function addFoodMarker(position, idx, title) {
    var imageSrc = document.querySelector("img#food_img"); // 마커 이미지 url, 스프라이트 이미지를 씁니다

    imageSrc.style.backgroundColor = "#ffb600";

    var imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
      markerImage = new kakao.maps.MarkerImage(imageSrc.src, imageSize),
      marker = new kakao.maps.Marker({
        position: position, // 마커의 위치
        image: markerImage,
      });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker); // 배열에 생성된 마커를 추가합니다

    return marker;
  }
}

function lodgeKeywordSearch() {
  // 장소 검색 객체를 생성합니다
  var ps = new kakao.maps.services.Places();

  var val_lodge = document.querySelector("span#val_lodge").innerText;

  // 검색 옵션 객체
  var searchOption = {
    location: currentPos,
    radius: 1000,
    size: 15,
  };

  // 키워드로 장소를 검색합니다
  searchPlaces();

  // 키워드 검색을 요청하는 함수입니다
  function searchPlaces() {
    if (!val_lodge.replace(/^\s+|\s+$/g, "")) {
      alert("키워드를 입력해주세요!");
      return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch(val_lodge, placesSearchCB, searchOption);
  }

  // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
  function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
      // 정상적으로 검색이 완료됐으면
      // 검색 목록과 마커를 표출합니다
      resultMarker(data);
    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
      alert("검색 결과가 존재하지 않습니다.");
      return;
    } else if (status === kakao.maps.services.Status.ERROR) {
      alert("검색 결과 중 오류가 발생했습니다.");
      return;
    }
  }

  // 지도에 마커를 표시하는 함수입니다
  function resultMarker(places) {
    var bounds = new kakao.maps.LatLngBounds();

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();

    for (var i = 0; i < places.length; i++) {
      // 마커를 생성하고 지도에 표시합니다
      var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
        marker = addLodgeMarker(placePosition, i);

      // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
      // LatLngBounds 객체에 좌표를 추가합니다
      bounds.extend(placePosition);

      // 마커와 검색결과 항목에 mouseover 했을때
      // 해당 장소에 인포윈도우에 장소명을 표시합니다
      // mouseout 했을 때는 인포윈도우를 닫습니다
      (function (marker, title) {
        kakao.maps.event.addListener(marker, "mouseover", function () {
          displayInfowindow(marker, title);
        });

        kakao.maps.event.addListener(marker, "mouseout", function () {
          infowindow.close();
        });
      })(marker, places[i].place_name);
    }

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
  }

  // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
  function addLodgeMarker(position, idx, title) {
    var imageSrc = document.querySelector("img#lodge_img"); // 마커 이미지 url, 스프라이트 이미지를 씁니다

    imageSrc.style.backgroundColor = "#00aadf";

    var imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
      markerImage = new kakao.maps.MarkerImage(imageSrc.src, imageSize),
      marker = new kakao.maps.Marker({
        position: position, // 마커의 위치
        image: markerImage,
      });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker); // 배열에 생성된 마커를 추가합니다

    return marker;
  }
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(null);
  }
  markers = [];
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
  var content = '<div style="padding:5px;z-index:1;">' + title + "</div>";

  infowindow.setContent(content);
  infowindow.open(map, marker);
}
