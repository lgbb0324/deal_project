<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();
%>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$('#cashModal').on('show.bs.modal', function (e) {
	  if (!data) return e.preventDefault() // stops modal from being shown
	})	
</script>

<style type="text/css">
 blockquote{
    border-left:none;
    margin-left: 0px;
}

.quote-badge{
    background-color: rgba(0, 0, 0, 0.2);   
}

.quote-box{

    overflow: hidden;
    margin-top: -50px;
    padding-top: -100px;
    border-radius: 17px;
    background-color: white;
    margin-top: 25px;
    color:black;
    width: 325px;
    box-shadow: 2px 2px 2px 2px #930000;
    
}

.quote-text{
    
    font-size: 19px;
    margin-top: -65px;
}
#js{
	width: 700px;
}
</style>
   
  		 <div class="right_col" role="main">

                <div class="">
                    <div class="page-title">
                        <div class="title_left">
                            <h3>My Cash</h3>
                        </div>

                        <div class="title_right">
                            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for...">
                                    <span class="input-group-btn">
                          
                        </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">
                            <div style="height: 350px" class="x_panel">
                    
                              
                               
                                <div style="height: 250px;" class="x_content">

                                    <div style="height: 280px" class="col-md-3 col-sm-3 col-xs-12 profile_left">

                                        <div class="profile_img">

                                            <!-- end of image cropping -->
                                            <div id="crop-avatar">
                                                <!-- Current avatar -->
                                                <div style="height: 280px;" class="avatar-view" title="Change the avatar">
                                                    <img src="<%=cp%>/res/images/picture.jpg" alt="Avatar">
                                                </div>

                                                <!-- Cropping modal -->
                                                <div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <form class="avatar-form" action="crop.php" enctype="multipart/form-data" method="post">
                                                                <div class="modal-header">
                                                                    <button class="close" data-dismiss="modal" type="button">&times;</button>
                                                                    <h4 class="modal-title" id="avatar-modal-label">Change Avatar</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="avatar-body">

                                                                        <!-- Upload image and data -->
                                                                        <div class="avatar-upload">
                                                                            <input class="avatar-src" name="avatar_src" type="hidden">
                                                                            <input class="avatar-data" name="avatar_data" type="hidden">
                                                                            <label for="avatarInput">Local upload</label>
                                                                            <input class="avatar-input" id="avatarInput" name="avatar_file" type="file">
                                                                        </div>

                                                                        <!-- Crop and preview -->
                                                                        <div class="row">
                                                                            <div class="col-md-9">
                                                                                <div class="avatar-wrapper"></div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <div class="avatar-preview preview-lg"></div>
                                                                                <div class="avatar-preview preview-md"></div>
                                                                                <div class="avatar-preview preview-sm"></div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row avatar-btns">
                                                                            <div class="col-md-9">
                                                                                <div class="btn-group">
                                                                                    <button class="btn btn-primary" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees">Rotate Left</button>
                                                                                    <button class="btn btn-primary" data-method="rotate" data-option="-15" type="button">-15deg</button>
                                                                                    <button class="btn btn-primary" data-method="rotate" data-option="-30" type="button">-30deg</button>
                                                                                    <button class="btn btn-primary" data-method="rotate" data-option="-45" type="button">-45deg</button>
                                                                                </div>
                                                                                <div class="btn-group">
                                                                                    <button class="btn btn-primary" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees">Rotate Right</button>
                                                                                    <button class="btn btn-primary" data-method="rotate" data-option="15" type="button">15deg</button>
                                                                                    <button class="btn btn-primary" data-method="rotate" data-option="30" type="button">30deg</button>
                                                                                    <button class="btn btn-primary" data-method="rotate" data-option="45" type="button">45deg</button>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <button class="btn btn-primary btn-block avatar-save" type="submit">Done</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- <div class="modal-footer">
                                                  <button class="btn btn-default" data-dismiss="modal" type="button">Close</button>
                                                </div> -->
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /.modal -->

                                                <!-- Loading state -->
                                                <div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
                                            </div>
                                            <!-- end of image cropping -->

                                        </div>
                                       

                                        <ul class="list-unstyled user_data">
                                           
                                           
                                        </ul>
                                      
                                        <br/>

                                        
							<div class="clearfix"></div>
                                    </div>
                                    <div class="col-md-9 col-sm-9 col-xs-12">

                                        <div style="height: 280px" class="x_panel">
                            <div class="x_title">
                                <h2>충전/사용/철회내역</h2>
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

                                <div style="height: 180px" class="bs-example" data-example-id="simple-jumbotron">
                                    <div style="height: 200px" class="jumbotron">
                                        <p>내 잔여캐시  2000 &nbsp;&nbsp;&nbsp;&nbsp;
                                         <input type="button" class="btn btn-primary" value="충전하기" data-toggle="modal" data-target="#cashmodal">
                                          <input type="button" class="btn btn-primary" value="환전하기" data-toggle="modal" data-target="#cashmodal2"></p><br>
                                     	<p style="font-size: 13pt">캐시를 이용하여 사이트에서 진행되는 딜에 참여할 수 있습니다<br>캐시 충전은 카드를 이용하여 충전할 수 있습니다.</p>
                                        
                                      
                                         
                                </div>

                            </div>
                        </div>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                            
                            

