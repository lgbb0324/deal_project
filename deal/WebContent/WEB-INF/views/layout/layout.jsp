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
 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> --> 



<%--  <script src="<%=cp%>/res/template/js/bootstrap.min.js"></script>
 --%>

<link href="<%=cp%>/res/template/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=cp%>/res/template/css/custom.css" rel="stylesheet">
<link href="<%=cp%>/res/template/css/animate.min.css" rel="stylesheet">
<link href="<%=cp%>/res/template/css/icheck/flat/green.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   



 <script type="text/javascript">
$('#myModal').on('show.bs.modal', function (e) {
     if (!data) return e.preventDefault() // stops modal from being shown
   })
   

   // 쪽지보내기
function sendLetter() {
	var content=$.trim($("#letterContent").val());

	
	 if(! content){
		alert("내용을 입력하세요!!!!!!!!!!!");
		$("#letterContent").focus();
		return false;
	 }
	 
	 var url="<%=cp%>/letter/send.do";
	 var params="content="+content;
		
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
    margin-left: 28%;
}

.quote-badge{
    background-color: rgba(0, 0, 0, 0.2);   
}

.quote-box{

    overflow: hidden;
    margin-top: -50px;
    padding-top: -100px;
    border-radius: 17px;
    background-color: white;
    margin-top: 25px;
    color:black;
    width: 325px;
    box-shadow: 2px 2px 2px 2px #930000;
    
}

.quotation-mark{
    
    margin-top: -10px;
    font-weight: bold;
    font-size:100px;
    color:black;
    font-family: "Times New Roman", Georgia, Serif;
    
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


</div>
  </div>   
<!-- modal -->
                           <div class="modal fade" id="myModal" >
                             <div class="modal-dialog">
                                 <div class="container">
                                     <blockquote class="quote-box">
                                     <span class="pull-right note_fontsize" >2015-11-18[16:59]</span>보낸시간 뜨는거야
                                       <p class="quotation-mark">
                                         “
                                       </p>
                                       <p class="quote-text">
                                          안녕<br>
                                         이건 쪽지다<br>
                                         예시 쪽지다<br>
                                         디자인 예시 쪽지다<br>
                                         처음 만드는 쪽지다<br>
                                       </p>
                                    <hr>
                                       <div class="blog-post-actions">
                   
                                       <a class="blog-post-bottom pull-left" data-toggle="modal" data-target="#ModalCreated">
                                          	(보낸사람)-답장
                                        </a>
                                         <p class="blog-post-bottom pull-right">
                                         <span>
                        
                                            <button type="button" class="btn btnsetting"> <span class="glyphicon glyphicon-cog"></span></button>
                                            <span class="item-right">
                                                      <button class="btn btn-xs btn-danger pull-right" data-dismiss="modal">x</button>
                                                </span>
                                         </span>
                                         </p>
                                       </div>
                                     </blockquote>
                                 </div>
                               </div>
                             </div>
               
                 <div class="modal fade" id="ModalCreated" >
                             <div class="modal-dialog">
                                 <div class="container">
                                     <blockquote class="quote-box">
                                     <span class="pull-right note_fontsize" >2015-11-18

                                       [16:59]</span>보낸시간 뜨는거야
                                                                              <p class="quotation-mark">
                                                                                “
                                                                              </p>
                                                                              <p class="quote-text">
                                                                                 <textarea id="letterContent" style="width:280px; height:300px;"></textarea>
                                                                              </p>
                                                                           <hr>
                                                                              <div class="blog-post-actions">
                                                                             
                                                                              <button id="sendId" class="btn-primary pull-left" value="박서준">
                     					                                                        
                                                                               </button>
                                                                                <p class="blog-post-bottom pull-right">
                                                                                <span>
                                       
                                        
													 <button type="button" class="btn btnsetting"  onclick="sendLetter();">보내기</button>
                                       				<!-- 이거 설정버튼인데 밑에 드롭다운 메뉴 뜨는거야 -->
                                          <button type="button" class="btn btnsetting"> <span class="glyphicon glyphicon-cog"></span></button>
                                    <span class="item-right">
                                        <button class="btn btn-xs btn-danger pull-right" data-dismiss="modal">x</button>
                                                </span>
                                         </span>
                                         </p>
                                       </div>
                                     </blockquote>
                                 </div>
                               </div>
                             </div> -->
               
       </div>      
       
   <script src="<%=cp%>/res/template/js/custom.js"></script>           
</body>
</html>