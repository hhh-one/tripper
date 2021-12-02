let zone = [];
zone[0] = document.querySelector("#zone1 a");
zone[1] = document.querySelector("#zone2 a");
zone[2] = document.querySelector("#zone3 a");
zone[3] = document.querySelector("#zone4 a");
zone[4] = document.querySelector("#zone5 a");
zone[5] = document.querySelector("#zone6 a");
zone[6] = document.querySelector("#zone7 a");
zone[7] = document.querySelector("#zone8 a");
zone[8] = document.querySelector("#zone9 a");
zone[9] = document.querySelector("#zone10 a");
zone[10] = document.querySelector("#zone11 a");
zone[11] = document.querySelector("#zone12 a");
zone[12] = document.querySelector("#zone13 a");
zone[13] = document.querySelector("#zone14 a");
zone[14] = document.querySelector("#zone15 a");
zone[15] = document.querySelector("#zone16 a");
zone[16] = document.querySelector("#zone17 a");

let array = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

for (let i = 0; i < 17; i++) {
  zone[i].addEventListener('click', function() {
    checkOpenZone(i);
  });
}

function checkOpenZone(num) {
  for (let i = 0; i < 17; i++) {
    if (i == num) {
      if (array[i] == 0) {
        zone[i].style.backgroundColor = "#203f7e";
        zone[i].style.color = "#fff";
        array[i] = 1;
      }
    } else {
      if (array[i] == 1) {
        zone[i].style.backgroundColor = "";
        zone[i].style.color = "#000";
        array[i] = 0;
      }
    }
  }
}

const setPlaceBtn = document.querySelector(".set-place-btn");
const placeList = document.querySelector(".place-list");
const cancelBtn = document.querySelector(".cancel-place-btn");

setPlaceBtn.addEventListener('click', function() {
  console.log(placeList.style.display);
  if (placeList.style.display == 'none') {
    placeList.style.display = 'flex';
    cancelBtn.style.display = 'block';
  }
  else {
    placeList.style.display = 'none';
    cancelBtn.style.display = 'none';
  }
});