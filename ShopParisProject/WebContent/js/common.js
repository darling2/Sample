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
	/* 메인 슬라이더 ticker */
	$('.bxSlider').bxSlider({
		mode:'vertical',
		ticker: true,
		speed:18000 ,//슬라이드 1개 지나갈때 1초 현재 하나 슬라이드 3초씩
		
	});
	
	/* 회원가입 유효성 체크 */
	//비번중복체크
	$(".pwChk2").keyup(function(){
		var p1 =$(this).val();
		var p2 =$(".pwChk").val();
		console.log(p1);
		 if(p1==p2){
			 $(".pwResult").text("패스워드 일치");
		 }else{
			 $(".pwResult").text("패스워드 불일치");
		 } 
	});
	$(".pwChk").keyup(function(){
		var p1 =$(this).val();
		var p2 =$(".pwChk2").val();
		console.log(p1);
		 if(p1==p2){
			 $(".pwResult").text("패스워드 일치");
		 }else{
			 $(".pwResult").text("패스워드 불일치");
		 } 
	});
	
	$("#emailOption").change(function(){
		var email2 = $(this).val();
		$("#email2").val(email2);
		
	})
	
	//id,name 필수 입력값 체크
	$(".btnSubmit").click(function(e){
		var userid = $("#userid").val();
		var userpw = $("#userpwd").val();
		var userpw2 = $("#userpwd2").val();
		if(userid.length==0){
			$("#userid").focus();
			alert("아이디를 입력해주세요!");
			e.preventDefault();
			
		}else if( userpw.length==0){
			$("#userpwd").focus();
			alert("비밀번호를 입력해주세요!");
			e.preventDefault();
		}
		
		if(userid.length!=0 &&userpw.length!=0&&userpw2.length!=0){
			$("#memberForm").submit();
		}
		
	})
	
	//아이디중복체크
	$("#userid").keyup(function(){
		$.ajax({
			url:'/ShopParisProject/MemberIdCheckServlet', 
			type:"get",  //방식 get post
			data:{
				userid:$("#userid").val()
				
			},
			
			dataType:'text', 
			success:function(data,status,xhr){ 
				
				$("#idResult").text(data);
	 
			}, 
			error:function(xhr,status,error){ 
				console.log("error");
			}  
			
		});
		
	});
	/* end회원가입 유효성 체크 */
	
	/* 로그인 */
	$("#btnSubmitLogin").click(function(){
		var userid = $("#useridLogin").val();
		var passwd = $("#passwdLogin").val();
		
		if(userid.length !=0 && passwd.length !=0){
			$("#loginForm").submit();
		}
		
	});
	/* 수정 */
    $("#btnSubmitmypage").click(function(e){
          var userid = $("#useridLogin").val();
          var passwd = $("#passwdLogin").val();
          
          if(userid.length !=0 && passwd.length !=0){
               $("#UpdateForm").submit();
          }else{
               e.preventDefault();
          }
          
          if(userid.length ==0 ){
               alert("아이디를 입력해주세요!");
               $("#useridLogin").focus();
          }else if( passwd.length ==0){
               alert("비밀번호를 입력해주세요!");
               $("#passwdLogin").focus();
          }
    });
    
    /* 상품리스트 상품 상세설명 */
    $(function(){
  	  $(".item").hover(function(){
  		  $(this).find(".text").fadeIn();
  	  }, function(){
  		  $(this).find(".text").fadeOut();
  	  });
  	  
    });
    
    /* 상품리스트 메뉴바 */

	$(function(){
		$(".contents_left ul li").hover(function(){
			var idx = $(".contents_left ul li").index(this)+1;
			$(this).find("img").attr("src","images/sub/menu"+idx+"_over.png")
		})
		$(".contents_left ul li").mouseout(function(){
			var idx = $(".contents_left ul li").index(this)+1;
			$(this).find("img").attr("src","images/sub/menu"+idx+".png")
		})
	});

});