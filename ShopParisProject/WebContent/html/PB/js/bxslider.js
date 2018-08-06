var __globalBxslider = {
	bxList:[],
	setup:function(idx, attr){
		if(attr.bxSlider){
			// 이미 해당 배너에 bxslider 적용됨 

		}else{
			// attr에 bxslider 적용
			var $sliderLi = $(".bxslider li", attr);

			var wd = $sliderLi.width();

			var isSingleImage = $sliderLi.length === 1;

			var _mode = $(attr).attr("data-mode"); // 슬라이드 효과 - horizontal,vertical,fade
			_mode = _mode ? _mode : 'horizontal';

			var _maxSlides = $(attr).attr("data-maxSlides"); // 최대 보여지는 갯수
			_maxSlides = _maxSlides && !isNaN(parseInt(_maxSlides)) ? parseInt(_maxSlides) : 1;

			var _slideMargin = $(attr).attr("data-slideMargin"); // 슬라이드 사이 margin 값
			_slideMargin = _slideMargin && !isNaN(parseInt(_slideMargin)) ? parseInt(_maxSlides) : 0;

			var _delay = $(attr).attr("data-delay"); // 슬라이드 딜레이 설정
			_delay = _delay && !isNaN(parseInt(_delay)) ? parseInt(_speed) : 5000;

			var _speed = $(attr).attr("data-speed"); // 슬라이드 속도 설정
			_speed = _speed && !isNaN(parseInt(_speed)) ? parseInt(_speed) : 400;

			var _autoBtn = $(attr).attr("data-autoBtn"); // play / stop / puase
			_autoBtn = _autoBtn && _autoBtn=='true' ? true : false;

			var _auto  = $(attr).attr("data-auto"); // 자동슬라이드 여부
			_auto = _auto && _auto=='true' ? true : false;

			var _pager = $(attr).attr("data-pager");  // 페이지 동그란 버튼 설정 여부
			_pager = ( _pager && _pager=='true' && !isSingleImage ) ? true : false;

			var _controls = $(attr).attr("data-controls"); //자동 슬라이드 컨트롤 버튼 설정 여부
			_controls = _controls && _controls=='true' ? true : false;

			var _moves = $(attr).attr("data-moves"); //한장씩 슬라이드
			_moves = _moves && !isNaN(parseInt(_moves)) ? parseInt(_moves) : 1; 

			var bgCacheCheck = false,
					bgAvailable = false,
					bgColors = [],
					bgTarget;

			__globalBxslider.bxList[__globalBxslider.bxList.length] = attr.bxSlider = $('.bxslider',attr).bxSlider({
				 slideWidth: wd
				,slideMargin: _slideMargin
				,minSlides: 1
				,maxSlides: _maxSlides // 최대 보여지는 갯수
				,speed: _speed
				,pause: _delay
				,mode: _mode // 슬라이드 효과 - horizontal,vertical,fade
				,autoControls: _autoBtn // play / stop / puase
				,auto: _auto // 자동슬라이드 여부
				,pager: _pager
				,controls: _controls
				,moveSlides:_moves
				,onSliderLoad:function(){} // 로드 완료?
				,onSliderResize:function(){} // ...
				,onSlideBefore:function(el, oi, i){
					if( !bgCacheCheck ) {
						bgCacheCheck = true;
						
						var $bxsliderDefault = $(el).closest('.bxslider-default');
						if( !$bxsliderDefault.hasClass('bxslider-bgcolor') ) {
							bgAvailable = false;
							return;
						}
						$sliderLi.each(function() {
							var color = $(this).css('backgroundColor');
							bgColors.push(color);
							if( !bgAvailable && color != 'rgba(0, 0, 0, 0)' && color != 'rgb(0, 0, 0)' ) {
								bgAvailable = true;
							}
						});
						bgTarget = $(el).closest('.bxslider-default').parent().parent();
					}

					if( bgAvailable && bgTarget ) {
						this.speed = 0;
						bgTarget.css({
							'backgroundColor': bgColors[i]
						});
					}
				}


				//infiniteLoop: false
			});

			if( _auto && !isSingleImage ){
				$(attr).on('mouseover',function(){
					this.bxSlider.stopAuto()
				});
				$(attr).on('mouseout',function(){
					this.bxSlider.startAuto()
				});
			}
		}
	},
	resize:function(){
		// 배너 resize
		// __globalBxslider.resize();
		for(var i in this.bxList){
			this.bxList[i].redrawSlider();
		}
	},
	init:function(selector){
		$(selector).each(this.setup);
		$(selector).css("overflow","visible");
	}
};

$(function() {
	__globalBxslider.init(".bxslider-default");

	/* tab 내부에 bxslider가 있을때 사용 */
	$('[class*="js-tab"] a[href*="#"]').on('click', function(){__globalBxslider.resize()});
	$('[class*="js-tab-type1"] a[href*="#"]').on('click', function(){__globalBxslider.resize()});
	$('[class*="js-tab-type2"] a[href*="#"]').on('click', function(){__globalBxslider.resize()});
	$('[class*="js-tab-type3"] a[href*="#"]').on('click', function(){__globalBxslider.resize()});
});