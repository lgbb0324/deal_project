<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();
%>
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
    <link href="<%=cp%>/res/defaultTemplate/css/editor/external/google-code-prettify/prettify.css" rel="stylesheet">
    <link href="<%=cp%>/res/defaultTemplate/css/editor/index.css" rel="stylesheet">
 
 <script type="text/javascript">
  function check() {
        var f = document.noticeForm;

    	var str = f.subject.value;
        if(!str) {
            alert("\n제목을 입력하세요. ");
            f.subject.focus();
            return false;
        }

    	str = f.content.value;
        if(!str) {
            alert("\n내용을 입력하세요. ");
            f.content.focus();
            return false;
        }

        var mode="${mode}";
        if(mode=="created")
            f.action = "<%=cp%>/notice/created.do";
        else if(mode=="update")
            f.action = "<%=cp%>/notice/update.do";
        else if(mode=="reply")
            f.action = "<%=cp%>/notice/reply.do";
                   
            
       return true;
  }
</script>
 
 
   <div class="right_col" role="main">
   <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2><i class="fa fa-child fa-2x"></i>공지사항<small>중요공지를 확인하세요.</small></h2>
                                    
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br>
                                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" onsubmit="return check();">

                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">제목<span class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" required="required" name="subject" value="${dto.subject}" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">공지여부<span class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                 <input type="checkbox" name="notice" value="1" ${dto.notice==1 ? "checked='checked' ":"" } />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">작성자<span class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                               ${sessionScope.member.userName}
                                            </div>
                                        </div>
                                        
                       
                                
                                
                                <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12">내용을 입력하시오 <span class="required">*</span>
                                            </label>
                                       
                        


                                <div id="alerts"></div>
                                <div class="btn-toolbar editor col-md-9 col-sm-9 col-xs-12" style="margin:0px;" data-role="editor-toolbar" data-target="#editor">
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Font"><i class="fa icon-font"></i><b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                        <li><a data-edit="fontName Serif" style="font-family:'Serif'">Serif</a></li><li><a data-edit="fontName Sans" style="font-family:'Sans'">Sans</a></li><li><a data-edit="fontName Arial" style="font-family:'Arial'">Arial</a></li><li><a data-edit="fontName Arial Black" style="font-family:'Arial Black'">Arial Black</a></li><li><a data-edit="fontName Courier" style="font-family:'Courier'">Courier</a></li><li><a data-edit="fontName Courier New" style="font-family:'Courier New'">Courier New</a></li><li><a data-edit="fontName Comic Sans MS" style="font-family:'Comic Sans MS'">Comic Sans MS</a></li><li><a data-edit="fontName Helvetica" style="font-family:'Helvetica'">Helvetica</a></li><li><a data-edit="fontName Impact" style="font-family:'Impact'">Impact</a></li><li><a data-edit="fontName Lucida Grande" style="font-family:'Lucida Grande'">Lucida Grande</a></li><li><a data-edit="fontName Lucida Sans" style="font-family:'Lucida Sans'">Lucida Sans</a></li><li><a data-edit="fontName Tahoma" style="font-family:'Tahoma'">Tahoma</a></li><li><a data-edit="fontName Times" style="font-family:'Times'">Times</a></li><li><a data-edit="fontName Times New Roman" style="font-family:'Times New Roman'">Times New Roman</a></li><li><a data-edit="fontName Verdana" style="font-family:'Verdana'">Verdana</a></li></ul>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a data-edit="fontSize 5"><p style="font-size:17px">Huge</p></a>
                                            </li>
                                            <li><a data-edit="fontSize 3"><p style="font-size:14px">Normal</p></a>
                                            </li>
                                            <li><a data-edit="fontSize 1"><p style="font-size:11px">Small</p></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="bold" title="" data-original-title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
                                        <a class="btn" data-edit="italic" title="" data-original-title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
                                        <a class="btn" data-edit="strikethrough" title="" data-original-title="Strikethrough"><i class="icon-strikethrough"></i></a>
                                        <a class="btn" data-edit="underline" title="" data-original-title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="insertunorderedlist" title="" data-original-title="Bullet list"><i class="icon-list-ul"></i></a>
                                        <a class="btn" data-edit="insertorderedlist" title="" data-original-title="Number list"><i class="icon-list-ol"></i></a>
                                        <a class="btn" data-edit="outdent" title="" data-original-title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
                                        <a class="btn" data-edit="indent" title="" data-original-title="Indent (Tab)"><i class="icon-indent-right"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="justifyleft" title="" data-original-title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
                                        <a class="btn" data-edit="justifycenter" title="" data-original-title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
                                        <a class="btn" data-edit="justifyright" title="" data-original-title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
                                        <a class="btn" data-edit="justifyfull" title="" data-original-title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Hyperlink"><i class="icon-link"></i></a>
                                        <div class="dropdown-menu input-append">
                                            <input class="span2" placeholder="URL" type="text" data-edit="createLink">
                                            <button class="btn" type="button">Add</button>
                                        </div>
                                        <a class="btn" data-edit="unlink" title="" data-original-title="Remove Hyperlink"><i class="icon-cut"></i></a>

                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" title="" id="pictureBtn" data-original-title="Insert picture (or just drag &amp; drop)"><i class="icon-picture"></i></a>
                                        <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" style="opacity: 0; position: absolute; top: 0px; left: 0px; width: 36px; height: 33px;">
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="undo" title="" data-original-title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
                                        <a class="btn" data-edit="redo" title="" data-original-title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
                                    </div>
                                </div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12"> <span class="required"></span>
                              </label>
                                <div id="editor" style="padding:0px; border:0px;" class="col-md-9 col-sm-9 col-xs-12" contenteditable="true">
                                    
                                </div>
                              <textarea style="padding:0px; border:0px;" name="content" class="col-md-9 col-sm-9 col-xs-12" >${dto.content}</textarea>
                                <br>
                                <div>
                   
  
			      </div>

                    </div> 
                                        
                            <c:if test="${mode=='update'}">
				               <input type="hidden" name="pageNum" value="${pageNum}">
				               <input type="hidden" name="num" value="${dto.num}">
			         		</c:if>     
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                       
                                        
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                              <a href="<%=cp%>/notice/list.do"><button type="submit" class="btn btn-dark">
                                              <c:if test="${mode=='update'}">
                                              	수정하기
                                              </c:if>
                                              <c:if test="${mode=='created'}">
                                              	저장하기
                                              </c:if>
                                              </button></a>
                                              <a href="<%=cp%>/notice/list.do"><button type="button" class="btn btn-dark">돌아가기</button></a>
                                              
                                            </div>
                                        </div>
 
                                    </form>
                                </div>
                            </div>
                        </div>
                    
                    </div>
        </div>

 