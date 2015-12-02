<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();
%>

    <!-- Custom styling plus plugins -->
   
    <link href="<%=cp%>/test/all/css/icheck/flat/green.css" rel="stylesheet">
    <!-- editor -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
    <link href="<%=cp%>/res/defaultTemplate/css/editor/external/google-code-prettify/prettify.css" rel="stylesheet">
    <link href="<%=cp%>/res/defaultTemplate/css/editor/index.css" rel="stylesheet">
    <!-- select2 -->
    <link href="<%=cp%>/res/defaultTemplate/css/select/select2.min.css" rel="stylesheet">
    <!-- switchery -->
    <link rel="stylesheet" href="<%=cp%>/res/defaultTemplate/css/switchery/switchery.min.css" />

 
<!-- //sdff -->
   <script type="text/javascript" src="<%=cp%>/res/template/se/js/HuskyEZCreator.js" charset="utf-8"></script>

  <script src="<%=cp%>/res/defaultTemplate/js/icheck/icheck.min.js"></script>
        <!-- tags -->

        <!-- switchery -->
        <script src="<%=cp%>/res/defaultTemplate/js/switchery/switchery.min.js"></script>
        
           <!-- daterangepicker -->
        <script type="text/javascript" src="<%=cp%>/res/defaultTemplate/js/moment.min2.js"></script>
        <script type="text/javascript" src="<%=cp%>/res/defaultTemplate/js/datepicker/daterangepicker.js"></script>
        <!-- richtext editor -->


     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>



        <!-- tags -->
        <script src="<%=cp%>/res/defaultTemplate/js/tags/jquery.tagsinput.min.js"></script>
        
       
        <!-- select2 -->
        <script src="<%=cp%>/res/defaultTemplate/js/select/select2.full.js"></script>
    
       
        <!-- Autocomplete -->
        <script type="text/javascript" src="<%=cp%>/res/defaultTemplate/js/autocomplete/countries.js"></script>
        <script src="<%=cp%>/res/defaultTemplate/js/autocomplete/jquery.autocomplete.js"></script>
        
        

		
		<script src="<%=cp%>/res/defaultTemplate/js/editor/bootstrap-wysiwyg.js"></script>
		<script src="<%=cp%>/res/defaultTemplate/js/editor/external/jquery.hotkeys.js"></script>
		<script src="<%=cp%>/res/defaultTemplate/js/editor/external/google-code-prettify/prettify.js"></script>
        

  




            <!-- page content -->
              <div class="right_col" role="main">
                <div class="">

            
                    <div class="clearfix"></div>
               

                 


                    <div class="row">
                      

                        <div class="col-md-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Form Basic Elements <small>different form elements</small></h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="#">Settings 1</a>
                                                </li>
                                                <li><a href="#">Settings 2</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form name="boardForm" method="post" enctype="multipart/form-data" onsubmit="return submitContents(this);" class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">제목</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="subject" type="text" class="form-control" placeholder="제목을 입력하세요">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label name="price" class="control-label col-md-3 col-sm-3 col-xs-12">가격</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" placeholder="딜 성공 예상가격">
                                            </div>
                                        </div>
                                           <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">즉시구매가</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="instantPrice" type="text" class="form-control" placeholder="상품의 정가를 입력하시오">
                                            </div>
                                        </div>
                                            <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">할인율 </label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="discountRate" type="text" class="form-control" disabled="disabled" placeholder="자동으로 계산됩니다.">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">카테고리</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <select name="category1" class="form-control">
                                                    <option>Choose Category</option>
                                                    <option>옷</option>
                                                    <option>음식</option>
                                                    <option>화장품</option>
                                                    <option>가구</option>
                                                </select>
                                            </div>
                                        </div>
                                           <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">세부 카테고리</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <select name="category2" class="form-control">
                                                    <option>Choose Category</option>
                                                    <option>신발</option>
                                                    <option>바지</option>
                                                    <option>상의</option>
                                                    <option>하의</option>
                                                </select>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">인원수</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="people" type="text" class="form-control" placeholder="예상 참여 인원수를 입력하시오.">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">승인여부 </label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="approveCheck" type="text" class="form-control" disabled="disabled" placeholder="승인되지 않았습니다">
                                            </div>
                                        </div>
                                 

                                 <div class="form-group">
                                 <label class="control-label col-md-3 col-sm-3 col-xs-12">시작/끝 </label>
                                            <fieldset class="col-md-4 col-sm-4 col-xs-12">
                                                <div class="control-group">
                                                    <div class="controls">
                                                        <div class="input-prepend input-group">
                                                            <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                                            <input type="text" style="width: 200px" name="start_date" id="reservation" class="form-control" value="11/25/2015 - 11/28/2015">
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                               
                                             <div class="col-md-5 col-sm-5 col-xs-12 ">
                                                <input type="text" class="form-control" disabled="disabled" placeholder="시작 날짜와 끝나는 날짜를 선택해 주세요.">
                                            </div>
                                        </div>
					
					<!--  -->
				<!--  <div class="form-group">
                                            <label  class="control-label col-md-3 col-sm-3 col-xs-12">내용을 입력하시오 <span class="required">*</span>
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
								<label class="control-label col-md-3 col-sm-3 col-xs-12"> <span class="required"></span>
                                            </label>
                                <div  id="editor" style="padding:0px; border:0px;" class="col-md-9 col-sm-9 col-xs-12" style="display:none;" contenteditable="true"> 
                                    
                                </div>
                                	

                                        </div>
                                        
                                        
                                         -->
                        
                                         <div class="form-group">
                                            <label  class="control-label col-md-3 col-sm-3 col-xs-12">내용을 입력하시오 <span class="required">*</span>
                                            </label>
                               <!--  <textarea name="content" class="col-md-9 col-sm-9 col-xs-12" name="descr" id="descr" ></textarea> -->
                                 <%-- <textarea id="content" name="content" cols="75" rows="12" style="width:610px; height:270px;">${dto.content}</textarea>
                                <br> --%>
                                  <table style="width: 730px; margin: 0px; border-spacing: 0px;">
                                  <tr align="left"> 
			      <td width="90" bgcolor="#EFEFEF" style="text-align: center; padding-top:5px;" valign="top"></td>
			      <td width="640" valign="top" style="padding:5px; padding-left:10px;"> 
			        <textarea id="content" name="content" cols="75" rows="12" style="width:610px; height:270px;">${dto.content}</textarea>
			      </td>
			  </tr>
			  </table>
								</div>
                                   
                                       
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Select Custom</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <select name="region1" class="select2_single form-control" tabindex="-1">
                                                    <option value="AK">서울</option>
                                                    <option value="HI">대전</option>
                                                    <option value="CA">대구</option>
                                                    <option value="NV">부산</option>
                                                    
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Select Grouped</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <select name="region2"  class="select2_group form-control">
                                                    <optgroup label="서울">
                                                        <option value="AK">강남구</option>
                                                        <option value="HI">강서구</option>
                                                    </optgroup>
                                                    <optgroup label="부산">
                                                        <option value="CA">달서구</option>
                                                        <option value="NV">봉평구</option>
                                                        <option value="OR">강남구</option>
    
                                                    </optgroup>
                                                  
                                                </select>
                                            </div>
                                        </div>
                                 
                                        <div class="control-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Input Tags</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="tag1" id="tags_1" type="text" class="tags form-control" value="social, adverts, sales" />
                                                <div id="suggestions-container" style="position: relative; float: left; width: 250px; margin: 10px;"></div>
                                            </div>
                                        </div>
                                       

                                  <!--       <div class="ln_solid"></div> -->
                                        <div class="form-group">
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                                                <button type="submit" class="btn btn-success">전송</button>
                                                <button type="submit" class="btn btn-primary">취소</button>
                                                
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>


                   
                    </div>


                </div>
                <!-- /page content -->

      
            </div>
