



/*const $replyCount = $("#");*/
const $favoriteButton = $("#favoriteButton");
const $likeButton = $("#likeButton");
const $commentButton = $("#commentsButton");
/*const $readCount
const $likeCount*/

const buttonService = (function(){
	function favorite(favoriteInfo, callback){
		$.ajax({
			url: contextPath + "/boardFavoriteOk.boardFree",
			data: favoriteInfo,
			success: function(){
				if(callback){callback();}
			}
		})
	}
	
	function like(likeInfo, callback){
		$.ajax({
			url: contextPath + "/boardLikeOk.boardFree",
			data: likeInfo,
			success: function(){
				if(callback) {callback();}
			}
		})
	}
	return {favorite: favorite, like: like};
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










