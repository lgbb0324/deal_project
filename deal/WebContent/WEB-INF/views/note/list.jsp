<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 <script>
var sendId;
	 $(function (){
			var n=0;
			$("#ModalCreated").click(function(){
			
			var s = sendId;
			$("#sendId").text(s); 
			
		
			});
	
		
			/* $("#btn2").click(function(){
				n++;
				var s = "<p>텟트"+n+"</p>";
				$(s).appendTo("body");
				}); */
			
		});
	 
	 
	 function sendId(sendId){
		 
		 this.sendId=sendId;
		 
	 }

 </script>
 





  					 <div class="right_col" role="main">
   							<div class="clearfix"></div>
   
                                      <!--
Bootstrap Line Tabs by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
-->

<div class="container">
    <div class="row">
		<div class="col-md-12">
			<h3>쪽지</h3>
				
			<div class="tabbable-panel">
				<div class="tabbable-line">
					<ul class="nav nav-tabs ">
						<li class="active">
							<a href="#tab_default_1" data-toggle="tab">
							받은 쪽지함 </a>
						</li>
						<li>
							<a href="#tab_default_2" data-toggle="tab">
							보낸 쪽지함 </a>
						</li>
					</ul>	
					<div class="tab-content">
						<div class="tab-pane active" id="tab_default_1"> <!-- 받은쪽지함 -->
						<div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for...">
                                    <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                                </div>
                            </div>
							 <table class="table table-striped responsive-utilities jambo_table bulk_action">
                                        <thead>
                                            <tr class="headings">
                                                <th style="text-align: center;">
                                                    <input type="checkbox" id="check-all" class="flat" >
                                                </th>
                                                <th class="column-title"  style="text-align: center;">보낸 사람</th>
                                                <th class="column-title"  style="text-align: center;">내 용</th>
                                                <th class="column-title"  style="text-align: center;">날짜</th>
                               			  </tr>
                            			</thead>

                            <tbody>
                         <c:forEach var="dto" items="${list1}">
                                 <tr style="text-align: center;">
                                    <td class="a-center ">
                                        <input type="checkbox" class="flat" name="table_records">
                                    </td>
                                    <td class=" ">
                                    	<ul style="padding:0">
                                    	<li class="dropdown">
								          <a onclick="sendId('${dto.sendUserId}');" href="#" class="dropdown-toggle" data-toggle="dropdown" >${dto.sendUserId}</a>
								          <ul class="dropdown-menu">
								            <li><a href="#"><span class="glyphicon glyphicon-plus"></span> 팔로우</a></li>
								            <li class="divider"></li>
								            <li><a  data-toggle="modal" data-target="#ModalCreated"><span class="glyphicon glyphicon-envelope"></span> 쪽지보내기</a></li>
								            <li class="divider"></li>
								            <li><a href="#"><span class="glyphicon glyphicon-minus-sign"></span> 차단하기</a></li>
								             <li class="divider"></li>
								             <li><a href="#"><span class="glyphicon glyphicon-exclamation-sign"></span> 신고하기</a></li>
								            
								          </ul>
								        </li></ul></td>
                                    <td class="even pointer"  data-toggle="modal" data-target="#myModal" >${dto.content}</td>
                                    <td class=" ">${dto.sendDay}
                                    
                                    </td>
                                  </tr>
                                  
                                  </c:forEach>
                             </tbody>
                          </table>
                       <div class="container" >
						<ul class="pagination">
						              <li class="disabled"><a href="#">«</a></li>
						              <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
						              <li><a href="#">2</a></li>
						              <li><a href="#">3</a></li>
						              <li><a href="#">4</a></li>
						              <li><a href="#">5</a></li>
						              <li><a href="#">»</a></li>
						            </ul>
						</div>
                        </div>
						<div class="tab-pane" id="tab_default_2"> <!-- 보낸쪽지함 -->
						<div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for...">
                                    <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                                </div>
                            </div>
							  <table class="table table-striped responsive-utilities jambo_table bulk_action">
                                        <thead>
                                            <tr class="headings">
                                                <th style="text-align: center;">
                                                    <input type="checkbox" id="check-all" class="flat" >
                                                </th>
                                                <th class="column-title"  style="text-align: center;">받는 사람</th>
                                                <th class="column-title"  style="text-align: center;">내 용</th>
                                                <th class="column-title"  style="text-align: center;">날짜</th>
                               			  </tr>
                            			</thead>



                            <tbody>
                          
                          
                           <c:forEach var="dto" items="${list2}">
                                <tr style="text-align: center;">
                                    <td class="a-center "><input type="checkbox" class="flat" name="table_records" ></td>
                                    <td class=" ">
                                    	<ul style="padding:0">
                                    	<li class="dropdown">
								          <a href="#" class="dropdown-toggle" data-toggle="dropdown">${dto.receiveUserId}</a>
								          <ul class="dropdown-menu">
								            <li><a href="#"><span class="glyphicon glyphicon-plus"></span> 팔로우</a></li>
								            <li class="divider"></li>
								            <li ><a onclick="javascript:alert();" data-toggle="modal" data-target="#ModalCreated" ><span  class="glyphicon glyphicon-envelope"></span> 쪽지보내기</a></li>
								            <li class="divider"></li>
								            <li><a href="#"><span class="glyphicon glyphicon-minus-sign"></span> 차단하기</a></li>
								             <li class="divider"></li>
								             <li><a href="#"><span class="glyphicon glyphicon-exclamation-sign"></span> 신고하기</a></li>
								            
								          </ul>
								        </li></ul></td>
                                    <td  class="even pointer"  data-toggle="modal" data-target="#myModal" >${dto.content}</td>
                                    <td class=" ">${dto.sendDay}</td>
                                 </tr>
                                  </c:forEach>
                                 
                             </tbody>
                          </table>
                           	<ul class="pagination">
						              <li class="disabled"><a href="#">«</a></li>
						              <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
						              <li><a href="#">2</a></li>
						              <li><a href="#">3</a></li>
						              <li><a href="#">4</a></li>
						              <li><a href="#">5</a></li>
						              <li><a href="#">»</a></li>
						            </ul>
                        </div>
					</div>
				</div>
			</div>
		</div>
	  </div>
   </div>
