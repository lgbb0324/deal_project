<!-- 복사본  deal2 테스터용-->
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%
   request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

   <script src="<%=cp%>/res/template/js/jquery.min.js"></script>

<link href="<%=cp%>/res/template/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=cp%>/res/template/css/custom.css" rel="stylesheet">
<link href="<%=cp%>/res/template/css/animate.min.css" rel="stylesheet">
<link href="<%=cp%>/res/template/css/icheck/flat/green.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  

<link rel="stylesheet" href=" http://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" type="text/css"/>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
         

<script type="text/javascript">


/* $('#myModal').on('show.bs.modal', function (e) {
     if (!data) return e.preventDefault() // stops modal from being shown
   })
 */   

   // 쪽지보내기
function sendLetter() {
	var content=$.trim($("#letterContent").val());
	
	
	 if(! content){
		alert("내용을 입력하세요!!!!!!!!!!!");
		$("#letterContent").focus();
		return false;
	 }
	 
	 var url="<%=cp%>/letter/send.do";
	 var params="receiveUserId="+receiveUserId+"&content="+content;

		 $.ajax({
		    	type:"POST",
		    	url:url,
		    	data:params,
		    	dataType:"json",
		    	success:function(data){
		        	var isLogin=data.isLogin;
					if(isLogin=="false") {
						location.href="<%=cp%>/member/member.do";
						return false;
					}
					// var state=data.state;
		    		$("#letterContent").val("");
					// 여기에 받는 유저아이디를 받아야한다.?
		    		alert("메시지를 전송 했습니다.");
		    	},
		    	error:function(e) {
		    		alert(e.responseText);
		    	}
		    });
}
   
</script>

<style type="text/css">
 blockquote{
    border-left:none;
  
}

.quote-badge{
    background-color: rgba(0, 0, 0, 0.2);   
}

.quote-text{
    
    font-size: 19px;
    margin-top: -65px;
}
</style>

</head>
<body class="nav-md" style="padding:0px;">
         <div class="container body" style="padding:0px;">
         
         <div class="main_container">
            <div class="layoutSide">
            <tiles:insertAttribute name="sidebar"/>
         </div>
   
   <div class="layoutTop">
      <tiles:insertAttribute name="topbar"/>
   </div>
   
   <div class="layoutBody">
      <tiles:insertAttribute name="body"/>
   </div>
   
   
   <div class="layoutFooter">
      <tiles:insertAttribute name="footer"/>
   </div>


<!-- 제이쿼리 . 모달창-(쪽지보내기창) -->
<div class="modal fade">
<div id="ModalCreated">
<div>

  <span class="pull-right note_fontsize" >2015-11-18

  [16:59]</span>보낸시간 뜨는거야

 <p class="quote-text">
     <textarea id="letterContent"></textarea>
 </p>
<hr>

<div class="blog-post-actions">
 
 <div>받는 사람 아이디: </div> <div  id="idWrite" class="btn-primary pull-left" style="float: left">
  
 </div>
  <p class="blog-post-bottom pull-right">
 <span>
 <button type="button" class="btn btnsetting"  onclick="sendLetter();">보내기</button>
<!-- 이거 설정버튼인데 밑에 드롭다운 메뉴 뜨는거야 -->
  </span>
</p>

   </div>

 </div>

</div>
</div>
<!--  쪽지 보내기 제이쿼리 모달창 종료 -->

<!-- 쪽지 내용 모달창 -->
<div class="modal fade">
   <div id="ModalArticle" >
                             
                                 <div>
                                    
                                     <span class="pull-right note_fontsize" >2015-11-18[16:59]</span>보낸시간 뜨는거야
                                       
                                       <p class="quote-text">
                                     			쪽지내용
                                       </p>
                                    <hr>
                                       <div class="blog-post-actions">
                   
                                       <a class="blog-post-bottom pull-left" data-toggle="modal" data-target="#ModalCreated">
                                          	(보낸사람)-바로답장
                                        </a>
                                         
                                       </div>
                                 </div>
                               </div>
                               </div>
                              <!-- 쪽지 내용 확인창 --> 
                               
                               
                               
                               
                               
                             </div>
</div>
 

         <script src="<%=cp%>/res/template/js/custom.js"></script>  

</body>
</html>