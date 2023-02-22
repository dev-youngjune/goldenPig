	const $reviewButton = $("#review-button");
	const lastImageImg = document.createElement("img");
	const firstImageImg = document.createElement("img");
	const $left = $(".preview-left");
	const $right = $(".preview-right");
	let $reviewImage = $(".review-image");
	let $reviewBox = $(".preview-image-box");
	const $exitButton = $(".exit-button");
	
	let bannercount;
	let index = 1;
	let checkArrow = false;
	
	$exitButton.click(function(){
		$("#modal").fadeOut(300);
	});
	
	$reviewButton.click(function(){
		// 모달 창 열때 체크된 숫자의 갯수를 가져옴
		bannerCount =  $("input[name=check]:checked").length;
		//배너 이미지의 첫번째 요소의 src속성값을 가져옴
		let data1 = $($reviewImage[0]).attr("src");
		
		//배너 이미지의 마지막 요소의 src속성값을 가져옴
		let data2 = $($reviewImage[bannerCount-1]).attr("src");
		
		//배너를 감싸고 있는 div의 마지막 자식으로 img태그 추가
		$reviewBox.append(lastImageImg);
		
		//추가한 img태그의 src에 첫번째 data1의 주소값을 넣어줌
		$(lastImageImg).attr("src", `${data1}`);
		$(lastImageImg).addClass("review-active");
		//추가한 img태그에 클래스를 넣어줌
		$reviewBox.prepend(firstImageImg);
		//추가한 img태그의 src에 마지막 자식요소의 주소값을 넣어줌
		$(firstImageImg).attr("src", `${data2}`);
		$(firstImageImg).addClass("review-active");
		// 배너들을 감싸고 있는 div에 width를 구한다음 넣어줌
		$reviewBox.css("width",`${700 * (bannerCount + 2)}`);
		$("#modal").fadeIn(300);
	});
		
	$left.click(function(){
			$allImg = $(".review-active");
			console.log($allImg.length);
			if(checkArrow){return;}
		    checkArrow = true;
	
		    $allImg.css("transition" , "transform 0.3s");
			$allImg.css("transform" , `translate(${-700 * --index}px)`);
			if(index == 0){
				index = bannerCount;
				setTimeout(function(){
					$allImg.css("transition" , "transform 0s");
					$allImg.css("transform" , `translate(${-700 * $reviewImage.length}px)`);
				},300);
			}
			setTimeout(()=>{checkArrow = false}, 300);
		});
		
		$right.click(function(){
			$allImg = $(".review-active");
			if(checkArrow){return;}
		    checkArrow = true;
		    
		    $allImg.css("transition" , "transform 0.3s");
		    $allImg.css("transform" , `translate(${-700 * ++index}px)`);
		    
		    if(index == (bannerCount + 1)){
		    	index = 1;
	
				setTimeout(function(){
					$allImg.css("transition" , "transform 0s");
					$allImg.css("transform" , "translate(-700px)");
				}, 300);
		    }
	
			setTimeout(()=>{checkArrow = false}, 300);
		});