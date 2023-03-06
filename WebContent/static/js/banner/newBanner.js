/*게시글 목록*/
showList();

function showList(){
	banners = JSON.parse(banners);
	/*files = JSON.parse(files);*/
	console.log(banners);
	const $wrapper = $(".swiper-container");
	let text = "";
	text += `	<div class="swiper-wrapper">`;
			
	banners.forEach((banner, i) => {
		text += `
					<div id="slide-0${i}" class="swiper-slide"><label style="min-height: 250px"><a><img alt="" src="${banner.bannerSystemName}"></a></label></div>
				`});
				
	text += `	</div>
				<div>`;
	banners.forEach((banner, i) => {
		`<a type="button" class="is-page${i}"></a>`
	});
	
	text += `	</div>
				<div class="swiper-pagination">`;
				
	banners.forEach((banner, i) => {
		`<span class="swiper-pagination-bullet"></span>`
	});
	
	text += `<span class="swiper-notification"></span>`;
	
			/*<li>
		        <div>
		            <a href="javascript:location.href='${contextPath}/board/detailOk.board?boardId=${board.boardId}&page=${page}&sort=${sort}&type=${type}&keyword=${keyword}'">
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
			`;
			if(files[board.boardId]){
				text += `<img src="${contextPath}/upload/${files[board.boardId].fileSystemName}" class="preview">`;
			}
			text += `
		            </a>
		        </div>
		    </li>
			`;
	});*/
	$wrapper.append(text);
}




