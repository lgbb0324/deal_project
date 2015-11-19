
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();
%>


<script src="//rawgithub.com/ashleydw/lightbox/master/dist/ekko-lightbox.js"></script>

<!-- top navigation -->
            <div class="top_nav">

                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        <ul class="nav navbar-nav navbar-right">
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <img src="<%=cp%>/res/images/img.jpg" alt="">John Doe
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li><a href="<%=cp%>/member/mypage.do">마이페이지</a>
                                    </li>
                                    <li>
                                        <a href="<%=cp%>/member/member.do">
                                            <span class="badge bg-red pull-right">50%</span>
                                            <span>회원가입</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">Help</a>
                                    </li>
                                    <li><a href="<%=cp%>/member/login.do"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                                    </li>
                                </ul>
                            </li><!-- end 내정보 -->
                            
							<li>
                                <a href="<%=cp%>/cash/myCash.do;">
                           				2000
                                </a>
                             </li><!-- end 캐쉬 -->
                             
                          <!-- 쪽지 -->
                            <li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-envelope fa-5x"></i>
                                    <span class="badge bg-green">2</span>
                                </a>
                                
                                <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                             
                                	<!-- 첫번째 쪽지 -->
                                     <li data-toggle="modal" data-target="#myModal">
                                        <a>
                                            <span class="image">
                                       <img class="media-object img-circle" src="<%=cp %>/res/images/park.jpg" alt="profile">
                                    		</span>
                                            <span>
                                        <span>박서준</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                       			안녕
                                    </span>
                                        </a>
                                    </li>
                                    
                                    <!-- 두번째 쪽지 -->
                                     <li data-toggle="modal" data-target="#myModal">
                                        <a>
                                            <span class="image">
                                          <img class="media-object img-circle" src="<%=cp %>/res/images/ch.jpg" alt="profile">
                                    </span>
                                            <span>
                                        <span>최시원</span>
                                            <span class="time">6 mins ago</span>
                                            </span>
                                            <span class="message">
                                       			나야
                                    </span>
                                        </a>
                                    </li>
                                    
                                   <!-- 세번째 쪽지 -->
                                     <li data-toggle="modal" data-target="#myModal">
                                        <a>
                                            <span class="image">
                                          <img class="media-object img-circle" src="<%=cp %>/res/images/she.jpg" alt="profile">
                                    </span>
                                            <span>
                                        <span>황정음</span>
                                            <span class="time">15 mins ago</span>
                                            </span>
                                            <span class="message">
                                       			신촌역
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="text-center">
                                            <a>
                                                <strong><a href="<%=cp%>/note/list.do">ALL </a></strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
							<!-- 대화 -->
							<li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-comments fa-5x"></i>
                                    <span class="badge bg-green">2</span>
                                </a>
                                
                                <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                      	 		1
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                       			2
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                       			3
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                               4
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="text-center">
                                            <a>
                                                <strong><a href="inbox.html">See All Alerts</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
							
							<!-- 알림 -->
                            <li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-paper-plane fa-5x"></i>
                                    <span class="badge bg-green">2</span>
                                </a>
                                
                                <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                      	 		1
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                       			2
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                       			3
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                               4
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="text-center">
                                            <a>
                                                <strong><a href="inbox.html">See All Alerts</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li><!-- end 알림 -->
                            
                             <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									마이딜<span class="badge bg-red">6</span>
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li><a href="<%=cp%>/myDeal/myDeal.do">
                                    <span class="badge bg-red pull-right">2</span>
                                            <span>참여 딜 목록</span>
                                    </a>
                                    </li>
                                    <li>
                                        <a href="<%=cp%>/myDeal/myDeal.do">
                                            <span class="badge bg-red pull-right">2</span>
                                            <span>찜한 딜 목록</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=cp%>/myDeal/myDeal.do">
                                         <span class="badge bg-red pull-right">2</span>
                                            <span>올린 딜 목록</span>
                                        </a>
                                    </li>
                                   
                                </ul>
                            </li><!-- end 마이딜 -->

                        </ul>
                    </nav>
                </div>

            </div>
            <!-- /top navigation -->