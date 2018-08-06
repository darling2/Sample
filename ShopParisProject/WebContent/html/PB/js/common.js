$(document).ready(function(){
	
		$('#topnav li').mouseenter(function(){
			$(this).addClass('on');
			//$(this).children('.lnb').removeClass('on');
			$(this).children(".lnb").addClass('on');
		});
		$('#topnav li').mouseleave(function(){
			$(this).removeClass('on');
			$(this).children(".lnb").removeClass('on');
			//$(this).parent().toggleClass('on');
		});
		
	});