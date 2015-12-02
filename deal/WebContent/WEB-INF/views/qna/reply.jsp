<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<c:if test="${not empty listReply}">
<c:forEach var="dto" items="${listReply}">

<!-- reply Comment --> 
<article class="row">
	<div class="col-md-10 col-sm-10">
		<div class="panel panel-default arrow right">
			<div class="panel-body">
 				<header class="text-right">
					<div class="comment-user"><i class="fa fa-user"></i></div>
                    <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i></time>
				</header>
				<div class="comment-post">
					<p>
                     ${dto.content}
                    </p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-2 col-sm-2 hidden-xs">
		<figure class="thumbnail">
			<img class="img-responsive" src="http://www.keita-gaming.com/assets/profile/default-avatar-c5d8ec086224cb6fc4e395f4ba3018c2.jpg" />
			<figcaption class="text-center">${dto.userId}</figcaption>
		</figure>
	</div>
</article>

</c:forEach>
</c:if>


