<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();
%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
function deleteMessage() {
	if(confirm("팔로우를 취소하시겠습니까? "))
		return false;
}
function insertFriend() {
	
}
</script>

   							<div class="clearfix"></div>
   
                                      <!--
Bootstrap Line Tabs by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
-->

 <div class="right_col" role="main">
                   <div class="x_title">
                                    <h2><i class="fa fa-child fa-2x"></i>팔로우</h2>
                                     <a style="float:right;"><i class="fa fa-users"></i> 내친구</a>
                                    <div class="clearfix"></div>     
                   </div>
                   
                   <div class="x_content">
                   							<div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
							                                <div class="input-group">
							                                    <input type="text" class="form-control" placeholder="Search for...">
							                                    <span class="input-group-btn">
							                            			<button class="btn btn-default" type="button">Go!</button>
							                       			 </span>
							                                 </div>
							                   </div> 
							                  <br><br><br>
							              <c:forEach var="dto"  items="${list}">   
							                   <div class="col-md-6 col-sm-6 col-xs-12 animated fadeInDown"> <!-- 한줄에 몇개인지 -->
                                              <!-- c:forEach -->
                                            <div class="well profile_view"> <!-- 테두리 -->
                                                <div class="col-xs-12"> <!-- 전체 크기 -->
                                                   <div class="col-xs-5"> <!-- 그림 -->
                                                         <a><img src="<%=cp %>/res/images/admin.PNG" alt="" class="img-circle1 img-responsive"  style="padding:0px; margin: 0;"></a> <!-- 사진 -->
                                                   </div> <!-- 그림끝 -->
                                                    <div class="col-xs-4" style="vertical-align: middle;"> <!-- 이름과 팔로우수 -->
						                                      <ul style="padding:0; margin-top: 20%;">
						                                       <li class="dropdown" >
						                                      	 <a class="dropdown-toggle f-namefont " data-toggle="dropdown">${dto.userId}</a>  
						                               			   <ul class="dropdown-menu" style="margin-left: 5%;" >
								                                    <li><a data-toggle="modal" data-target="#ModalCreated"><span class="glyphicon glyphicon-envelope"></span> 쪽지보내기</a></li>
								                                    <li class="divider"></li>
								                                    <li><a href="#"><span class="glyphicon glyphicon-minus-sign"></span> 차단하기</a></li>
								                                     <li class="divider"></li>
								                                     <li><a href="#"><span class="glyphicon glyphicon-exclamation-sign"></span> 신고하기</a></li>
								                                    </ul>
						                            	      </li></ul>
						                                	<span>팔로우 450명</span>
						                            </div>   <!-- 이름과 팔로우수 끝 -->   
						                            
                                                    <div class="" data-toggle="buttons" style="margin-top:35px; ">
												         <label class="btn btn-lg btn-default active" onclick="deleteMessage()" style="font-size: 9pt; border-color: #791212; border-width: 3px;">
												            <input  type="radio" name="options" id="option1" autocomplete="off" checked>
												            <span class="glyphicon glyphicon-ok"></span>팔로우
												        </label>
												        <label class="btn btn-lg btn-default"  style="font-size: 9pt; " onclick="insertFriend()">
												            <input  type="radio" name="options" id="option2" autocomplete="off">
												             <span class="glyphicon glyphicon-plus "></span>팔로우
												        </label>   
														</div>
												   
												   
                                               </div> <!-- 전체크기 끝 -->
                                            </div> <!-- 테두리 끝 -->
                                       <br><br>
                                        </div> <!-- 한줄에 몇개인지 끝 -->
                                           </c:forEach> <!-- c:forEach 끝 -->
                                </div>        
       
              
                    
                                     
</div>

<style type="text/css">

.dropdown-menu:after{
	left:6%;
	right:90%;
	margin-left: 0;
}
ul{
	 list-style:none;
}

.dropdown-menu{
	min-width:100px;
    float: center;
    margin-left: 90px;
}

.pagination{
	padding-left:33%;
}
.pagination>li>a, .pagination>li>span {
	 border-radius: 50% !important;
	 margin: 0 5px;
	 background: white;
	 color:black;
	 border-color:#e51b13;
}
.pagination>li>a:focus, .pagination>li>a:hover, .pagination>li>span:focus, .pagination>li>span:hover {
	 background: #e51b13;
	 color:white;
}
.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover{
	background: #e51b13;
	 color:white;
	 z-index:2;
	 cursor: default;
	 border-color:#e51b13;
	 
}
.img-circle1{
	width:130px;
	height:130px;
	border-radius:50%;
	margin-left: 0px;
}
.f-namefont{
	font-size: 16pt;
	font: #00001E;
	font-weight: bold;
}

.well.profile_view .divider{
	padding-top:0px;
}
.btn.active {                
	display: none;		
}
.btn span:nth-of-type(1)  {            	
	display: none;
}
.btn span:last-child  {            	
	display: block;		
}

.btn.active  span:nth-of-type(1)  {            	
	display: block;		
}
.btn.active span:last-child  {            	
	display: none;			
}
   </style>
   
