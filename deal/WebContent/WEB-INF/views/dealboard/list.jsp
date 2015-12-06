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
                                    <h2><i class="fa fa-child fa-2x"></i>dd가격 흥정<small>원하는 회사를 찾아보세요.</small></h2>
                                    
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
                                                        <button type="button" class="btn btn-success btn-xs" onclick="noteForm('${dto.sendUserId}');" data-original-title> <i class="fa fa-user">
                                                            </i> 쪽지 보내기 </button>
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2"> <i class="fa fa-user">
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
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2"> <i class="fa fa-user">
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
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2"> <i class="fa fa-user">
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
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2"> <i class="fa fa-user">
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
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2"> <i class="fa fa-user">
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
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2"> <i class="fa fa-user">
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
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2"> <i class="fa fa-user">
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
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2"> <i class="fa fa-user">
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
                                                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2"> <i class="fa fa-user">
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
       <!-- w쪽지보내기 -->
        
            
        </div>
    
    
    
 
    <!-- Modal -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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

    