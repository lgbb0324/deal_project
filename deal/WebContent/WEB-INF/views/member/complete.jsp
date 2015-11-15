<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String cp=request.getContextPath();
%>

<link rel="stylesheet" href="<%=cp%>/res/css/button.css" type="text/css"/>

<div style="min-height: 450px;">
		<div style="width:100%;	height: 40px;  line-height:40px;clear: both; border-top: 1px solid #DAD9FF;border-bottom: 1px solid #DAD9FF;">
		    <div style="width:600px; height:30px; line-height:30px; margin:5px auto;">
		        <img src="<%=cp%>/res/images/arrow.gif" width="11" height="11" alt="" style="padding-left: 5px; padding-right: 5px;" />
		        <span style="font-weight: bold;font-size:13pt;font-family: 나눔고딕, 맑은 고딕, 굴림;">${title}</span>
		    </div>
		</div>
		
		<div style="margin: 20px auto; width: 400px; min-height: 400px;">
			<div style="margin: 0px auto; padding:10px; min-height: 50px; line-height: 130%;  text-align: center;">${message}</div>
			<div style="height: 50px; text-align: center;">
			    <input type="button" value=" 메인화면으로 이동 >> "
			              class="orange" style="width:150px; height: 25px;"
			              onclick="javascript:location.href='<%=cp%>';">
			</div>  
		</div>
</div>
