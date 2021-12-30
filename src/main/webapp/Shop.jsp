<%@page import="bean.Giay"%>
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
        	String page1 = request.getAttribute("page").toString();
        	ArrayList<Giay> dsGiay = (ArrayList<Giay>)session.getAttribute("dsGiay");
    	%>
		<%@include file="Menu.jsp" %>
        <!-- breadcrumb-section start -->
        <nav class="breadcrumb-section theme1 bg-lighten2 pt-110 pb-110">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center mb-15">
                            <h2 class="title text-dark text-capitalize">Shoes</h2>
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
                            <li class="breadcrumb-item active" aria-current="page">
                                Shop
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
                        <div class="grid-nav-wraper bg-lighten2 mb-30">
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
                                            <li class="nav-item mr-0">
                                                <a
                                                    class="nav-link"
                                                    id="pills-profile-tab"
                                                    data-toggle="pill"
                                                    href="#pills-profile"
                                                    role="tab"
                                                    aria-controls="pills-profile"
                                                    aria-selected="false"
                                                    ><i class="fa fa-list"></i
                                                ></a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!-- product-tab-nav end -->
                        <div class="tab-content" id="pills-tabContent">
                            <!-- first tab-pane -->
                            <div
                                class="tab-pane fade show active"
                                id="pills-home"
                                role="tabpanel"
                                aria-labelledby="pills-home-tab"
                            >
                                <div class="row grid-view theme1">
                                	<% for (Giay g: dsGiay) { %>
                                    <div class="col-sm-6 col-lg-4 col-xl-3 mb-30">
                                        <div class="card product-card">
                                            <div class="card-body">
                                                <div class="product-thumbnail position-relative">
                                                    <span class="badge badge-danger top-right"
                                                        >New</span
                                                    >
                                                    <a href="ChiTietSanPham?maGiay=<%=g.getMaGiay()%>">
                                                        <img
                                                            class="first-img"
                                                            src="assets/img/product/<%=g.getAnh()!=null?g.getAnh():"default.png" %>"
                                                            alt="thumbnail"
                                                           	onerror="this.src='assets/img/product/default.png'"
                                                           	style="height: 195px; width: 195px;object-fit: contain;"
                                                        />
                                                    </a>
                                                </div>
                                                <div class="product-desc">
                                                    <h3 class="title">
                                                        <a href="ChiTietSanPham?maGiay=<%=g.getMaGiay()%>" style="display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;overflow: hidden;"
                                                            ><%=g.getTenGiay() %></a
                                                        >
                                                    </h3>
                                                    <div class=" d-flex align-items-center justify-content-between">
                                                          <p>Size: <%=g.getSize() %></p>
                                                          <p>Color: <%=g.getMau() %></p>
                                                     </div>
                                                    <div
                                                        class="
                                                            d-flex
                                                            align-items-center
                                                            justify-content-between
                                                        "
                                                    >
                                                        <h6 class="product-price">$<%=g.getGia() %></h6>
                                                        <span>
	                                                        <a href="ChiTietSanPham?maGiay=<%=g.getMaGiay() %>" class="pro-btn"
                                                            style="padding: 11px; margin-right: 5px">
	                                                        	<i class="fas fa-search"></i>
	                                                        </a>
	                                                        <button
	                                                        onclick="(async () => {
				                                                        	await fetch(`GioHang?maGiay=<%=g.getMaGiay() %>`)
				                                                        	jQuery('#soLuongMua').load(' #soLuongMua');
				                                                        	jQuery('#tongTienMua').load(' #tongTienMua');
																			jQuery('#tongTienMua1').load(' #tongTienMua1');
																			jQuery('#danhSachGioHang').load(' #danhSachGioHang');				
				                                                        })()"
	                                                        class="pro-btn">
	                                                        	<i class="icon-basket"></i>
	                                                        </button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- product-list End -->
                                    </div>
                                    <%} %>
                                </div>
                            </div>
                            <!-- second tab-pane -->
                            <div
                                class="tab-pane fade"
                                id="pills-profile"
                                role="tabpanel"
                                aria-labelledby="pills-profile-tab"
                            >
                                <div class="row grid-view-list theme1">
                                	<% for (Giay g: dsGiay) {%>
                                    <div class="col-12 mb-30">
                                        <div class="card product-card">
                                            <div class="card-body">
                                                <div class="media flex-column flex-md-row">
                                                    <div
                                                        class="product-thumbnail position-relative"
                                                    >
                                                        <span class="badge badge-danger top-right"
                                                            >New</span
                                                        >
                                                        <a href="ChiTietSanPham?maGiay=<%=g.getMaGiay()%>">
                                                            <img
                                                                class="first-img"
                                                                src="assets/img/product/<%=g.getAnh()!=null?g.getAnh():"default.jpg" %>"
                                                                alt="thumbnail"
                                                                onerror="this.src='assets/img/product/default.png'"
                                                                style="height: 360px; width: 360px;object-fit: contain;"                                                 
                                                            />
                                                        </a>                                       
                                                    </div>
                                                    <div class="media-body pl-30">
                                                        <div class="product-desc py-0">
                                                            <h3 class="title">
                                                                <a href="ChiTietSanPham?maGiay=<%=g.getMaGiay()%>"
                                                                    ><%=g.getTenGiay() %></a
                                                                >
                                                            </h3>
                                                            <h6 class="product-price">$<%=g.getGia() %></h6>
                                                            <span class="d-flex">
	                                                            <p class="mr-30">Size: <%=g.getSize() %></p>
	                                                            <p>Color: <%=g.getMau() %></p>
                                                            </span>
                                                        </div>
                                                        <ul class="product-list-des">
                                                            <li><%=g.getMoTa() %></li>
                                                        </ul>
                                                        <div class="availability-list mb-30">
                                                            <p>
                                                                Availability:
                                                                <span><%=g.getSoLuongTon() %> In Stock</span>
                                                            </p>
                                                        </div>
                                                        <a
                                                            class="
                                                                btn
                                                                theme-btn--dark1
                                                                btn--xl
                                                                rounded-5
                                                            "
                                                            href="ChiTietSanPham?maGiay=<%=g.getMaGiay() %>"
                                                        >
                                                        	Show details
                                                        </a>
                                                        <button
                                                            class="
                                                                btn
                                                                theme-btn--dark1
                                                                btn--xl
                                                                rounded-5
                                                            "
                                                            onclick="(async () => {
				                                                        	await fetch(`GioHang?maGiay=<%=g.getMaGiay() %>`)
				                                                        	jQuery('#soLuongMua').load(' #soLuongMua');
				                                                        	jQuery('#tongTienMua').load(' #tongTienMua');
																			jQuery('#tongTienMua1').load(' #tongTienMua1');
																			jQuery('#danhSachGioHang').load(' #danhSachGioHang');				
				                                                        })()"
                                                        >
                                                            Add to cart
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- product-list End -->
                                    </div>
                                    <%}%>
                               
                                </div>
                            </div>
                        </div>
         				  <div class="row">
                            <div class="col-12">
                                <nav class="pagination-section mt-30">
                                    <div class="row align-items-center">
                                        <div class="col-12">
                                            <ul class="pagination justify-content-center">
                                            <% if (Integer.parseInt(page1) > 1){ %>
                                            	<li class="page-item">
                                                    <a class="page-link" onclick="addUrlParameter('page', <%=Integer.parseInt(page1)-1 %>)"
                                                        ><i class="ion-chevron-left"></i
                                                    ></a>
                                                </li>
                                            <%} %>
                                            <% for (int i = (Integer.parseInt(page1)-2);i < Integer.parseInt(page1)+3; i++){
                                            	if (i== Integer.parseInt(page1)) {%>
                                                <li class="page-item active">
                                                    <a class="page-link" onclick="addUrlParameter('page', <%=i%>)"><%=i%></a>
                                                </li>
                                            	<%} else if (i>0) { %>
                                                <li class="page-item">
                                                    <a class="page-link" onclick="addUrlParameter('page', <%=i%>)"><%=i%></a>
                                                </li>
                                            <%}} %>
                                            <li class="page-item">
                                                    <a class="page-link" onclick="addUrlParameter('page', <%=Integer.parseInt(page1)+1 %>)"
                                                        ><i class="ion-chevron-right"></i
                                                    ></a>
                                            </li>
                                            </ul>
                                        </div>
                                    </div>
                                </nav>
                            </div>
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
			                                        <li><a onclick="addUrlParameter('maLoai', <%=l.getMaLoai() %>)"><%=l.getTenLoai() %></a></li>
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
			                                    	<li><a onclick="addUrlParameter('keySize', '39')">39</a></li>
			                                    	<li><a onclick="addUrlParameter('keySize', '40')">40</a></li>
			                                    	<li><a onclick="addUrlParameter('keySize', '41')">41</a></li>
													<form id="form1">
													<div class="d-flex">														
														<input class="form-control" name="keySize" type="text" id="keySize"/>
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
													<li class="d-flex align-items-center"><span  style="border-radius:5px;width: 20px; height: 20px; background-color: white; border: 1px solid #ccc;"></span><a onclick="addUrlParameter('keyColor', 'Trắng')">White</a></li>
													<li class="d-flex align-items-center"><span  style="border-radius:5px;width: 20px; height: 20px; background-color: black; border: 1px solid #ccc;"></span><a onclick="addUrlParameter('keyColor', 'Đen')">Black</a></li>
													<li class="d-flex align-items-center"><span  style="border-radius:5px;width: 20px; height: 20px; background-color: red; border: 1px solid #ccc;"></span><a onclick="addUrlParameter('keyColor', 'Đỏ')">Red</a></li>
													<form id="form2">
													<div class="d-flex">														
														<input class="form-control" name="keyColor" type="text" id="keyColor"/>
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
                                <a href="#" class="d-block">
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
		<%@include file="Footer.jsp" %>
        

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
    <script>
		function addUrlParameter(name, value) {
		  var searchParams = new URLSearchParams(window.location.search)
		  searchParams.set(name, value)
		  window.location.search = searchParams.toString()
		}
		
		document.querySelector("#form1").addEventListener("submit", function(event){
			  event.preventDefault();
			  let temp = document.querySelector("#keySize");
			  addUrlParameter('keySize',temp.value);
		});
		
		document.querySelector("#form2").addEventListener("submit", function(event){
			  event.preventDefault();
			  let temp = document.querySelector("#keyColor");
			  addUrlParameter('keyColor',temp.value);
		});
	</script>
    </body>
</html>
    