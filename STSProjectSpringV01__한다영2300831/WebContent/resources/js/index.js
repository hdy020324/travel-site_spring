
let img;

let cngImg01 = ["./img/_main01.png","./img/_main02.png","./img/_main03.png",
	"./img/_main04.png","./img/_main05.png","./img/_main06.png",
	"./img/_main07.png","./img/_main08.png","./img/_main09.png","./img/_main10.png"];

let arrImg;
let category;
let innerCate;
let myVar;
let idx = 0;


function mInit() {
	img = document.getElementsByTagName("img");
	category = document.getElementById("category");
	innerCate = document.getElementsByClassName("innerCate");
}

function mCngImg() {
	if(idx != cngImg01.length){
		img[2].src = cngImg01[idx];		
		idx++;	
	} else {
		idx = 0;
	}
	myVar = setTimeout(mCngImg,4000);
}

function mViewMenu(){
	if(category.style.display=="none" || category.style.display== ""){
		category.style.display = "block";
	} else {
		category.style.display = "none"; 

		innerCate	
		
		for(let i = 0 ; i < innerCate.length ; i++) {
			innerCate[i].style.display = "none"; 
		}
	} 
}

function mViewMenu02(i){
	if(innerCate[i].style.display=="none" || innerCate[i].style.display== ""){
		innerCate[i].style.display = "block";
	} else {
		innerCate[i].style.display = "none"; 	
	} 
}