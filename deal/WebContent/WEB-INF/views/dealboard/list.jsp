<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
   String cp = request.getContextPath();
   request.setCharacterEncoding("UTF-8");
%>




  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  
   <div class="right_col" role="main">
   
  <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2><i class="fa fa-child fa-2x"></i>가격 흥정<small>원하는 회사를 찾아보세요.</small></h2>
                                    
                                    <div class="clearfix"></div>
                                </div>
						<div class="x_content">

                                    <div class="row">

                                     
                                        <div class="clearfix"></div>


                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: 010-4567-4568</li>
                                                            <li><i class="fa fa-phone"></i> Address: 010-1234-1234</li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                         <a href="#aboutModal" data-toggle="modal" data-target="#myModal"><img src="<%=cp %>/res/images/img.jpg" alt="" class="img-circle img-responsive" ></a>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#contact" data-original-title> <i class="fa fa-user">
                                                            </i> 쪽지 보내기 </button>
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal"> <i class="fa fa-user">
                                                            </i> 프로필 보기 </button>
   
                                                            
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="<%=cp %>/res/images/he.jpg" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                              <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#contact" data-original-title> <i class="fa fa-user">
                                                            </i> 쪽지 보내기 </button>
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal"> <i class="fa fa-user">
                                                            </i> 프로필 보기 </button>
   
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="<%=cp %>/res/images/he2.jpg" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                             <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#contact" data-original-title> <i class="fa fa-user">
                                                            </i> 쪽지 보내기 </button>
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal"> <i class="fa fa-user">
                                                            </i> 프로필 보기 </button>
   
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="<%=cp %>/res/images/he3.jpg" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#contact" data-original-title> <i class="fa fa-user">
                                                            </i> 쪽지 보내기 </button>
                                                        <button type="button" class="btn btn-primary btn-xs" > <i class="fa fa-user">
                                                            </i> 프로필 보기 </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="<%=cp %>/res/images/img.jpg" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="<%=cp %>/res/images/he4.jpg" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                              <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#contact" data-original-title> <i class="fa fa-user">
                                                            </i> 쪽지 보내기 </button>
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal"> <i class="fa fa-user">
                                                            </i> 프로필 보기 </button>
   
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="<%=cp %>/res/images/he5.jpg" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                              <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#contact" data-original-title> <i class="fa fa-user">
                                                            </i> 쪽지 보내기 </button>
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal"> <i class="fa fa-user">
                                                            </i> 프로필 보기 </button>
   
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="<%=cp %>/res/images/img.jpg" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                              <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#contact" data-original-title> <i class="fa fa-user">
                                                            </i> 쪽지 보내기 </button>
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal"> <i class="fa fa-user">
                                                            </i> 프로필 보기 </button>
   
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="<%=cp %>/res/images/he2.jpg" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                             <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#contact" data-original-title> <i class="fa fa-user">
                                                            </i> 쪽지 보내기 </button>
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal"> <i class="fa fa-user">
                                                            </i> 프로필 보기 </button>
   
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
   <div class="col-md-12 col-sm-12 col-xs-12" style="text-align:center;">
                                            <ul class="pagination pagination-split">
                                                <li><a href="#">A</a>
                                                </li>
                                                <li><a href="#">B</a>
                                                </li>
                                                <li><a href="#">C</a>
                                                </li>
                                                <li><a href="#">D</a>
                                                </li>
                                                <li><a href="#">E</a>
                                                </li>
                                                <li>...</li>
                                                <li><a href="#">W</a>
                                                </li>
                                                <li><a href="#">X</a>
                                                </li>
                                                <li><a href="#">Y</a>
                                                </li>
                                                <li><a href="#">Z</a>
                                                </li>
                                            </ul>
                                        </div>
                               
                               
                               
                                </div>
       </div>
          </div>

</div>




	<div class="row">
       
        <div class="modal fade" id="contact" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="panel-title" id="contactLabel"><span class="glyphicon glyphicon-info-sign"></span> Any questions? Feel free to contact us.</h4>
                    </div>
                    <form action="#" method="post" accept-charset="utf-8">
                    <div class="modal-body" style="padding: 5px;">
                          <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                                    <input class="form-control" name="firstname" placeholder="Firstname" type="text" required autofocus />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                                    <input class="form-control" name="lastname" placeholder="Lastname" type="text" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 10px;">
                                    <input class="form-control" name="email" placeholder="E-mail" type="text" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 10px;">
                                    <input class="form-control" name="subject" placeholder="Subject" type="text" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <textarea style="resize:vertical;" class="form-control" placeholder="Message..." rows="6" name="comment" required></textarea>
                                </div>
                            </div>
                        </div>  
                        <div class="panel-footer" style="margin-bottom:-14px;">
                            <input type="submit" class="btn btn-success" value="Send"/>
                                <!--<span class="glyphicon glyphicon-ok"></span>-->
                            <input type="reset" class="btn btn-danger" value="Clear" />
                                <!--<span class="glyphicon glyphicon-remove"></span>-->
                            <button style="float: right;" type="button" class="btn btn-default btn-close" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    
    
 
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title" id="myModalLabel">More About Joe</h4>
                    </div>
                <div class="modal-body">
                    <center>
                    <img src="<%=cp %>/res/images/img.jpg"  name="aboutme" width="140" height="140" border="0" class="img-circle"></a>
                    <h3 class="media-heading">Joe Sixpack <small>USA</small></h3>
                    <span><strong>Skills: </strong></span>
                        <span class="label label-warning">HTML5/CSS</span>
                        <span class="label label-info">Adobe CS 5.5</span>
                        <span class="label label-info">Microsoft Office</span>
                        <span class="label label-success">Windows XP, Vista, 7</span>
                    </center>
                    <hr>
                    <center>
                    <p class="text-left"><strong>Bio: </strong><br>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sem dui, tempor sit amet commodo a, vulputate vel tellus.</p>
                    <br>
                    </center>
                </div>
                <div class="modal-footer">
                    <center>
                    <button type="button" class="btn btn-default" data-dismiss="modal">I've heard enough about Joe</button>
                    </center>
                </div>
            </div>
        </div>
    </div>

    