/**
 * banner.jsp
 */

let $bullets = $(".swiper-pagination label");
let $label = $(".swiper-pagination label a");

/*$bullets.on("click", function(){
	var $bullet = $bullets.index($(this));
});*/

// label 클릭 시 이벤트 핸들러 등록
$label.click(function() {
	// 모든 span tag의 class를 swiper-pagination-bullet으로 설정
	$label.removeClass('swiper-pagination-bullet-active').addClass('swiper-pagination-bullet');
	console.log("label 클릭됨")
	// 클릭한 label 안의 span tag에 swiper-pagination-bullet-active class 추가
	$(".swiper-wrapper").index($(this)-1).addClass('swiper-pagination-bullet-prev');
	$(".swiper-wrapper").index($(this)).addClass('swiper-pagination-bullet-active');
	$(".swiper-wrapper").index($(this)+1).addClass('swiper-pagination-bullet-next');
});


// swiper 객체 생성
var mySwiper = new Swiper('.swiper-container', {
	// 옵션 설정
	loop: true, // 무한 루프
	pagination: {
	  el: '.swiper-pagination', // 페이지네이션 표시 위치
	},
	autoplay: {
	  delay: 2000, // 자동 재생 시간 간격 (3초)
	}
});

