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
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">      
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>



 <link href="<%=cp%>/res/template/css/bootstrap.min.css" rel="stylesheet">
 <link href="<%=cp%>/res/template/css/custom.css" rel="stylesheet">
  <link href="<%=cp%>/res/template/css/animate.min.css" rel="stylesheet">
   
 <script src="<%=cp%>/res/template/js/custom.js"></script>
 <script src="<%=cp%>/res/template/js/bootstrap.min.js"></script>
 <script src="<%=cp%>/res/template/js/jquery.min.js"></script>
 
 
</head>
<body class="nav-md">
			<div class="container body">
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
 
                        
</body>
</html>