</div>
</div>
										<div class="" role="tabpanel" data-example-id="togglable-tabs">
 											<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                                <li role="presentation" class="active"><a href="#listcash1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">충전내역</a>
                                                </li>
                                                <li role="presentation" class=""><a href="#listcash2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">사용/철회내역</a>
                                           		</li>
                                           		<li role="presentation" class=""><a href="#listcash3" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">캐시 환급내역</a>
                                           		</li>	
                                           		<div class="pull-right">
                                           	   		1년까지만 조회가능
                                           		</div>
                                       
                                            </ul>
                                            <div class="pull-right" style="margin-bottom: 10pt">
                                          <div style="float: left;">
                                           <select style="width: 100px" class="form-control">
                                                    <option>2015</option>
                                                    <option>2014</option>
                                              </select>
                                              </div>
                                              	<div style="float: left; font-size: 16pt" >년</div>
                                              
                                          
                                              <div style="float: left;">
                                               <select style="width: 100px" class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                    <option>6</option>
                                                    <option>7</option>
                                                    <option>8</option>
                                                    <option>9</option>
                                                    <option>10</option>
                                                    <option>11</option>
                                                    <option>12</option>
                                              </select>
                                         
                                           </div>
                                             		 <div style="float: left; font-size: 16pt">월</div>
                                          
                                           </div>
                                           
                                           <div id="cashTabContent" class="tab-content">
                                           <div role="tabpanel" class="tab-pane fade active in" id="listcash1" aria-labelledby="home-tab">
                                           <!-- 충전내역 -->

                                    <table class="table table-striped responsive-utilities jambo_table bulk_action">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" id="check-all" class="flat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </th>
                                                <th class="column-title">번호 </th>
                                                <th class="column-title">충전날짜 </th>
                                                <th class="column-title">충전캐시 </th>
                                                <th class="column-title">충전수단 </th>
                                                <th class="column-title">상태 </th>
                                                <th class="column-title">Amount </th>
                                                <th class="column-title no-link last"><span class="nobr">Action</span>
                                                </th>
                                                <th class="bulk-actions" colspan="7">
                                                    <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                            </th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr class="even pointer">
                                    <td class="a-center "><div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>
                                    <td class=" ">1</td>
                                    <td class=" ">2015.11.19 </td>
                                    <td class=" ">300 <i class="success fa fa-long-arrow-up"></i></td>
                                    <td class=" ">신용카드</td>
                                    <td class=" ">정상충전</td>
                                    <td class="a-right a-right ">$7.45</td>
                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                          
                                            </tbody>

                                    </table>
                                </div>
                                    <!-- end 캐시 사용/충전내역 -->      
                                     <div role="tabpanel" class="tab-pane fade" id="listcash2" aria-labelledby="profile-tab">
                                            <table class="table table-striped responsive-utilities jambo_table bulk_action">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" id="check-all" class="flat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </th>
                                                <th class="column-title">번호 </th>
                                                <th class="column-title">날짜 </th>
                                                <th class="column-title">캐시 </th>
                                                <th class="column-title">서비스타입 </th>
                                                <th class="column-title">딜 내역 </th>
                                                <th class="column-title">Amount </th>
                                                <th class="column-title no-link last"><span class="nobr">Action</span>
                                                </th>
                                                <th class="bulk-actions" colspan="7">
                                                    <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                            </th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr class="even pointer">
                                    <td class="a-center "><div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>
                                    <td class=" ">121000040</td>
                                    <td class=" ">May 23, 2014 11:47:56 PM </td>
                                    <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i></td>
                                    <td class=" ">John Blank L</td>
                                    <td class=" ">Paid</td>
                                    <td class="a-right a-right ">$7.45</td>
                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                          
                                            </tbody>

                                    </table>
                                           
                                           
                                       </div>
                                       <!--사용/철회내역 end -->
                                       
                                       <!-- 환불내역  start-->
                                        <div role="tabpanel" class="tab-pane fade" id="listcash3" aria-labelledby="profile-tab">
                                        
                                            <table class="table table-striped responsive-utilities jambo_table bulk_action">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" id="check-all" class="flat" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </th>
                                                <th class="column-title">번호 </th>
                                                <th class="column-title">날짜 </th>
                                                <th class="column-title">환급캐시 </th>
                                                <th class="column-title">환급수단 </th>
                                                <th class="column-title">환급상태 </th>
                                                <th class="column-title">Amount </th>
                                                <th class="column-title no-link last"><span class="nobr">Action</span>
                                                </th>
                                                <th class="bulk-actions" colspan="7">
                                                    <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                            </th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr class="even pointer">
                                    <td class="a-center "><div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>
                                    <td class=" ">121000040</td>
                                    <td class=" ">May 23, 2014 11:47:56 PM </td>
                                    <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i></td>
                                    <td class=" ">John Blank L</td>
                                    <td class=" ">Paid</td>
                                    <td class="a-right a-right ">$7.45</td>
                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox" class="flat" name="table_records" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                          
                                            </tbody>

                                    </table>
                                           
                                           
                                       </div>
                                           
                                           </div>
                                           </div>
                                 
                                 
					
                                </div>
                                 </div>
                                 
                                 
                                 <!--환전하기 모달  -->
						<div class="modal fade" id="cashmodal2" >
									  <div class="modal-dialog">
									      <div class="container">
											    <blockquote class="quote-box">
											    <span class="pull-right note_fontsize" >2015-11-18[16:59]</span><!-- 보낸시간 뜨는거야 -->
											    	
											      <p class="">
											     	캐시환전
											      </p>
											      <hr>
											      <div class="blog-post-actions">
											      <!-- 이름 누르면 답장하는거야 -->
											     
											        <p class="blog-post-bottom pull-right">
											        <span>
											         <!-- 이거 설정버튼인데 밑에 드롭다운 메뉴 뜨는거야 -->
									      			  <span class="item-right">
                       										 <button class="btn btn-xs btn-danger pull-right" data-dismiss="modal">x</button>
                   									  </span>
											        </span>
											        </p>
											      </div>
											    </blockquote>
											</div>
									    </div>
									  </div>
									  
									  <div class="modal fade" id="cashmodal" >
									  <div class="modal-dialog">
									      <div class="container">
											    <blockquote id="js" class="quote-box">
											    <span class="pull-right note_fontsize" >2015-11-18[16:59]</span><!-- 보낸시간 뜨는거야 -->
											      
											      <p class="">
											      <!-- CREDIT CARD FORM STARTS HERE -->
            <div class="panel panel-default credit-card-box">
                <div class="panel-heading display-table" >
                    <div class="row display-tr" >
                        <h3 class="panel-title display-td" >Payment Details</h3>
                        <div class="display-td" >                            
                            <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
                        </div>
                    </div>                    
                </div>
                <div class="panel-body">
                    <form role="form" id="payment-form">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <input 
                                            type="tel"
                                            class="form-control"
                                            name="cardNumber"
                                            placeholder="Valid Card Number"
                                            autocomplete="cc-number"
                                            required autofocus 
                                        />
                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input 
                                        type="tel" 
                                        class="form-control" 
                                        name="cardExpiry"
                                        placeholder="MM / YY"
                                        autocomplete="cc-exp"
                                        required 
                                    />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cardCVC">CV CODE</label>
                                    <input 
                                        type="tel" 
                                        class="form-control"
                                        name="cardCVC"
                                        placeholder="CVC"
                                        autocomplete="cc-csc"
                                        required
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">COUPON CODE</label>
                                    <input type="text" class="form-control" name="couponCode" />
                                </div>
                            </div>                        
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <button class="btn btn-success btn-lg btn-block" type="submit">Start Subscription</button>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div> 
											      </p>
											      <hr>
											      <div class="blog-post-actions">
											      <!-- 이름 누르면 답장하는거야 -->
											     
											        <p class="blog-post-bottom pull-right">
											        <span>
											         <!-- 이거 설정버튼인데 밑에 드롭다운 메뉴 뜨는거야 -->
									      			  <span class="item-right">
                       										 <button class="btn btn-xs btn-danger pull-right" data-dismiss="modal">x</button>
                   									  </span>
											        </span>
											        </p>
											      </div>
											    </blockquote>
											</div>
									    </div>
									  </div>
									  
                                 </div>
                                




