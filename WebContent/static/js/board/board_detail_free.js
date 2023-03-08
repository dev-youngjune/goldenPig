
/*게시글 목록*/
showReplyList();

function showReplyList() {
	/*	boards = JSON.parse(boards);*/
	boardInfo = JSON.parse(boardInfo);
	replyDTOs = JSON.parse(replyDTOs);
	memberVO = JSON.parse(memberVO);

	/*const $ul = $("#content div ul");*/
	const $header = $("#card-header");
	const $card = $("#card-content");
	const $buttons = $("#iconButtons");
	const $commentList = $("#commentList");
	const $replyLists = $("#commentLists");
	let text = "";
	text += `
					<h1 class="card-header-title">
						<span class="text-primary">${boardInfo.boardTitle}</span>
					</h1>
					<div class="flex-justify-between">
						<div class="flex-items-center">
							<div class="user-frofile">
								<a class="user-img">
									<!-- <span class=img></span> -->
									<img src="`;
	text += `${boardInfo.memberImgPath == null ? 'https://www.a-ha.io/_nuxt/img/default_profile.f2e66ea.svg' : contextPath + '/static/upload/' + boardInfo.memberImgPath}">
								</a>
								<div class="user-name">
									<span class="name">${boardInfo.memberNickname}</span>
								</div>
							</div>
							<span class="card-header-register-date">${boardInfo.boardRegisterDate}</span>
						</div>
					</div>
	`;
	$header.append(text);

	text = "";

	text += `
							<div class="editor-content">
								<p>${boardInfo.boardContent}</p>
							</div>
	`;
	$card.append(text);

	text = "";
	text += `
					<div class="star-icon position" style="display: none;">
						<img src="${contextPath}/static/img/board/star-icon.png" class="absolute">
						<span id="favoriteButton" class="margin-left color-blue star-text">관심질문 <span class="star-count">${boardInfo.boardFavoriteCount || 0}</span></span>
					</div>
					<div class="like-icon position">
						<img src="${contextPath}/static/img/board/like.png" class="absolute">
						<span id="likeButton" class="margin-left ${likeInfo.likeId == null || likeInfo.likeId == '' || likeInfo.likeId == 'null' ? '' : 'color-blue'} like-text">좋아요 <span class="like-count">${boardInfo.boardLikeCount || 0}</span></span>
					</div>
					<div class="reply-icon position">
						<img src="${contextPath}/static/img/board/comment-icon.png" class="absolute">
						<span id="commentsButton" class="margin-left comment-text">댓글 <span class="comment-count">${boardInfo.boardReplyCount || 0}</span></span>
					</div>	
	`;
	$buttons.append(text);

	text = "";

	if (!isLogin) {
		text += `
					<div class="comment-write">
						<div class="comment-flex-justify-between">
							<div class="comment-user-info">
								<div class="comment-user-image">
									<img src="${contextPath}/upload/${memberVO.memberImgPath}">
									<span>${memberVO.memberNickName}</span>
								</div>
								<div class="comment-input-button">
									<input type="button" value="댓글 등록">
								</div>
							</div>
						</div>
					</div>
					<div class="comment-editor">
						<textarea rows="6" cols="6" placeholder="댓글을 입력해주세요."></textarea>
					</div>
		`;
	}
	$commentList.append(text);

	text = "";



	replyDTOs.forEach(replyDTO => {
		/*src = contextPath + "/static/img/board/noImage.png";*/
		text += `
			<div class="comment-list-padding-top">
				<div class="comment-list-padding-left">
					<div class="comment-list-flex-justify-between">`;

		text += `
						<div class="comment-list-user-info-flex">
							<div class="comment-user-image">
								<img src="https://www.a-ha.io/_nuxt/img/default_profile.f2e66ea.svg">
								<span>${replyDTO.memberNickName}</span>
							</div>
						</div>`
		if (replyDTO.memberId == memberVO.memberId) {
			text += `
						<div class="comment-list-buttons">
							<input type="button" value="수정">
							<span>|</span>
							<input type="button" value="삭제">
						</div>
						`;
		}
		text += `
					</div>
					<div class="margin-top-left">
						<p class="comment-list-reply">${replyDTO.replyContent}</p>
					</div>
					<span class="card-header-register-date margin-left-32px">${replyDTO.replyRegisterDate}</span>
				</div>
			</div>
						
	`;
	});

	$replyLists.append(text);


	/*$ul.append(text);*/
}