<script type="text/javascript">
function submitContents(elClickedObj) {
	/* oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	
	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
	 */try {
		// elClickedObj.form.submit();
		return check();
	} catch(e) {}
}
</script>
    
       <script type="text/javascript" src="<%=cp%>/res/defaultTemplate/js/moment.min2.js"></script>




        <%--  <script src="<%=cp%>/res/defaultTemplate/js/custom.js"></script> --%>
         
         
          <script type="text/javascript">
            $(function () {
                'use strict';
                var countriesArray = $.map(countries, function (value, key) {
                    return {
                        value: value,
                        data: key
                    };
                });
                // Initialize autocomplete with custom appendTo:
                $('#autocomplete-custom-append').autocomplete({
                    lookup: countriesArray,
                    appendTo: '#autocomplete-container'
                });
            });
        </script>
       <!--  <script src="js/custom.js"></script> -->


        <!-- select2 -->
        <script>
            $(document).ready(function () {
                $(".select2_single").select2({
                    placeholder: "Select a state",
                    allowClear: true
                });
                $(".select2_group").select2({});
                $(".select2_multiple").select2({
                    maximumSelectionLength: 4,
                    placeholder: "With Max Selection limit 4",
                    allowClear: true
                });
            });
        </script>
        <!-- /select2 -->
        <!-- input tags -->
        <script>
            function onAddTag(tag) {
                alert("Added a tag: " + tag);
            }

            function onRemoveTag(tag) {
                alert("Removed a tag: " + tag);
            }

            function onChangeTag(input, tag) {
                alert("Changed a tag: " + tag);
            }

            $(function () {
                $('#tags_1').tagsInput({
                    width: 'auto'
                });
            });
        </script>
        <!-- /input tags -->
        
        <!-- daterangepicker -->
       <script type="text/javascript">
        $(document).ready(function () {
            $('#reservation').daterangepicker(null, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
              
            });

        });
    </script>
    <script type="text/javascript" src="<%=cp%>/res/defaultemplate/js/datepicker/daterangepicker.js"></script>
    
    <script type="text/javascript">
            $(function () {
                'use strict';
                var countriesArray = $.map(countries, function (value, key) {
                    return {
                        value: value,
                        data: key
                    };
                });
                // Initialize autocomplete with custom appendTo:
                $('#autocomplete-custom-append').autocomplete({
                    lookup: countriesArray,
                    appendTo: '#autocomplete-container'
                });
            });
        </script>
       <!--  <script src="js/custom.js"></script> -->


         <!-- select2 -->
       <!-- <script>
            $(document).ready(function () {
                $(".select2_single").select2({
                    placeholder: "Select a state",
                    allowClear: true
                });
                $(".select2_group").select2({});
                $(".select2_multiple").select2({
                    maximumSelectionLength: 4,
                    placeholder: "With Max Selection limit 4",
                    allowClear: true
                });
            }); 
        </script>-->
        <!-- /select2 -->
      
        
        <!-- daterangepicker -->
    <!--    <script type="text/javascript">
        $(document).ready(function () {
            $('#reservation').daterangepicker(null, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
        });
    </script> -->
    <script type="text/javascript" src="<%=cp%>/res/defaultTemplate/js/datepicker/daterangepicker.js"></script>
    
             <script>
            $(document).ready(function () {
                $('.xcxc').click(function () {
                    $('#descr').val($('#editor').html());
                });
            });

            $(function () {
                function initToolbarBootstrapBindings() {
                    var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
                'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
                'Times New Roman', 'Verdana'],
                        fontTarget = $('[title=Font]').siblings('.dropdown-menu');
                    $.each(fonts, function (idx, fontName) {
                        fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
                    });
                    $('a[title]').tooltip({
                        container: 'body'
                    });
                    $('.dropdown-menu input').click(function () {
                            return false;
                        })
                        .change(function () {
                            $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
                        })
                        .keydown('esc', function () {
                            this.value = '';
                            $(this).change();
                        });

                    $('[data-role=magic-overlay]').each(function () {
                        var overlay = $(this),
                            target = $(overlay.data('target'));
                        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
                    });
                    if ("onwebkitspeechchange" in document.createElement("input")) {
                        var editorOffset = $('#editor').offset();
                        $('#voiceBtn').css('position', 'absolute').offset({
                            top: editorOffset.top,
                            left: editorOffset.left + $('#editor').innerWidth() - 35
                        });
                    } else {
                        $('#voiceBtn').hide();
                    }
                };

                function showErrorAlert(reason, detail) {
                    var msg = '';
                    if (reason === 'unsupported-file-type') {
                        msg = "Unsupported format " + detail;
                    } else {
                        console.log("error uploading file", reason, detail);
                    }
                    $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                        '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
                };
                initToolbarBootstrapBindings();
                $('#editor').wysiwyg({
                    fileUploadError: showErrorAlert
                });
                window.prettyPrint && prettyPrint();
            });
        </script>
   <script type="text/javascript">

   var start_date,end_date;
   
