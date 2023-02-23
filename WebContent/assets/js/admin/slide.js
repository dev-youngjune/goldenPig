	// 모달 창 버튼
	const $reviewButton = $("#review-button");
	//앞뒤로 붙일 img 태그 만들기
	const lastImageImg = document.createElement("img");
	const firstImageImg = document.createElement("img");
	// 왼쪽 버튼
	const $left = $(".preview-left");
	// 오른쪽 버튼
	const $right = $(".preview-right");
	// 해당 div에 추가된 이미지들 전부 가져옴
	let $reviewImage = $(".review-image");
	// 해당 이미지들을 감싸고 있는 div ()
	let $reviewBox = $(".preview-image-box");
	// 모달 창 닫는 버튼
	const $exitButton = $(".exit-button");
	// 체크박스가 checked 된 변수의 길이를 담아줄 전역변수로 선언	
	let bannercount;
	// 슬라이드 카운트 세기 위함
	let index = 1;
	let checkArrow = false;
	let $temp;
	
	// 1. 선택창의 체크된 배너의 번호로 배너의 이미지 주소 값을 가져와서 담아 줘야 하기에 변수 하나 선언해야 합니다!!! ex) $("input[name=check]:checked") 이것의 배너 번호를 가져와서
	// 2. 가져온 이름에 j쿼리면 addClass로 "review-active" , "review-image" 
	// 3. ※ 주의 : 만든 firstImageImg 와 lastImageImg에는 "review-image" 추가하면 안됨
	
	// 모달창 닫는 함수
	$exitButton.click(function(e) {
		e.preventdefault;
	
		$(".modal-number-button").empty();
		// 배너 이미지 삭제 
		/*$reviewBox.empty();*/
		$("#modal").fadeOut(300);
	});
	
	// 모달창을 여는 함수 
	$reviewButton.click(function() {
		// 모달 창 열때 체크된 숫자의 갯수를 가져옴
		bannerCount = $("input[name=check]:checked").length;
		let data1 = $($reviewImage[0]).attr("src");
		let data2 = $($reviewImage[bannerCount - 1]).attr("src");
		
		//배너를 감싸고 있는 div의 마지막 자식으로 img태그 추가
		$reviewBox.append(lastImageImg);
		//추가한 img태그의 src에 첫번째 data1의 주소값을 넣어줌
		$(lastImageImg).attr("src", `${data1}`);
		//review-active를 넣어서 갯수 세기 위함
		$(lastImageImg).addClass("review-active");
	
		//추가한 img태그에 클래스를 넣어줌
		$reviewBox.prepend(firstImageImg);
	
		//추가한 img태그의 src에 마지막 자식요소의 주소값을 넣어줌
		$(firstImageImg).attr("src", `${data2}`);
	
		$(firstImageImg).addClass("review-active");
		// 배너들을 감싸고 있는 div에 width를 구한다음 넣어줌
		$reviewBox.css("width", `${700 * (bannerCount + 2)}`);
	
		for (let i = 0; i < bannerCount; i++) {
			$(".modal-number-button").append(`<div class="number-box">${i + 1}</div>`);
		}
		$($(".number-box")[0]).addClass("number-box-active");
	
		$numberButton = $(".number-box");
		
		$temp = $($numberButton[0]);
		$("#modal").fadeIn(300);
		$numberButton.each(function(i, e){
				$(e).click(function() {
					index = parseInt($(e).text());
					changeButtonStyle();
					$allImg.css("transition", "transform 0.3s");
					$allImg.css("transform", `translate(${-700 * index}px)`);
				});
			
			$left.click(function() {
				$allImg = $(".review-active");
				if (checkArrow) { return; }
				checkArrow = true;
				$allImg.css("transition", "transform 0.3s");
				$allImg.css("transform", `translate(${-700 * --index}px)`);
				if (index == 0) {
					index = bannerCount;
					setTimeout(function() {
						$allImg.css("transition", "transform 0s");
						$allImg.css("transform", `translate(${-700 * $reviewImage.length}px)`);
					}, 300);
				}
				changeButtonStyle();
				setTimeout(() => { checkArrow = false }, 300);
			});
			
			$right.click(function() {
				
				$allImg = $(".review-active");
				if (checkArrow) { return; }
				checkArrow = true;
				$allImg.css("transition", "transform 0.3s");
				$allImg.css("transform", `translate(${-700 * ++index}px)`);
				if (index == (bannerCount + 1)) {
					index = 1;
			
					setTimeout(function() {
						$allImg.css("transition", "transform 0s");
						$allImg.css("transform", "translate(-700px)");
					}, 300);
				}
				changeButtonStyle();
				setTimeout(() => { checkArrow = false }, 300);
			});
					
		});
	});

	


		
	
	
	function changeButtonStyle() {
		if ($temp) {
			$temp.removeClass("number-box-active");
		}
	
		$($numberButton[index - 1]).addClass("number-box-active");;
		$temp = $($numberButton[index - 1]);
		
	}
	
		
		













