
let img;

let cngImg01 = ["resources/img/_southeastAsiaMain01.png","resources/img/_southeastAsiaMain02.png",
"resources/img/_southeastAsiaMain03.png"];

let arrImg;
let category;
let innerCate;
let myVar;
let idx = 0;

function mInit() {
	img = document.getElementById("mainImg");
}

function mCngImg() {
	if(idx != cngImg01.length){
		img.src = cngImg01[idx];		
		idx++;	
	} else {
		idx = 0;
	}
	myVar = setTimeout(mCngImg,4000);
}
