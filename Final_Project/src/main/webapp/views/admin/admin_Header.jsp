<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	// 경로 /biz 부터 시작  [http://localhost:8080/biz/ @@.do 요청 하기 위해]
	String contextPath = request.getContextPath();
	// theme 까지 들어온 경로 
	String KPath = contextPath + "/resources/assets";
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자페이지 해더</title>
</head>
<body>

  <!-- Page Sidebar -->
            <div class="page-sidebar">
                <a class="logo-box" href="<%=contextPath %>/admin_Main.do">
                    <span>OB관리자</span>
                    
                </a>
                <div class="page-sidebar-inner">
                    <div class="page-sidebar-menu">
                       <ul class="accordion-menu">
						<li class="active-page"><a href="<%=contextPath %>/admin_Main.do"> <i
								class="menu-icon icon-home4"></i><span>Home</span>
						</a></li>
						<!-- 수정중 -->
							<li><a href="javascript:void(0)"> <i
								class="menu-icon icon-flash_on"></i><span>영화</span><i
								class="accordion-icon fa fa-angle-left"></i>
						</a>
							<ul class="sub-menu">
								<li><a href="<%=contextPath %>/admin_searchMovie.do">영화전체조회</a></li>
								<li><a href="<%=contextPath %>/admin_insertMovieWriter.do">영화 추가</a></li>
								<li><a href="ui-icons.html">영화 수정</a></li>								
								<li><a href="ui-typography.html">영화 삭제</a></li>
							</ul></li>
						
						
						<!-- 수정전 -->
                            <li>
                                <a href="email.html">
                                    <i class="menu-icon icon-inbox"></i><span>Email</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <i class="menu-icon icon-flash_on"></i><span>UI Kits</span><i class="accordion-icon fa fa-angle-left"></i>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="ui-alerts.html">Alerts</a></li>
                                    <li><a href="ui-buttons.html">Buttons</a></li>
                                    <li><a href="ui-icons.html">Icons</a></li>
                                    <li><a href="ui-typography.html">Typography</a></li>
                                    <li><a href="ui-notifications.html">Notifications</a></li>
                                    <li><a href="ui-modals.html">Modals</a></li>
                                    <li><a href="ui-progress.html">Progress Bars</a></li>
                                    <li><a href="ui-tabs-accordions.html">Tabs &amp; Accordions</a></li>
                                    <li><a href="ui-tree-view.html">Tree View</a></li>
                                    <li><a href="ui-nestable.html">Nestable</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <i class="menu-icon icon-layers"></i><span>Layouts</span><i class="accordion-icon fa fa-angle-left"></i>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="layout-blank.html" class="active">Blank Page</a></li>
                                    <li><a href="layout-boxed.html">Boxed Layout</a></li>
                                    <li><a href="layout-collapsed-sidebar.html">Collapsed Sidebar</a></li>
                                    <li><a href="layout-fixed-header.html">Fixed Header</a></li>
                                    <li><a href="layout-fixed-sidebar.html">Fixed Sidebar</a></li>
                                    <li><a href="layout-fixed-sidebar-header.html">Fixed Sidebar &amp; Header</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <i class="menu-icon icon-code"></i><span>Forms</span><i class="accordion-icon fa fa-angle-left"></i>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="form-elements.html">Elements</a></li>
                                    <li><a href="form-wizard.html">Form Wizard</a></li>
                                    <li><a href="form-file-upload.html">File Upload</a></li>
                                    <li><a href="form-image-crop.html">Image Crop</a></li>
                                    <li><a href="form-image-zoom.html">Image Zoom</a></li>
                                    <li><a href="form-x-editable.html">X-editable</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <i class="menu-icon icon-format_list_bulleted"></i><span>Tables</span><i class="accordion-icon fa fa-angle-left"></i>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="table-static.html">Static</a></li>
                                    <li><a href="table-responsive.html">Responsive</a></li>
                                    <li><a href="table-data.html">Data Tables</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="charts.html">
                                    <i class="menu-icon icon-show_chart"></i><span>Charts</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <i class="menu-icon icon-my_location"></i><span>Maps</span><i class="accordion-icon fa fa-angle-left"></i>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="maps-google.html">Google</a></li>
                                    <li><a href="maps-vector.html">Vector</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <i class="menu-icon icon-star"></i><span>Extra</span><i class="accordion-icon fa fa-angle-left"></i>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="invoice.html">Invoice</a></li>
                                    <li><a href="404.html">404 Page</a></li>
                                    <li><a href="500.html">500 Page</a></li>
                                    <li><a href="profile.html">Profile</a></li>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="register.html">Register</a></li>
                                    <li><a href="lockscreen.html">Lockscreen</a></li>
                                    <li><a href="todo.html">Todo</a></li>
                                    <li><a href="gallery.html">Gallery</a></li>
                                    <li><a href="pricing-tables.html">Pricing Tables</a></li>
                                    <li><a href="timeline.html">Timeline</a></li>
                                </ul>
                            </li>
                            <li class="menu-divider"></li>
                            <li>
                                <a href="index.html">
                                    <i class="menu-icon icon-help_outline"></i><span>OBMainHOME</span>
                                </a>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div><!-- /Page Sidebar -->

</body>
</html>