



/*const $replyCount = $("#");*/
const $favoriteButton = $("#favoriteButton");
const $likeButton = $("#likeButton");
const $likeCount = $("#likeButton span");
const $commentButton = $("#commentsButton");
const $isBoardFree = isBoardFree;
const boarId = boardId;
/*const memberId = memberId;*/
/*const likeInfo = JSON.parse(likeInfo); // 좋아요 여부 정보*/
/*const $readCount
const $likeCount*/



$likeButton.on("click", function(){
	console.log("라이크 버튼 클릭");
/*	if(!isLogin){
		alert('로그인을 먼저 진행해주세요.');
		return;
	}*/
	if($isBoardFree & !isLogin){
		/* 자유 게시판 */
        if($likeButton.hasClass("color-blue")) {
			buttonService.like(memberId, boardId, $isBoardFree, function(result){
				console.log("싫어요");
				$likeCount.val(result || $likeCount.val());
				$likeCount.text(result || $likeCount.val());
			})
        } else {
			buttonService.like(memberId, boardId, $isBoardFree, function(result){
				console.log("좋아요");
				$likeCount.val(result);
				$likeCount.text(result);
			})
        }
		
	}else {
		/* 저축 게시판 */
		
	}
	
});

const buttonService = (function(){
/*	function favoriteOk(favoriteInfo, callback){
		$.ajax({
			url: contextPath + "/boardFavoriteOk.board",
			data: favoriteInfo,
			success: function(){
				if(callback){callback();}
			}
		})
	}
	
	function favoriteDelete(favoriteInfo, callback){
		$.ajax({
			url: contextPath + "/boardFavoriteOk.board",
			data: favoriteInfo,
			success: function(){
				if(callback){callback();}
			}
		})
	}*/
	
	function like(memberId, boardId, $isBoardFree, callback){
		$.ajax({
			url: contextPath + ($isBoardFree ? "/boardLikeOk.boardFree" : "/boardLikeOk.board"),
			data: {memberId: memberId, boardId: boardId},
			success: function(result){
				if(callback) {callback(result);}
			}
		})
	}
	
	return {like: like/*, likeDelete: likeDelete*/};
/*	function name(data, callback){
		$.ajax({
			url: contextPath + "",
			data: data,
			success: function(){
				if(callback){callback();}
			}
		})
	}*/
})();










