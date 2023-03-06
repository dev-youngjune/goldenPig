/**
 * 
 */
 
const $starIcon = $(".star-icon");
const $likeIcons = $(".like-icon");
const $replyIcons = $(".reply-icon");


$starIcon.on("click", function(e) {
    const $starText = $starIcon.children(".margin-left");
    
    if($starIcon.hasClass('background-color')) {
        $starIcon.removeClass("background-color");
        $starText.css("color", "#2553E5");
    } else {
        $starIcon.addClass("background-color");
        $starText.css("color", "#ffffff");
    }
});

$likeIcons.each((i, likeIcon) => {
    const $likeIcon = $(likeIcon);

    $likeIcon.on("click", function(e) {
        
        const $likeIconSpan = $($likeIcon.children()[1]);

        if($likeIconSpan.hasClass("color-blue")) {
            $likeIconSpan.removeClass("color-blue");
        } else {
            $likeIconSpan.addClass("color-blue");
        }
    });
});

$replyIcons.each((i, replyIcon) => {
    const $replyIcon = $(replyIcon);
    var $commentWraps = $($(".comment-wrap")[i]);

    $replyIcon.on("click", function(e) {
        const $replyIconSpan = $($replyIcon.children()[1]);

        $commentWraps.css("display", "block");
        if($replyIconSpan.hasClass("color-black")) {
            $replyIconSpan.removeClass("color-black");

            $commentWraps.each((i, commentWrap) => {
                const $commentWrap = $(commentWrap);

                $commentWrap.css("display", "none");
            });
        } else {
            $replyIconSpan.addClass("color-black");
        }
    });
});


/*게시글 목록*/
showReplyList();

function showReplyList(){
	boards = JSON.parse(boards);
	const $ul = $("#content div ul");
	let text = "";
	console.log("JS들어옴");
	boards.forEach(board => {
		src = contextPath + "/static/img/board/noImage.png";
		text += `
			<li>
				<div class="content-body">
					<div class="question-card">
						<article class="card">
							<div class="card-main">
								<header class="card-header">
									<a href="${contextPath}/boardDetailOk.boardFree?boardId=${board.boardId}">
					                    <div class="profile" style=" display: flex; justify-content: space-between;">
											<div style="display: inline-block;">
						                        <h6 class="writer">${board.memberName}</h6>
						                        <h6 class="boardId">${board.boardId}</h6>
												<h1 class="card-header-title">${board.boardTitle}</h1>
											</div>
					                        <div style="display: inline-block;">
												<img src="${board.boardImgPath || src}" width="15px">
											</div>
					                    </div>
									</a>
								</header>
								<div class="card-content">
									<div class="card-footer">
										<div class="flex-justify-between">
											<div class="flex-items-center">
												<div class="card-label-icon">
													<img class="reply" src="${contextPath}/static/img/board/answer.png">
													<span>${board.boardReplyCount || 0}</span>
												</div>
												<div class="card-label-icon">
													<img class="star" src="${contextPath}/static/img/board/star-icon.png">
													<span>${board.boardReadCount || 0}</span>
												</div>
												<div class="card-label-icon">
													<img class="heart" src="${contextPath}/static/img/board/heart.png">
													<span>${board.boardLikeCount || 0}</span>
												</div>
											</div>
											<span class="card-header-infomation">${board.boardRegisterDate}</span>
										</div>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
		    </li>
			`;
	});
/*		        <div>
		            <a href="javascript:location.href='${contextPath}/board/detailOk.board?boardId=${board.boardId}&page=${page}&keyword=${keyword}'">
		                <section class="content-container">
		                    <div class="profile">
		                        <div><img src="${contextPath}/static/images/profile.png" width="15px"></div>
		                        <h6 class="writer">${board.memberName}</h6>
		                    </div>
		                    <h4 class="title">${board.boardTitle}</h4>
		                    <h6 clss="board-info">
		                        <span class="read-count">조회 ${board.boardReadCount}</span>
		                        <span>·</span>
		                        <span class="date">`+ elapsedTime(board.boardRegisterDate) +`</span>
		                    </h6>
		                </section>
		            </a>
		        </div>*/
	$ul.append(text);
}