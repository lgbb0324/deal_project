<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();
%>



            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                        <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Dealer Chic!</span></a>
                    </div>
                    <div class="clearfix"></div>

                   
                    <!-- /menu prile quick info -->

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-home"></i> 의류/잡화 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="index.html">남성의류</a>
                                        </li>
                                        <li><a href="index2.html">여성의류</a>
                                        </li>
                                        <li><a href="index3.html">유아동</a>
                                        </li>
                                         <li><a href="index3.html">악세사리</a>
                                        </li>
                                         <li><a href="index3.html">잡화</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-edit"></i> 뷰티 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="form.html">General Form</a>
                                        </li>
                                        <li><a href="form_advanced.html">스킨케어</a>
                                        </li>
                                        <li><a href="form_validation.html">메이크업</a>
                                        </li>
                                        <li><a href="form_wizards.html">헤어케어</a>
                                        </li>
                                        <li><a href="form_upload.html">바디케어</a>
                                        </li>
                                        <li><a href="form_buttons.html">향수</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-desktop"></i> 식품 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="general_elements.html">농/수/축산 식품</a>
                                        </li>
                                        <li><a href="media_gallery.html">가공식품</a>
                                        </li>
                                        <li><a href="typography.html">건강/다이어트 식품</a>
                                        </li>
                                        <li><a href="icons.html">유아동식품</a>
                                        </li>
                                        <li><a href="glyphicons.html">음료/음식</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-table"></i> 가구/생활 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="tables.html">침대/커튼/카페트</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">책상/테이블/식탁</a>
                                        </li>
                                         <li><a href="tables_dynamic.html">홈/인테리어/DIY</a>
                                        </li>
                                         <li><a href="tables_dynamic.html">생활/수납/욕실/청소</a>
                                        </li>
                                         <li><a href="tables_dynamic.html">주방/수입주방</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-bar-chart-o"></i> 레저/자동차 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="chartjs.html">스포츠용품</a>
                                        </li>
                                        <li><a href="chartjs2.html">등산/아웃도어</a>
                                        </li>
                                        <li><a href="morisjs.html">캠핑/낚시</a>
                                        </li>
                                        <li><a href="echarts.html">자동차용품</a>
                                        </li>
                                        <li><a href="other_charts.html">레저용품</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-table"></i>디지털/가전 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="tables.html">카메라/악세사리</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">주방가전</a>
                                        </li>
                                         <li><a href="tables_dynamic.html">생활가전</a>
                                        </li>
                                         <li><a href="tables_dynamic.html">노트북/데스크탑/PC부품</a>
                                        </li>
                                         <li><a href="tables_dynamic.html">휴대폰/악세사리</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-table"></i> 도서/취미 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="tables.html">도서/음반/DVD</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">e쿠폰/상품권/이용권</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">여행/숙박/항공</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">반려동물용품</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">문구/취미</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-table"></i> 지역(실시간 딜정보) <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="tables.html">서울</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">인천/경기/강원</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">대구/부산</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">대전/광주</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">제주</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="menu_section">
                            <hr>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-bug"></i> 자유게시판 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="e_commerce.html">E-commerce</a>
                                        </li>
                                        <li><a href="projects.html">Projects</a>
                                        </li>
                                        <li><a href="project_detail.html">Project Detail</a>
                                        </li>
                                        <li><a href="contacts.html">Contacts</a>
                                        </li>
                                        <li><a href="profile.html">Profile</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-windows"></i> 가격흥정 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="page_404.html">404 Error</a>
                                        </li>
                                        <li><a href="page_500.html">500 Error</a>
                                        </li>
                                        <li><a href="plain_page.html">Plain Page</a>
                                        </li>
                                        <li><a href="login.html">Login Page</a>
                                        </li>
                                        <li><a href="pricing_tables.html">Pricing Tables</a>
                                        </li>

                                    </ul>
                                </li>
                                <li><a><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a>
                                </li>
                            </ul>
                        </div>

                    </div>
                        
                    <!-- /sidebar menu -->
                    
                    </div>
                    </div>
                
                    