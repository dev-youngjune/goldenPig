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



