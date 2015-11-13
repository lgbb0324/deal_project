<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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



 <link href="<%=cp%>/res/topNside/css/bootstrap.min.css" rel="stylesheet">
 <link href="<%=cp%>/res/topNside/css/custom.css" rel="stylesheet">
  <link href="<%=cp%>/res/topNside/css/animate.min.css" rel="stylesheet">
   
 <script src="<%=cp%>/res/topNside/js/custom.js"></script>
 <script src="<%=cp%>/res/topNside/js/bootstrap.min.js"></script>
 <script src="<%=cp%>/res/topNside/js/jquery.min.js"></script>
 
 

</head>
		<body class="nav-md">
		<div class="container body">
		<div class="main_container">
		<jsp:include page="/layout/sidebar.jsp"></jsp:include>
		<jsp:include page="/layout/topbar.jsp"></jsp:include>
   
   <div class="right_col" role="main">

                <div class="">
                    <div class="page-title">
                        <div class="title_left">
                            <h3>
                   <i class="fa fa-child fa-2x"></i>자유게시판
                    
                </h3>
                        </div>

                        <!-- <div class="title_right">
                            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for...">
                                    <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                                </div>
                            </div>
                        </div> -->
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="x_panel">
                                <!-- <div class="x_title">
                                    <h2>Invoice Design <small>Sample user invoice design</small></h2>
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
                                </div> -->
                                <div class="x_content">

                                    <section class="content invoice">
                                        <!-- title row -->
                                        <div class="row">
                                            <div class="col-xs-12 invoice-header">
                                                <h1>
                                        <i class="fa fa-globe"></i> 제목
                                        <small class="pull-right">등록일: 16/08/2016</small>
                                    </h1>
                                            </div>
                                            <!-- /.col -->
                                        </div>
                                        <!-- info row -->
                                        <div class="row invoice-info">
                                            <div class="col-sm-4 invoice-col">
                                              	  작성자
                                                <address>
                                        <strong>Iron Admin, Inc.</strong>
                                        <br>795 Freedom Ave, Suite 600
                                        <br>New York, CA 94107
                                        <br>Phone: 1 (804) 123-9876
                                        <br>Email: ironadmin.com
                                    </address>
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-sm-4 invoice-col">
                                                To
                                                <address>
                                        <strong>John Doe</strong>
                                        <br>795 Freedom Ave, Suite 600
                                        <br>New York, CA 94107
                                        <br>Phone: 1 (804) 123-9876
                                        <br>Email: jon@ironadmin.com
                                    </address>
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-sm-4 invoice-col">
                                                <b>조회수 :</b>
                                                <br>
                                                <br>
                                                <b>댓글수:</b> 4F3S8J
                                                <br>
                                                <b>Payment Due:</b> 2/22/2014
                                                <br>
                                                <b>Account:</b> 968-34567
                                            </div>
                                            <!-- /.col -->
                                        </div>
                                        <!-- /.row -->

                                        <!-- Table row -->
                                        <div class="row">
                                            <div class="col-xs-12 table">
                                                
                                       <div class='span8 main'>
        <h3>Main Content Section</h3>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.<p> 

        <p>Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
      </div>
                                            </div>
                                            <!-- /.col -->
                                        </div>
                                       
                                       
                                       

                                        <!-- this row will not appear when printing -->
                                        <div class="row no-print">
                                            <div class="col-xs-12">
                                                <button class="btn btn-default" onclick="window.print();">수정</button>
                                                <button class="btn btn-default" onclick="window.print();">삭제</button>
                                                <button class="btn btn-success pull-right">이전글</button>
                                                <button class="btn btn-primary pull-right" style="margin-right: 5px;">목록</button>
                                                 <button class="btn btn-success pull-right" style="margin-right: 5px;">다음글</button>
                                            </div>
                                        </div>
                                        
                                        <div class="container">
  <div class="post-comments">

    <form>
      <div class="form-group">
        <label for="comment">Your Comment</label>
        <textarea name="comment" class="form-control" rows="3"></textarea>
      </div>
      <button type="submit" class="btn btn-default">Send</button>
    </form>

    <div class="comments-nav">
      <ul class="nav nav-pills">
        <li role="presentation" class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                  there are 2593 comments <span class="caret"></span>
                </a>
          <ul class="dropdown-menu">
            <li><a href="#">Best</a></li>
            <li><a href="#">Hot</a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="row">

      <div class="media">
        <!-- first comment -->

        <div class="media-heading">
          <button class="btn btn-default btn-xs" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> <span class="label label-info">12314</span>12 hours ago
        </div>

        <div class="panel-collapse collapse in" id="collapseOne">

          <div class="media-left">
            <div class="vote-wrap">
              <div class="save-post">
                <a href="#"><span class="glyphicon glyphicon-star" aria-label="Save"></span></a>
              </div>
              <div class="vote up">
                <i class="glyphicon glyphicon-menu-up"></i>
              </div>
              <div class="vote inactive">
                <i class="glyphicon glyphicon-menu-down"></i>
              </div>
            </div>
            <!-- vote-wrap -->
          </div>
          <!-- media-left -->


          <div class="media-body">
            <p>가나다라마바사아자차카타파하.aasdfg
            </p>
            <div class="comment-meta">
              <span><a href="#">삭제</a></span>
              <span><a href="#">신고</a></span>
              <span><a href="#">숨기기</a></span>
              <span>
                        <a class="" role="button" data-toggle="collapse" href="#replyCommentT" aria-expanded="false" aria-controls="collapseExample">답글</a>
                      </span>
              <div class="collapse" id="replyCommentT">
                <form>
                  <div class="form-group">
                    <label for="comment">Your Comment</label>
                    <textarea name="comment" class="form-control" rows="3"></textarea>
                  </div>
                  <button type="submit" class="btn btn-default">Send</button>
                </form>
              </div>
            </div>
            <!-- comment-meta -->

            <div class="media">
              <!-- answer to the first comment -->

              <div class="media-heading">
                <button class="btn btn-default btn-collapse btn-xs" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> <span class="label label-info">12314</span> vertu 12 sat once yazmis
              </div>

              <div class="panel-collapse collapse in" id="collapseTwo">

                <div class="media-left">
                  <div class="vote-wrap">
                    <div class="save-post">
                      <a href="#"><span class="glyphicon glyphicon-star" aria-label="Save"></span></a>
                    </div>
                    <div class="vote up">
                      <i class="glyphicon glyphicon-menu-up"></i>
                    </div>
                    <div class="vote inactive">
                      <i class="glyphicon glyphicon-menu-down"></i>
                    </div>
                  </div>
                  <!-- vote-wrap -->
                </div>
                <!-- media-left -->


                <div class="media-body">
                  <p>yazmayın artık amk, görmeyeyim sol framede. insan bi meraklanıyor, ümitleniyor. sonra yine özlem dolu yazıları görüp hayal kırıklığıyla okuyorum.</p>
                  <div class="comment-meta">
                    <span><a href="#">delete</a></span>
                    <span><a href="#">report</a></span>
                    <span><a href="#">hide</a></span>
                            <span>
                              <a class="" role="button" data-toggle="collapse" href="#replyCommentThree" aria-expanded="false" aria-controls="collapseExample">reply</a>
                            </span>
                    <div class="collapse" id="replyCommentThree">
                      <form>
                        <div class="form-group">
                          <label for="comment">Your Comment</label>
                          <textarea name="comment" class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-default">Send</button>
                      </form>
                    </div>
                  </div>
                  <!-- comment-meta -->
                </div>
              </div>
              <!-- comments -->

            </div>
            <!-- answer to the first comment -->

          </div>
        </div>
        <!-- comments -->

      </div>
      <!-- first comment -->
      <div class="media">
        <!-- first comment -->

        <div class="media-heading">
          <button class="btn btn-default btn-xs" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> <span class="label label-info">12314</span> vertu 12 sat once yazmis
        </div>

        <div class="panel-collapse collapse in" id="collapseThree">

          <div class="media-left">
            <div class="vote-wrap">
              <div class="save-post">
                <a href="#"><span class="glyphicon glyphicon-star" aria-label="Kaydet"></span></a>
              </div>
              <div class="vote up">
                <i class="glyphicon glyphicon-menu-up"></i>
              </div>
              <div class="vote inactive">
                <i class="glyphicon glyphicon-menu-down"></i>
              </div>
            </div>
            <!-- vote-wrap -->
          </div>
          <!-- media-left -->


          <div class="media-body">
            <p>yazmayın artık amk, görmeyeyim sol framede. insan bi meraklanıyor, ümitleniyor. sonra yine özlem dolu yazıları görüp hayal kırıklığıyla okuyorum.</p>
            <div class="comment-meta">
              <span><a href="#">sil</a></span>
              <span><a href="#">kaydet</a></span>
              <span><a href="#">sikayer et</a></span>
              <span>
                        <a class="" role="button" data-toggle="collapse" href="#replyCommentFour" aria-expanded="false" aria-controls="collapseExample">cevapla</a>
                      </span>
              <div class="collapse" id="replyCommentFour">
                <form>
                  <div class="form-group">
                    <label for="comment">Yorumunuz</label>
                    <textarea name="comment" class="form-control" rows="3"></textarea>
                  </div>
                  <button type="submit" class="btn btn-default">Yolla</button>
                </form>
              </div>
            </div>
            <!-- comment-meta -->

            <div class="media">
              <!-- answer to the first comment -->

              <div class="media-heading">
                <button class="btn btn-default btn-collapse btn-xs" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> <span class="label label-info">12314</span> vertu 12 sat once yazmis
              </div>

              <div class="panel-collapse collapse in" id="collapseFour">

                <div class="media-left">
                  <div class="vote-wrap">
                    <div class="save-post">
                      <a href="#"><span class="glyphicon glyphicon-star" aria-label="Kaydet"></span></a>
                    </div>
                    <div class="vote up">
                      <i class="glyphicon glyphicon-menu-up"></i>
                    </div>
                    <div class="vote inactive">
                      <i class="glyphicon glyphicon-menu-down"></i>
                    </div>
                  </div>
                  <!-- vote-wrap -->
                </div>
                <!-- media-left -->


                <div class="media-body">
                  <p>yazmayın artık amk, görmeyeyim sol framede. insan bi meraklanıyor, ümitleniyor. sonra yine özlem dolu yazıları görüp hayal kırıklığıyla okuyorum.</p>
                  <div class="comment-meta">
                    <span><a href="#">sil</a></span>
                    <span><a href="#">kaydet</a></span>
                    <span><a href="#">sikayer et</a></span>
                    <span>
                              <a class="" role="button" data-toggle="collapse" href="#replyCommentFive" aria-expanded="false" aria-controls="collapseExample">cevapla</a>
                            </span>
                    <div class="collapse" id="replyCommentFive">
                      <form>
                        <div class="form-group">
                          <label for="comment">Yorumunuz</label>
                          <textarea name="comment" class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-default">Yolla</button>
                      </form>
                    </div>
                  </div>
                  <!-- comment-meta -->

                  <div class="media">
                    <!-- first comment -->

                    <div class="media-heading">
                      <button class="btn btn-default btn-xs" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> <span class="label label-info">12314</span> vertu 12 sat once yazmis
                    </div>

                    <div class="panel-collapse collapse in" id="collapseFive">

                      <div class="media-left">
                        <div class="vote-wrap">
                          <div class="save-post">
                            <a href="#"><span class="glyphicon glyphicon-star" aria-label="Kaydet"></span></a>
                          </div>
                          <div class="vote up">
                            <i class="glyphicon glyphicon-menu-up"></i>
                          </div>
                          <div class="vote inactive">
                            <i class="glyphicon glyphicon-menu-down"></i>
                          </div>
                        </div>
                        <!-- vote-wrap -->
                      </div>
                      <!-- media-left -->


                      <div class="media-body">
                        <p>yazmayın artık amk, görmeyeyim sol framede. insan bi meraklanıyor, ümitleniyor. sonra yine özlem dolu yazıları görüp hayal kırıklığıyla okuyorum.</p>
                        <div class="comment-meta">
                          <span><a href="#">sil</a></span>
                          <span><a href="#">kaydet</a></span>
                          <span><a href="#">sikayer et</a></span>
                          <span>
                        <a class="" role="button" data-toggle="collapse" href="#replyCommentSix" aria-expanded="false" aria-controls="collapseExample">cevapla</a>
                      </span>
                          <div class="collapse" id="replyCommentSix">
                            <form>
                              <div class="form-group">
                                <label for="comment">Yorumunuz</label>
                                <textarea name="comment" class="form-control" rows="3"></textarea>
                              </div>
                              <button type="submit" class="btn btn-default">Yolla</button>
                            </form>
                          </div>
                        </div>
                        <!-- comment-meta -->

                        <div class="media">
                          <!-- answer to the first comment -->

                          <div class="media-heading">
                            <button class="btn btn-default btn-collapse btn-xs" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseExample"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button> <span class="label label-info">12314</span> vertu 12 sat once yazmis
                          </div>

                          <div class="panel-collapse collapse in" id="collapseSix">

                            <div class="media-left">
                              <div class="vote-wrap">
                                <div class="save-post">
                                  <a href="#"><span class="glyphicon glyphicon-star" aria-label="Kaydet"></span></a>
                                </div>
                                <div class="vote up">
                                  <i class="glyphicon glyphicon-menu-up"></i>
                                </div>
                                <div class="vote inactive">
                                  <i class="glyphicon glyphicon-menu-down"></i>
                                </div>
                              </div>
                              <!-- vote-wrap -->
                            </div>
                            <!-- media-left -->


                            <div class="media-body">
                              <p>yazmayın artık amk, görmeyeyim sol framede. insan bi meraklanıyor, ümitleniyor. sonra yine özlem dolu yazıları görüp hayal kırıklığıyla okuyorum.</p>
                              <div class="comment-meta">
                                <span><a href="#">sil</a></span>
                                <span><a href="#">kaydet</a></span>
                                <span><a href="#">sikayer et</a></span>
                                <span>
                              <a class="" role="button" data-toggle="collapse" href="#replyCommentOne" aria-expanded="false" aria-controls="collapseExample">cevapla</a>
                            </span>
                                <div class="collapse" id="replyCommentOne">
                                  <form>
                                    <div class="form-group">
                                      <label for="comment">Yorumunuz</label>
                                      <textarea name="comment" class="form-control" rows="3"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-default">Yolla</button>
                                  </form>
                                </div>
                              </div>
                              <!-- comment-meta -->


                            </div>
                          </div>
                          <!-- comments -->

                        </div>
                        <!-- answer to the first comment -->

                      </div>
                    </div>
                    <!-- comments -->

                  </div>
                  <!-- first comment -->
                </div>
              </div>
              <!-- comments -->

            </div>
            <!-- answer to the first comment -->

          </div>
        </div>
        <!-- comments -->

      </div>
      <!-- first comment -->
    </div>

  </div>
  <!-- post-comments -->
</div>
                                        
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
   <jsp:include page="/layout/footer.jsp"></jsp:include>
        </div>
        </div>
        </div>
                        
</body>
</html>