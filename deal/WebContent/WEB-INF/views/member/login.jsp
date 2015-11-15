<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
   String cp = request.getContextPath();
   request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<style type="text/css">
.loginButton {
	 font-size: 11pt; 
	 font-family: 나눔고딕, 맑은 고딕, 돋움;
	 background-color:#507CD1;
	 border:none;
	 color:#FFFFFF;
	 width: 360px;
	 height: 50px;
	 line-height: 50px;
}
.lbl {
   position:absolute; 
   margin-left:15px; margin-top: 17px;
   color: #999999; font-size: 11pt;
   font-family: 맑은 고딕;
}
.loginTF {
  width: 340px; height: 35px;
  padding: 5px;
  padding-left: 15px;
  border:1px solid #666666;
  margin-top:5px; margin-bottom:5px;
  font-family:돋움;
  font-size:10pt;
}
</style>

<script type="text/javascript">
//엔터 처리
$(function(){
	   $("input").not($(":button")).keypress(function (evt) {
	        if (evt.keyCode == 13) {
	            var fields = $(this).parents('form:eq(0),body').find('button,input,textarea,select');
	            var index = fields.index(this);
	            if ( index > -1 && ( index + 1 ) < fields.length ) {
	                fields.eq( index + 1 ).focus();
	            }
	            return false;
	        }
	     });
});

	function bgLabel(ob, id) {
	    if(!ob.value) {
		    document.getElementById(id).style.display="";
	    } else {
		    document.getElementById(id).style.display="none";
	    }
	}

	function sendLogin() {
        var f = document.loginForm;

    	var str = f.userId.value;
        if(!str) {
            alert("\n아이디를 입력하세요. ");
            f.userId.focus();
            return;
        }

        str = f.userPwd.value;
        if(!str) {
            alert("\n패스워드를 입력하세요. ");
            f.userPwd.focus();
            return;
        }

        f.action = "<%=cp%>/member/login.do";
        f.submit();
	}
</script>

<div style="min-height: 450px;">
		<div style="width:100%;	height: 40px; line-height:40px;clear: both; border-top: 1px solid #DAD9FF;border-bottom: 1px solid #DAD9FF;">
		    <div style="width:360px; height:30px; line-height:30px; margin:5px auto;">
		        <img src="<%=cp%>/res/images/arrow.gif" width="11" height="11" alt="" style="padding-left: 5px; padding-right: 5px;" />
		        <span style="font-weight: bold;font-size:13pt;font-family: 나눔고딕, 맑은 고딕, 굴림;">회원 로그인</span>
		    </div>
		</div>
		
		<div style="margin: 50px auto 10px; width:360px; min-height: 350px;">
		
			<form name="loginForm" method="post" action="">
			  <table style="margin: 30px auto; width: 360px; border-spacing: 0px;">
			  <tr align="center" height="60"> 
			      <td> 
	                <label for="userId" id="lblUserId" class="lbl" >아이디</label>
			        <input type="text" name="userId" class="loginTF" maxlength="15"
			                   tabindex="1"
	                           onfocus="document.getElementById('lblUserId').style.display='none';"
	                           onblur="bgLabel(this, 'lblUserId');"
			           />
			      </td>
			  </tr>
			  <tr align="center" height="60"> 
			      <td>
			        <label for="userPwd" id="lblUserPwd" class="lbl" >패스워드</label>
			        <input type="password" name="userPwd" class="loginTF" maxlength="20" 
			                   tabindex="2"
	                           onfocus="document.getElementById('lblUserPwd').style.display='none';"
	                           onblur="bgLabel(this, 'lblUserPwd');"
			        />
			      </td>
			  </tr>
			  <tr align="center" height="65" > 
			      <td>
			        <input type="button" value=" 로그인 " onclick="sendLogin();" class="loginButton"/>
			      </td>
			  </tr>
  			  <tr height="10"><td></td></tr>
  			  <tr><td height="1" bgcolor="#DAD9FF"></td></tr>
			  <tr align="center" height="40">
			      <td>
			       		<a href="<%=cp%>">아이디 찾기</a>&nbsp;|&nbsp; 
			       		<a href="<%=cp%>">비밀번호 찾기</a>&nbsp;|&nbsp;
			       		<a href="<%=cp%>/member/member.do">회원가입</a>
			      </td>
			  </tr>
			  
			  <tr align="center" height="40" >
			    	<td><span style="color: blue;">${message}</span></td>
			  </tr>
			  
			  </table>
			</form>           
		</div>

</div>
	