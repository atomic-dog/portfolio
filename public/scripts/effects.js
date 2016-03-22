$('document').ready(function(){ 
 
	$("a.gallery-item").next("br").remove();

	$("a.gallery-item").mouseover(function(e)
	{
		$("body").append("<img class='features-hover' src='"+$(this).attr("rel")+"' alt='' />");
		$("img.features-hover").css({display:"none", visibility:"visible"}).fadeIn(350);
		$(this).children("a.gallery-item img").stop().animate({opacity: 0.5, top: "5px", left: "5px"}, "fast");
	}).mousemove(function(e)
	{
		$("img.features-hover").css({left:e.pageX+-210, top:e.pageY-265});
	}).mouseout(function()
	{
		$(this).children("a.gallery-item img").stop().animate({opacity: 1, top: "0", left: "0"}, "fast");
		$("img.features-hover").remove();
	});

	$(".connect-div a").mouseover(function()
	{
		$(this).next(".connect-div span img.connect-bg").stop(true, true).animate({opacity: "show"}, "fast");
	}).mouseout(function()
	{
		$(this).next(".connect-div span img.connect-bg").stop(true, true).animate({opacity: "hide"}, "fast");
	});

	$('#header ul li a').click(function()
	{
		var thisClass = $(this).attr("rel");
		$("div.slide").stop(true, true).css('display', 'none');
		$("."+thisClass).animate({opacity: "show", height: "show"}, "slow");
		$('#header ul li.active').removeClass("active");
		$(this).parent("li").addClass("active");
		return false;
	});

	$('#lien a').click(function()
	{
		var thisClass = $(this).attr("rel");
		$("div.slide").stop(true, true).css('display', 'none');
		$("."+thisClass).animate({opacity: "show", height: "show"}, "slow");
		$('#header ul li.active').removeClass("active");
		// $("[rel="+thisClass+"]").addClass("active");
		$('#header ul li.'+thisClass+'-nav').addClass("active");
		return false;
	});
	// jQuery("a.gallery-item").fancybox();

});