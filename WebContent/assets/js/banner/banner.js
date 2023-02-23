/**
 * banner.jsp
 */

let $bullets = $(".swiper-pagination label");
let $spans = $(".swiper-pagination label span");
/*
$bullets.on("click", function(){
	var $bullet = $bullets.index($(this));
	console.log($bullet);
	console.log(this);
	console.log($(this));
});*/

// label 클릭 시 이벤트 핸들러 등록
$bullets.click(function() {
	// 모든 span tag의 class를 swiper-pagination-bullet으로 설정
	$spans.removeClass('swiper-pagination-bullet-active').addClass('swiper-pagination-bullet');
	
	// 클릭한 label 안의 span tag에 swiper-pagination-bullet-active class 추가
	$(this).find('span').addClass('swiper-pagination-bullet-active');
});

