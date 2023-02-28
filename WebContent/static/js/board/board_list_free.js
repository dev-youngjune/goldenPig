/*게시글 목록*/
showList();

function showList(){
	boards = JSON.parse(boards);
	const $ul = $("#content-wrap ul");
	let text = "";
	boards.forEach(board => {
		text += `
			<li>
		        <div class="content-body">
					<article class="card">
						<div class="card-main">
				            <a href="javascript:location.href='${contextPath}/board/detailOk.board?boardId=${board.boardId}&page=${page}&sort=${sort}&type=${type}&keyword=${keyword}'">
								<h1 class="card-header-title">${boards.boardTitle}</h1>
								<div class="card-content">
									<div class="card-footer">
										<div class="flex-justify-between">
											<div class="flex-items-center">
												<div class="card-label-icon">
													<img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png">
													<span>${boards.replyCount}</span>
												</div>
												<div class="card-label-icon">
													<img class="star" src="${pageContext.request.contextPath}/static/img/board/star-icon.png">
													<span>${boards.boardReadCount}</span>
												</div>
												<div class="card-label-icon">
													<img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png">
													<span>${boards.boardLikeCount}</span>
												</div>
											</div>
										</div>
									</div>
								</div>
		            		</a>
						</div>
					</article>
		        </div>
		    </li>
			`;
	});
				/*첨부파일 있을 경우 img 태그 추가*/
						/*<img src="" class="preview">*/
						/*				                    <div class="profile">
				                        <div>
											<img src="${contextPath}/static/images/profile.png" width="15px">
										</div>
				                        <h6 class="writer">${board.memberName}</h6>
				                    </div>
				                    <h6 clss="board-info">
				                        <span class="read-count">조회 ${board.boardReadCount}</span>
				                        <span>·</span>
				                        <span class="date">`+ elapsedTime(board.boardRegisterDate) +`</span>
				                    </h6>*/
	$ul.append(text);
}