</div>                  
      
    <div id="custom_notifications" class="custom-notifications dsp_none">
        <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
        </ul>
        <div class="clearfix"></div>
        <div id="notif-group" class="tabbed_notifications"></div>
    </div>

    <script src="js/bootstrap.min.js"></script>

    <!-- chart js -->
    <script src="js/chartjs/chart.min.js"></script>
    <!-- bootstrap progress js -->
    <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- icheck -->
    <script src="js/icheck/icheck.min.js"></script>

    <script src="js/custom.js"></script>

    <!-- image cropping -->
    <script src="js/cropping/cropper.min.js"></script>
    <script src="js/cropping/main.js"></script>

    
    <!-- daterangepicker -->
    <script type="text/javascript" src="js/moment.min.js"></script>
    <script type="text/javascript" src="js/datepicker/daterangepicker.js"></script>
    <!-- moris js -->
    <script src="js/moris/raphael-min.js"></script>
    <script src="js/moris/morris.js"></script>
    <script>
        $(function () {
            var day_data = [
                {
                    "period": "Jan",
                    "Hours worked": 80
                },
                {
                    "period": "Feb",
                    "Hours worked": 125
                },
                {
                    "period": "Mar",
                    "Hours worked": 176
                },
                {
                    "period": "Apr",
                    "Hours worked": 224
                },
                {
                    "period": "May",
                    "Hours worked": 265
                },
                {
                    "period": "Jun",
                    "Hours worked": 314
                },
                {
                    "period": "Jul",
                    "Hours worked": 347
                },
                {
                    "period": "Aug",
                    "Hours worked": 287
                },
                {
                    "period": "Sep",
                    "Hours worked": 240
                },
                {
                    "period": "Oct",
                    "Hours worked": 211
                }
    ];
            Morris.Bar({
                element: 'graph_bar',
                data: day_data,
                xkey: 'period',
                hideHover: 'auto',
                barColors: ['#26B99A', '#34495E', '#ACADAC', '#3498DB'],
                ykeys: ['Hours worked', 'sorned'],
                labels: ['Hours worked', 'SORN'],
                xLabelAngle: 60
            });
        });
    </script>
    <!-- datepicker -->
    <script type="text/javascript">
        $(document).ready(function () {

            var cb = function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
            }

            var optionSet1 = {
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                maxDate: '12/31/2015',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'left',
                buttonClasses: ['btn btn-default'],
                applyClass: 'btn-small btn-primary',
                cancelClass: 'btn-small',
                format: 'MM/DD/YYYY',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Clear',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            };
            $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
            $('#reportrange').daterangepicker(optionSet1, cb);
            $('#reportrange').on('show.daterangepicker', function () {
                console.log("show event fired");
            });
            $('#reportrange').on('hide.daterangepicker', function () {
                console.log("hide event fired");
            });
            $('#reportrange').on('apply.daterangepicker', function (ev, picker) {
                console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
            });
            $('#reportrange').on('cancel.daterangepicker', function (ev, picker) {
                console.log("cancel event fired");
            });
            $('#options1').click(function () {
                $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
            });
            $('#options2').click(function () {
                $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
            });
            $('#destroy').click(function () {
                $('#reportrange').data('daterangepicker').remove();
            });
        });
    </script>
    <!-- /datepicker -->
