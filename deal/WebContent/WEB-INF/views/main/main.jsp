<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();
%>
 <style type="text/css">
 @import "http://fonts.googleapis.com/css?family=Roboto:300,400,500,700";

.mt40 { margin-top: 40px; }

.panel { position: relative; overflow: hidden; display: block; border-radius: 0 !important;  }
.panel-default { border-color: #ebedef !important; }
.panel .panel-body { position: relative; padding: 0 !important; overflow: hidden; height: auto; }
.panel .panel-body a { overflow: hidden; }
.panel .panel-body a img { display: block; margin: 0; width: 100%; height: auto; 
    transition: all 0.5s; 
    -moz-transition: all 0.5s; 
    -webkit-transition: all 0.5s; 
    -o-transition: all 0.5s; 
}
.panel .panel-body a.zoom:hover img { transform: scale(1.3); -ms-transform: scale(1.3); -webkit-transform: scale(1.3); -o-transform: scale(1.3); -moz-transform: scale(1.3); }
.panel .panel-body a.zoom span.overlay { position: absolute; top: 0; left: 0; visibility: hidden; height: 100%; width: 100%; background-color: #000; opacity: 0; 
    transition: opacity .25s ease-out;
    -moz-transition: opacity .25s ease-out;
    -webkit-transition: opacity .25s ease-out;
    -o-transition: opacity .25s ease-out;
}     
.panel .panel-body a.zoom:hover span.overlay { display: block; visibility: visible; opacity: 0.55; -moz-opacity: 0.55; -webkit-opacity: 0.55; filter: alpha(opacity=65); -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=65)"; }  
.panel .panel-body a.zoom:hover span.overlay i { position: absolute; top: 45%; left: 0%; width: 100%; font-size: 2.25em; color: #fff !important; text-align: center;
    opacity: 1;
    -moz-opacity: 1;
    -webkit-opacity: 1;
    filter: alpha(opacity=1);    
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=1)";
}
.panel .panel-footer { padding: 8px !important; background-color: #f9f9f9 !important; border-bottom-right-radius: 0 !important; border-bottom-left-radius: 0 !important; }	
.panel .panel-footer h4 { display: inline; font: 400 normal 1.125em "Roboto",Arial,Verdana,sans-serif; color: #34495e margin: 0 !important; padding: 0 !important; }
.panel .panel-footer i.glyphicon { display: inline; font-size: 1.125em; cursor: pointer; }
.panel .panel-footer i.glyphicon-thumbs-up { color: #1abc9c; }
.panel .panel-footer i.glyphicon-thumbs-down { color: #e74c3c; padding-left: 5px; }
.panel .panel-footer div { width: 15px; display: inline; font: 300 normal 1.125em "Roboto",Arial,Verdana,sans-serif; color: #34495e; text-align: center; background-color: transparent !important; border: none !important; }	

.modal-title { font: 400 normal 1.625em "Roboto",Arial,Verdana,sans-serif; }
.modal-footer { font: 400 normal 1.125em "Roboto",Arial,Verdana,sans-serif; } 

/*!
 * Lightbox for Bootstrap 3 by @ashleydw
 * https://github.com/ashleydw/lightbox
 *
 * License: https://github.com/ashleydw/lightbox/blob/master/LICENSE
 */.ekko-lightbox-container{position:relative}.ekko-lightbox-nav-overlay{position:absolute;top:0;left:0;z-index:100;width:100%;height:100%}.ekko-lightbox-nav-overlay a{z-index:100;display:block;width:49%;height:100%;padding-top:45%;font-size:30px;color:#fff;text-shadow:2px 2px 4px #000;opacity:0;filter:dropshadow(color=#000000,offx=2,offy=2);-webkit-transition:opacity .5s;-moz-transition:opacity .5s;-o-transition:opacity .5s;transition:opacity .5s}.ekko-lightbox-nav-overlay a:empty{width:49%}.ekko-lightbox a:hover{text-decoration:none;opacity:1}.ekko-lightbox .glyphicon-chevron-left{left:0;float:left;padding-left:15px;text-align:left}.ekko-lightbox .glyphicon-chevron-right{right:0;float:right;padding-right:15px;text-align:right}.ekko-lightbox .modal-footer{text-align:left}
 </style>
<script type="text/javascript">
$(document).ready(function() {              
    $('i.glyphicon-thumbs-up, i.glyphicon-thumbs-down').click(function(){    
        var $this = $(this),
        c = $this.data('count');    
        if (!c) c = 0;
        c++;
        $this.data('count',c);
        $('#'+this.id+'-bs3').html(c);
    });      
    $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
        event.preventDefault();
        $(this).ekkoLightbox();
    });                                        
}); 

$(document).ready(function() {
    $('[id^=detail-]').hide();
    $('.toggle').click(function() {
        $input = $( this );
        $target = $('#'+$input.attr('data-toggle'));
        $target.slideToggle();
    });
});

/* $.fn.ready(function (){
	$("p").fitText(2,{'minFontSize':1,'maxFontSize':50});
}); */
function gogo(){

	location.href="<%=cp%>/deal/article.do";
}

</script>




<div class="right_col" role="main">
<script src="//rawgithub.com/ashleydw/lightbox/master/dist/ekko-lightbox.js"></script>


<div class="col-xs-12 col-sm-4 col-md-4 pull-left">



            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="#" onclick="gogo()"  title="Nature Portfolio" class="zoom" data-title="Amazing Nature" data-footer="The beauty of nature" data-type="image" data-toggle="lightbox">
                        <img  src="http://lorempixel.com/350/350/nature/4" alt="Nature Portfolio" />
                        <span class="overlay"><i class="glyphicon glyphicon-fullscreen"></i></span>
                    </a>
                </div>
                <div class="panel-footer">
                    <h4><a style="font-size: 30px;" title="Nature Portfolio">Nature</a></h4>
                    <span class="pull-right">
                        <i id="like1" style="font-size: 30px;" class="glyphicon glyphicon-thumbs-up"></i> <div style="font-size: 25px;" id="like1-bs3"></div>
                        <i id="dislike1"  style="font-size: 30px;" class="glyphicon glyphicon-thumbs-down"></i> <div style="font-size: 25px;" id="dislike1-bs3"></div>
                    </span>
                </div>
                <div>.</div> 
                
                


      

	<div class="panel panel-default" style="margin:0px;">
       <ul class="list-group col-xs-12" style="width:100%; padding:0px;">
            <li class="list-group-item"   style="margin-bottom:20px;">
                <div class="row toggle" style="width:100%; padding-top:0px;" id="dropdown-detail-1" data-toggle="detail-1">
                    <div class=" pull-left">
                       댓글
                    </div>
                    <div ><i class="fa fa-chevron-down pull-right"></i></div>
                </div>
                <div id="detail-1">
                    <hr></hr>
                    
                  <div class="container fluid-row" style="margin-bottom:5px;">
                  
                        <div class="row">
       
								<a  href="#" >
								<img class="avatar" style="height:17%; width:17%;"   src="http://bootdey.com/img/Content/user_1.jpg" alt="avatar"> 
										</a>
											<div class="comment-body">
												<div class="comment-heading ">

													<h5 class=" pull-left" style="margin:0px;"> kmc5151 </h5>

													<h6 style="margin:0px;" class="pull-right">&nbsp   2015-11-11</h6>
												
												</div>
										
												<p  style="margin:0px; padding:0px; width:82%;" class="pull-right clear-fix">eeeeeeeeeeddddddddee!!!!e123323232323223233232322323231243</p>
								
											</div>

                           
                        </div>
                    </div>
                    
                   
                    
                </div>
            </li>
            
        </ul>
</div>

                <!--  <div class="panel panel-default">sddfsdssddf</div> -->
            </div>

</div>


   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  
        </div>

