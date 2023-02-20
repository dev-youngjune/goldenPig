	const $boardButton = $(".board-button");
	const $noticeButton = $(".notice-button");

	$boardButton.click(function() {

		if ($(".board-icon").hasClass("triangle")) {
			$(".board-icon").addClass("triangle-acitve");
			$(".board-icon").removeClass("triangle");
			$(".menus1").slideDown();
		} else {
			$(".board-icon").addClass("triangle");
			$(".board-icon").removeClass("triangle-acitve");
			$(".menus1").slideUp();
		}
	});

	$noticeButton.click(function() {

		if ($(".notice-icon").hasClass("triangle")) {
			$(".notice-icon").addClass("triangle-acitve");
			$(".notice-icon").removeClass("triangle");
			$(".menus2").slideDown();
		} else {
			$(".notice-icon").addClass("triangle");
			$(".notice-icon").removeClass("triangle-acitve");
			$(".menus2").slideUp();
		}
});