<style type="text/css">
   	/***
Bootstrap Line Tabs by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
***/

/* Tabs panel */
.tabbable-panel {
  border:1px solid #eee;
  padding: 10px;
}

/* Default mode */
.tabbable-line > .nav-tabs {
  border: none;
  margin: 0px;
}
.tabbable-line > .nav-tabs > li {
  margin-right: 2px;
}
.tabbable-line > .nav-tabs > li > a {
  border: 0;
  margin-right: 0;
  color: #737373;
}
.tabbable-line > .nav-tabs > li > a > i {
  color: #a6a6a6;
}
.tabbable-line > .nav-tabs > li.open, .tabbable-line > .nav-tabs > li:hover {
  border-bottom: 4px solid #fbcdcf;
}
.tabbable-line > .nav-tabs > li.open > a, .tabbable-line > .nav-tabs > li:hover > a {
  border: 0;
  background: none !important;
  color: #333333;
}
.tabbable-line > .nav-tabs > li.open > a > i, .tabbable-line > .nav-tabs > li:hover > a > i {
  color: #a6a6a6;
}
.tabbable-line > .nav-tabs > li.open .dropdown-menu, .tabbable-line > .nav-tabs > li:hover .dropdown-menu {
  margin-top: 0px;
}
.tabbable-line > .nav-tabs > li.active {
  border-bottom: 4px solid #f3565d;
  position: relative;
}
.tabbable-line > .nav-tabs > li.active > a {
  border: 0;
  color: #333333;
}
.tabbable-line > .nav-tabs > li.active > a > i {
  color: #404040;
}
.tabbable-line > .tab-content {
  margin-top: -3px;
  background-color: #fff;
  border: 0;
  border-top: 1px solid #eee;
  padding: 15px 0;
}
.portlet .tabbable-line > .tab-content {
  padding-bottom: 0;
}

/* Below tabs mode */

.tabbable-line.tabs-below > .nav-tabs > li {
  border-top: 4px solid transparent;
}
.tabbable-line.tabs-below > .nav-tabs > li > a {
  margin-top: 0;
}
.tabbable-line.tabs-below > .nav-tabs > li:hover {
  border-bottom: 0;
  border-top: 4px solid #fbcdcf;
}
.tabbable-line.tabs-below > .nav-tabs > li.active {
  margin-bottom: -2px;
  border-bottom: 0;
  border-top: 4px solid #f3565d;
}
.tabbable-line.tabs-below > .tab-content {
  margin-top: -10px;
  border-top: 0;
  border-bottom: 1px solid #eee;
  padding-bottom: 15px;
}
.dropdown-menu:after{
	left:6%;
	right:90%;
}
ul{
	 list-style:none;
}

.dropdown-menu{
	min-width:100px;
    float: center;
    margin-left: 90px;
}

.pagination{
	padding-left:33%;
}
.pagination>li>a, .pagination>li>span {
	 border-radius: 50% !important;
	 margin: 0 5px;
	 background: white;
	 color:black;
	 border-color:#e51b13;
}
.pagination>li>a:focus, .pagination>li>a:hover, .pagination>li>span:focus, .pagination>li>span:hover {
	 background: #e51b13;
	 color:white;
}
.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover{
	background: #e51b13;
	 color:white;
	 z-index:2;
	 cursor: default;
	 border-color:#e51b13;
	 
}
   </style>
   