function check() {
    var f = document.boardForm;
	
	var str = f.subject.value;
  
	if(!str) {
        alert("\n제목을 입력하세요. ");
        f.subject.focus();
        return false;
    }

	str = f.content.value;
    if(str=="" || str=="<br>") {
        alert("내용을 입력하세요. ");
        f.content.focus();
        return false;
    }
    


  
		f.action="<%=cp%>/bbs/created";


		/* // image 버튼, submit은 submit() 메소드 호출하면 두번전송 */
    return true;
}


$(document).ready(function () {
    $('#reservation').daterangepicker(null, function (start, end, label) {
        console.log(start.toISOString(), end.toISOString(), label);
        start_date=start.toISOString();
        end_date=end.toISOString();
        
        alert( start_date+":"+end_date);
    });

});
</script>

       <script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "content",
	sSkinURI: "<%=cp%>/res/template/se/SmartEditor2Skin.html",	
	htParams : {bUseToolbar : true,
		fOnBeforeUnload : function(){
			//alert("아싸!");
		}
	}, //boolean
	fOnAppLoad : function(){
		//예제 코드
		//oEditors.getById["content"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
	},
	fCreator: "createSEditor2"
});

function pasteHTML() {
	var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
	oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
}

function showHTML() {
	var sHTML = oEditors.getById["content"].getIR();
	alert(sHTML);
}
	
function submitContents(elClickedObj) {
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	
	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
	try {
		// elClickedObj.form.submit();
		return check();
	} catch(e) {}
}

function setDefaultFont() {
	var sDefaultFont = '돋움';
	var nFontSize = 24;
	oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
}
</script>
 
   
