<%@page import="bean.ChiTietHoaDon"%>
<%@page import="bean.HoaDon"%>
<%@page import="bean.Loai"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <meta name="description" content="" />
        <title>Junno – Multipurpose eCommerce HTML Template</title>
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico" />

        <!--********************************** 
        all css files 
    *************************************-->

        <!--*************************************************** 
       fontawesome,bootstrap,plugins and main style css
     ***************************************************-->

        <link rel="stylesheet" href="assets/css/fontawesome.min.css" />
        <link rel="stylesheet" href="assets/css/ionicons.min.css" />
        <link rel="stylesheet" href="assets/css/simple-line-icons.css" />
        <link rel="stylesheet" href="assets/css/plugins/jquery-ui.min.css" />
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/plugins.css" />
        <link rel="stylesheet" href="assets/css/style.min.css" />

        <!-- Use the minified version files listed below for better performance and remove the files listed above -->

        <!--**************************** 
         Minified  css 
    ****************************-->

        <!--*********************************************** 
       vendor min css,plugins min css,style min css
     ***********************************************-->
        <!-- <link rel="stylesheet" href="assets/css/vendor/vendor.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/plugins.min.css" />
    <link rel="stylesheet" href="assets/css/style.min.css" /> -->
    </head>
<body>
		<% 
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
        	ArrayList<HoaDon> dsHoaDon = (ArrayList<HoaDon>)request.getAttribute("dsHoaDon");
        	ArrayList<ChiTietHoaDon> dsChiTietHoaDon = (ArrayList<ChiTietHoaDon>)request.getAttribute("dsChiTietHoaDon");
        	String maHoaDon = null;
        	if (request.getAttribute("maHoaDon")!=null ){
    			maHoaDon = request.getAttribute("maHoaDon").toString();
    		}
    	%>
		<%@include file="Menu.jsp" %> 
		<!-- breadcrumb-section start -->
        <nav class="breadcrumb-section theme1 bg-lighten2 pt-110 pb-110">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center mb-15">
                            <h2 class="title text-dark text-capitalize">Purchase Manager</h2>
                        </div>
                    </div>
                    <div class="col-12">
                        <ol
                            class="
                                breadcrumb
                                bg-transparent
                                m-0
                                p-0
                                align-items-center
                                justify-content-center
                            "
                        >
                            <li class="breadcrumb-item"><a href="TrangChu">Home</a></li>
                            <li class="breadcrumb-item">Admin</li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Purchase Manager
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </nav>
        <!-- breadcrumb-section end -->
        <!-- product tab start -->
        <div class="product-tab bg-white pt-80 pb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 mb-30">
                        <div class="grid-nav-wraper bg-lighten2 mb-10">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-6 mb-3 mb-md-0">
                                    <nav class="shop-grid-nav">
                                        <ul
                                            class="nav nav-pills align-items-center"
                                            id="pills-tab"
                                            role="tablist"
                                        >
                                            <li class="nav-item">
                                                <a
                                                    class="nav-link active"
                                                    id="pills-home-tab"
                                                    data-toggle="pill"
                                                    href="#pills-home"
                                                    role="tab"
                                                    aria-controls="pills-home"
                                                    aria-selected="true"
                                                >
                                                    <i class="fa fa-th"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <span class="total-products text-capitalize"
                                                    >There are <%=dsHoaDon.size() %> purchases.</span
                                                >
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!-- product-tab-nav end -->
                       <% if (dsHoaDon!= null && dsChiTietHoaDon ==null) {%>
                       <div>
                        	<div class="table-responsive mb-30 whish-list-section" >	
	                        	<table class="table">
						        	<thead class="thead-light">
						            	<tr>
						                	<th class="text-center" scope="col">Customer ID</th>
						                	<th class="text-center" scope="col">Action</th>
						                </tr>
						            </thead>                      
			                   <tbody>
				               		<form action="QuanLyHoaDon" method="POST">
					               		<tr>
					                                <td class="text-center">
					                                	<input name="maKhachHang" type="text" value="" required="required" class="form-control">
					                                </td>
					                                <td  class="text-center">
					                                	<input type="Submit" value="Add Purchase" class="btn theme-btn--dark1 btn--lg">
					                                </td>
					                    </tr>
				               		</form>
			               		</tbody>
		               			</table>
		               		</div>
                        </div> 
                        <%} else if (dsChiTietHoaDon!= null) {%>
                        <div>
                        	<div class="table-responsive mb-30 whish-list-section" >	
	                        	<table class="table">
						        	<thead class="thead-light">
						            	<tr>
						                	<th class="text-center" scope="col">Product ID</th>
						                	<th class="text-center" scope="col">Quantity</th>
						                	<th class="text-center" scope="col">State</th>
						                	<th class="text-center" scope="col">Action</th>
						                </tr>
						            </thead>                      
			                   <tbody>
				               		<form action="QuanLyHoaDon" method="POST">
					               		<tr>
					                                <td class="text-center">
					                                	<input name="maHoaDon" type="text" value="<%=maHoaDon %>" class="invisible d-none" required="required">
					                                	<input name="maGiay" type="text" value="" required="required" class="form-control">
					                                </td>
					                                <td class="text-center">
					                                	   <input name="soLuong" type="number" min="0" value="" required="required" class="form-control">
					                                </td>
					                                <td>
					                            		<select name = "daMuaChiTiet" class="form-select">
					                            			<option value="true" selected="selected">Đã Mua</option>
					                            			<option value="false">Chưa Mua</option>
					                            		</select>
					                                </td>
					                                <td  class="text-center">
					                                	<input type="Submit" value="Add Purchase" name="addCTHD" class="btn theme-btn--dark1 btn--lg">
					                                </td>
					                    </tr>
				               		</form>
			               		</tbody>
		               			</table>
		               		</div>
                        </div> 
                        <%} %>
                        
                        
                        <div class="tab-content" id="pills-tabContent">
                            <!-- first tab-pane -->
                            <div
                                class="tab-pane fade show active"
                                id="pills-home"
                                role="tabpanel"
                                aria-labelledby="pills-home-tab"
                            >
                                <div class="row grid-view theme1 whish-list-section">
					                        <div class="table-responsive mb-30" >		          
						                            <table class="table">
						                            	<% if (dsHoaDon!= null && dsChiTietHoaDon ==null) {%>
						                                <thead class="thead-light">
						                                    <tr>
						                                        <th class="text-center" scope="col">Purchase ID</th>
						                                        <th class="text-center" scope="col">Customer ID</th>
						                                        <th class="text-center" scope="col">Date</th>
						                                        <th class="text-center" scope="col">State</th>
																<th class="text-center" scope="col">Action</th>
						                                    </tr>
						                                </thead>
						                                <tbody>
						                               		<% for (HoaDon hd: dsHoaDon){ %>
							                               		<form action="QuanLyHoaDon" method="POST"> 
							                                    <tr>
							                                        <td class="text-center">
							                                            <span class="whish-title"
							                                                ><%=hd.getMaHoaDon() %></span
							                                            >
							                                             <input type="text" value="<%=hd.getMaHoaDon() %>" class="invisible d-none" name="maHoaDon" />
							                                        </td>
							                                        <td class="text-center">
							                                            <span class="whish-title"
							                                                ><%=hd.getMaKH() %>
							                                            </span>
							                                        </td>	
							                                         <td class="text-center">
							                                            <span class="whish-title"
							                                                ><%=hd.getNgayMua() %>
							                                            </span>
							                                        </td>	
							                                         <td class="text-center">
							                                            <span class="whish-title">
							                                            	<select name="daMuaHoaDon" class="form-select">
										                            			<option value="true" <%=hd.isDaMua()==true?"selected":"" %>>Đã Mua</option>
										                            			<option value="false" <%=hd.isDaMua()==false?"selected":"" %>>Chưa Mua</option>
									                            			</select>   
							                                            </span>
							                                        </td>		                                        
							                                        <td class="text-center">    
							                                        	<input class="btn theme-btn--dark1 btn--lg" type="Submit" value="Show Details" name="xemChiTiet">
							                                           	<a href="QuanLyHoaDon?maXoa=<%=hd.getMaHoaDon() %>" class="trash btn theme-btn--dark1 btn--lg">
							                                           		<i class="fas fa-trash-alt"></i> 
							                                            </a>
							                                            <input class="btn theme-btn--dark1 btn--lg" type="Submit" value="Update" name="suaHoaDon">
							                                        </td>
							                                    </tr>                          
							                                    </form>
						                                    <% }%>                   					                              
						                                </tbody>
						                                <%} %>
						                                
						                                <% if (dsChiTietHoaDon!= null) {%>
						                                <thead class="thead-light">
						                                    <tr>
						                                        <th class="text-center" scope="col">Details ID</th>
						                                        <th class="text-center" scope="col">Product ID</th>
						                                        <th class="text-center" scope="col">Quantity</th>
						                                        <th class="text-center" scope="col">State</th>
																<th class="text-center" scope="col">Action</th>
						                                    </tr>
						                                </thead>
						                                <tbody>
						                               		<% for (ChiTietHoaDon cthd: dsChiTietHoaDon){ %>
							                               		<form action="QuanLyHoaDon" method="POST"> 
							                                    <tr>
							                                        <td class="text-center">
							                                            <span class="whish-title"
							                                                ><%=cthd.getMaChiTietHoaDon() %></span
							                                            >
							                                             <input type="text" value="<%=cthd.getMaChiTietHoaDon() %>" class="invisible d-none" name="maChiTietHoaDon" />
							                                        </td>
							                                        <td class="text-center">
							                                            <span class="whish-title">
							                                            	<input type="text" value="<%=cthd.getMaGiay() %>" name="maGiay" style="width: 100px" class="form-control"/>   
							                                            </span>
							                                        </td>	
							                                         <td class="text-center">
							                                            <span class="whish-title">
							                                                <input type="number" min="0" value="<%=cthd.getSoLuongMua() %>" name="soLuong" class="form-control" />     
							                                            </span>
							                                        </td>	
							                                         <td class="text-center">
							                                            <span class="whish-title">
							                                            	 <select name="daMuaChiTiet" class="form-select">
										                            			<option value="true" <%=cthd.isDaMua()==true?"selected":"" %>>Đã Mua</option>
										                            			<option value="false" <%=cthd.isDaMua()==false?"selected":"" %>>Chưa Mua</option>
									                            			</select>   
							                                            </span>
							                                        </td>		                                        
							                                        <td class="text-center">    
								    									<a href="QuanLyHoaDon?xoaChiTiet=<%=cthd.getMaChiTietHoaDon() %>" class="trash btn theme-btn--dark1 btn--lg">
							                                           		<i class="fas fa-trash-alt"></i> 
							                                            </a>
							                                        	<input class="btn theme-btn--dark1 btn--lg" type="Submit" value="Update" name="suaChiTiet">
							                                        </td>
							                                    </tr>                          
							                                    </form>
						                                    <% }%>                   					                              
						                                </tbody>
						                                <%} %>
						                            </table>
					                        </div>
                                </div>
                            </div>
                            <!-- second tab-pane -->
                        </div>
                    </div>
                    <div class="col-lg-3 mb-30 order-lg-first">
                        <aside class="left-sidebar theme1">
                            <!-- search-filter start -->
                            <div class="search-filter">
                               		 <div class="check-box-inner pt-0">
	                                    <h4 class="title">Filter By</h4>
	                                </div>
                                    <div class="check-box-inner mt-10">
                                    	 <ul id="offcanvas-menu2" class="blog-ctry-menu">
			                                <li>
			                                    <a href="javascript:void(0)" class="sub-title pt-10">Categories</a>
			                                    <ul class="category-sub-menu">
			                                    	<% for (Loai l: dsLoai) { %>
			                                        <li><a href="Shop?maLoai=<%=l.getMaLoai()%>"><%=l.getTenLoai() %></a></li>
			                                        <%} %>
			                                    </ul>
			                                </li>
			                            </ul>
                                 
                                    </div>
                                    <div class="check-box-inner mt-10">
                                    	 <ul id="offcanvas-menu2" class="blog-ctry-menu">
			                                <li>
			                                    <a href="javascript:void(0)" class="sub-title pt-10">Size</a>
			                                    <ul class="category-sub-menu" >
													<li><a href="QuanLyGiay?keySize=39">39</a></li>
													<li><a href="QuanLyGiay?keySize=40">40</a></li>
													<li><a href="QuanLyGiay?keySize=41">41</a></li>
													<form method="get" action="QuanLyGiay">
													<div class="d-flex">														
														<input class="form-control" name="keySize" type="text"/>
														<input class="btn 
                                                        input-group-text
                                                        theme-btn--dark1
                                                        btn--md"
                                                     type="submit" value="find"/>
													</div>
													</form>
			                                    </ul>
			                                </li>
			                            </ul>      
                                    </div>
                                    <div class="check-box-inner mt-10">
                                    	 <ul id="offcanvas-menu2" class="blog-ctry-menu">
			                                <li>
			                                    <a href="javascript:void(0)" class="sub-title pt-10">Color</a>
			                                    <ul class="category-sub-menu" >
													<li class="d-flex align-items-center"><span  style="border-radius:5px;width: 20px; height: 20px; background-color: white; border: 1px solid #ccc;"></span><a href="QuanLyGiay?keyColor=Trắng">White</a></li>
													<li class="d-flex align-items-center"><span  style="border-radius:5px;width: 20px; height: 20px; background-color: black; border: 1px solid #ccc;"></span><a href="QuanLyGiay?keyColor=Đen">Black</a></li>
													<li class="d-flex align-items-center"><span  style="border-radius:5px;width: 20px; height: 20px; background-color: red; border: 1px solid #ccc;"></span><a href="QuanLyGiay?keyColor=Đỏ">Red</a></li>
													<form method="get" action="QuanLyGiay">
													<div class="d-flex">														
														<input class="form-control" name="keyColor" type="text"/>
														<input class="btn 
                                                        input-group-text
                                                        theme-btn--dark1
                                                        btn--md"
                                                     type="submit" value="find"/>
													</div>
													</form>
			                                    </ul>
			                                </li>
			                            </ul>      
                                    </div>
                            </div>
                            <!-- search-filter end -->
                              <div class="product-widget mb-60 mt-30">
                                <h3 class="title">Product Tags</h3>
                                <ul class="product-tag d-flex flex-wrap">
                                    <li><a href="#">shopping</a></li>
                                    <li><a href="#">New products</a></li>
                                    <li><a href="#">Accessories</a></li>
                                    <li><a href="#">sale</a></li>
                                </ul>
                            </div>
                            <!--second banner start-->
                            <div class="banner hover-animation position-relative overflow-hidden">
                                <a href="shop-grid-4-column.html" class="d-block">
                                    <img src="assets/img/banner/2.jpg" alt="img" />
                                </a>
                            </div>
                            <!--second banner end-->
                        </aside>
                    </div>
                </div>
            </div>
        </div>
        <!-- product tab end -->


		<%@include file="../Footer.jsp" %>
        <!--*********************** 
        all js files
     ***********************-->

        <!--****************************************************** 
        jquery,modernizr ,poppe,bootstrap,plugins and main js
     ******************************************************-->

        <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
        <script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/plugins/jquery-ui.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/plugins/plugins.js"></script>
        <script src="assets/js/main.js"></script>

        <!-- Use the minified version files listed below for better performance and remove the files listed above -->

        <!--*************************** 
          Minified  js 
     ***************************-->

        <!--*********************************** 
         vendor,plugins and main js
      ***********************************-->

        <!-- <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    <script src="assets/js/main.js"></script> -->

    </body>
</html>