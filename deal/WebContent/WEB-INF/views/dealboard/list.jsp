<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
   String cp = request.getContextPath();
   request.setCharacterEncoding("UTF-8");
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
<body>
<body class="nav-md">
		<div class="container body">
		<div class="main_container">
		<jsp:include page="/layout/sidebar.jsp"></jsp:include>
		<jsp:include page="/layout/topbar.jsp"></jsp:include>
   <div class="right_col" role="main">
   
  <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2><i class="fa fa-child fa-2x"></i>가격 흥정<small>원하는 회사를 찾아보세요.</small></h2>
                                    
                                    <div class="clearfix"></div>
                                </div>
						<div class="x_content">
                                    <div id="example_wrapper" class="dataTables_wrapper" role="grid"><div class="DTTT_container">

                               
                                    </div>
                               
                                
                                    <div class="clear"></div><div id="example_length" class="dataTables_length"><label><select size="1" style="width: 56px;padding: 6px;" name="example_length" aria-controls="example"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> 개씩 정렬</label></div><div class="dataTables_filter" id="example_filter"><label>빠른 검색  : <input type="text" aria-controls="example"></label></div>
                                    <table id="example" class="table table-striped responsive-utilities jambo_table dataTable" aria-describedby="example_info">
                                        <thead>
                                            <tr class="headings" role="row"><th class="sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="
                                                    
                                                " style="width: 33px;">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="tableflat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </th><th class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Invoice : activate to sort column ascending" style="width: 88px;">회사번호 </th><th class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Invoice Date : activate to sort column ascending" style="width: 211px;">회사명 </th><th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Order : activate to sort column descending" style="width: 107px;">전화번호 </th><th class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Bill to Name : activate to sort column ascending" style="width: 106px;">대표명 </th><th class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Status : activate to sort column ascending" style="width: 57px;">대표제품 </th><th class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Amount : activate to sort column ascending" style="width: 71px;">가격 </th><th class="no-link last sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Action
                                                : activate to sort column ascending" style="width: 60px;"><span class="nobr">쪽지</span>
                                                </th></tr>
                                        </thead>


                                    <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="pointer odd">
                                                <td class="a-center">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">CooK and Jou</td>
                                                <td class=" sorting_1">121000203</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$432.26</td>
                                                <td class=" last "><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a>
                                                </td>
                                            </tr><tr class="pointer even">
                                                <td class="a-center">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">CooK and Jou</td>
                                                <td class=" sorting_1">121000203</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$432.26</td>
                                                <td class=" last "><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a>
                                                </td>
                                            </tr><tr class="pointer odd">
                                                 <td class="a-center">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">CooK and Jou</td>
                                                <td class=" sorting_1">121000203</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$432.26</td>
                                                <td class=" last "><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a>
                                                </td>
                                            </tr><tr class="pointer even">
                                               <td class="a-center">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">CooK and Jou</td>
                                                <td class=" sorting_1">121000203</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$432.26</td>
                                                <td class=" last "><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a>
                                                </td>
                                            </tr><tr class="pointer selected odd">
                                                <td class="a-center">
                                                    <div class="icheckbox_flat-green checked" style="position: relative;"><input type="checkbox" checked="" class="tableflat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" sorting_1">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$432.26</td>
                                                <td class=" last "><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a>
                                                </td>
                                            </tr><tr class="pointer selected even">
                                                <td class="a-center">
                                                    <div class="icheckbox_flat-green checked" style="position: relative;"><input type="checkbox" checked="" class="tableflat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" sorting_1">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$432.26</td>
                                                <td class=" last "><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a>
                                                </td>
                                            </tr><tr class="pointer selected odd">
                                                <td class="a-center">
                                                    <div class="icheckbox_flat-green checked" style="position: relative;"><input type="checkbox" checked="" class="tableflat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" sorting_1">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$432.26</td>
                                                <td class=" last "><a href="#">View</a>
                                                </td>
                                            </tr><tr class="pointer selected even">
                                                <td class="a-center">
                                               <div class="icheckbox_flat-green checked" style="position: relative;"><input type="checkbox" checked="" class="tableflat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" sorting_1">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$432.26</td>
                                                <td class=" last "><a href="#">View</a>
                                                </td>
                                            </tr><tr class="pointer odd">
                                                <td class="a-center">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="tableflat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                <td class=" sorting_1">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$333.21</td>
                                                <td class=" last "><a href="#">View</a>
                                                </td>
                                            </tr><tr class="pointer even">
                                                <td class="a-center">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="tableflat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                <td class=" sorting_1">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$333.21</td>
                                                <td class=" last "><a href="#">View</a>
                                                </td>
                                            </tr><tr class="pointer odd">
                                                <td class="a-center">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="tableflat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                <td class=" sorting_1">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$333.21</td>
                                                <td class=" last "><a href="#">View</a>
                                                </td>
                                            </tr><tr class="pointer even">
                                                <td class="a-center">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="tableflat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                <td class=" sorting_1">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right  ">$333.21</td>
                                                <td class=" last "><a href="#">View</a>
                                                </td>
                                            </tr></tbody></table><div class="dataTables_info" id="example_info">Showing 1 to 12 of 40 entries</div><div class="dataTables_paginate paging_full_numbers" id="example_paginate"><a tabindex="0" class="first paginate_button paginate_button_disabled" id="example_first">First</a><a tabindex="0" class="previous paginate_button paginate_button_disabled" id="example_previous">Previous</a><span><a tabindex="0" class="paginate_active">1</a><a tabindex="0" class="paginate_button">2</a><a tabindex="0" class="paginate_button">3</a><a tabindex="0" class="paginate_button">4</a></span><a tabindex="0" class="next paginate_button" id="example_next">Next</a><a tabindex="0" class="last paginate_button" id="example_last">Last</a></div></div>
                                </div>

       </div>
          </div>
   <jsp:include page="/layout/footer.jsp"></jsp:include>
</div>
</div>
        </div>
</body>
</html>