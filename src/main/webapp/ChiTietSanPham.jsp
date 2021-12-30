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
            Giay thongTinGiay = (Giay)request.getAttribute("thongTinGiay");
            ArrayList<Giay> dsGiay = (ArrayList<Giay>)session.getAttribute("dsGiay");
    	%>
    	<%@include file="Menu.jsp" %> -
        <!-- breadcrumb-section start -->
        <nav class="breadcrumb-section theme3 bg-lighten2 pt-110 pb-110">
            <div class="container">
                <div class="row">
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
                            <li class="breadcrumb-item">
                                <a href="shop-grid-3-column.html">Shop</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                <%=(thongTinGiay!=null)?thongTinGiay.getTenGiay():"404 not found" %>
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </nav>
        <!-- breadcrumb-section end -->
        <!-- product-single start -->
        <%if (thongTinGiay !=null){ %>
        <section class="product-single theme3 pt-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="position-relative">
                            <span class="badge badge-danger top-right">New</span>
                        </div>
                        <div class="product-sync-init mb-20">
                            <div class="single-product">
                                <div class="product-thumb">
                                    <img
                                        src="assets/img/product/<%=thongTinGiay.getAnh()!=null?thongTinGiay.getAnh():"default.jpg" %>"
                                        alt="product-thumb"
                                        onerror="this.src='assets/img/product/default.png'"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mt-5 mt-md-0">
                        <div class="single-product-info">
                            <div class="single-product-head">
                                <h2 class="title mb-20"><%=thongTinGiay.getTenGiay()%></h2>
                            </div>
                            <div class="product-body mb-40">
                                <div class="d-flex align-items-center mb-30">
                                    <h6 class="product-price mr-20 ">
                                        <span class="onsale ">$<%=thongTinGiay.getGia() %></span>
                                    </h6>
                                     <span class="d-flex">
	                                                            <p class="mr-30">Size: <%=thongTinGiay.getSize() %></p>
	                                                            <p class="mr-30">Color: <%=thongTinGiay.getMau() %></p>
	                                                            <p>Quantity In Stock: <%=thongTinGiay.getSoLuongTon() %></p>
                                     </span>
                                </div>
                                <ul>
                                    <li><%=thongTinGiay.getMoTa() %></li>   
                                </ul>
                            </div>
                            <form method="post" action="GioHang?maGiay=<%=thongTinGiay.getMaGiay()%>">
                            <div class="product-footer">
                                <div
                                    class="
                                        product-count
                                        style
                                        d-flex
                                        flex-column flex-sm-row
                                        mt-30
                                        mb-30
                                    "
                                >
                                    <div class="count d-flex">
                                    
                                        <input type="number" min="1" step="1" max="<%=thongTinGiay.getSoLuongTon() %>" value="1" name="soLuong"/>
                                        <div class="button-group">
                                            <button class="count-btn increment" onclick="event.preventDefault();">
                                                <i class="fas fa-chevron-up"></i>
                                            </button>
                                            <button class="count-btn decrement" onclick="event.preventDefault();">
                                                <i class="fas fa-chevron-down"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div>
                                        <button
                                            class="
                                                btn
                                                theme-btn--dark3
                                                btn--xl
                                                mt-5 mt-sm-0
                                                rounded-5
                                            "
                                            type="submit"
                                        >
                                            <span class="mr-2"
                                                ><i class="ion-android-add"></i
                                            ></span>
                                            Add to cart
                                        </button>
                                     
                                    </div>
                                
                                </div>
                                <div class="pro-social-links mt-10">
                                    <ul class="d-flex align-items-center">
                                        <li class="share">Share</li>
                                        <li>
                                            <a href="#"><i class="ion-social-facebook"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="ion-social-twitter"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="ion-social-google"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="ion-social-pinterest"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- product-single end -->
		<%} %>
        <!-- new arrival section start -->
        <section class="theme3 bg-white pb-80 mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center mb-30">
                            <h2 class="title text-dark text-capitalize">other products</h2>
                            <p class="text mt-10"><%=dsGiay.size() %> other products in the same category:</p>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="product-slider-init slick-nav">
                            <!-- slider-item end -->
                            <% for (Giay g: dsGiay) { %>
                            <div class="slider-item">
                                        <div class="product-list">         
                                            <div class="card product-card">
                                         
                                                <div class="card-body p-0">
                                                    <div class="media flex-column">
                                                        <div
                                                            class="product-thumbnail position-relative"
                                                            style="margin: 0 auto;"
                                                        >
                                                            <span
                                                                class="badge badge-danger top-right"
                                                                >New</span
                                                            >
                                                            <a href="ChiTietSanPham?maGiay=<%=g.getMaGiay() %>">
                                                                <img
                                                                    class="first-img"
                                                                    src="assets/img/product/<%=g.getAnh()!=null?g.getAnh():"default.jpg" %>"
                                                                    alt="thumbnail"
                                                                    onerror="this.src='assets/img/product/default.png'"
                                                                    style="height: 195px; width: 195px;object-fit: contain;"
                                                                />
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <div class="product-desc">
                                                                <h3 class="title">
                                                                    <a
                                                                        href="ChiTietSanPham?maGiay=<%=g.getMaGiay() %>" style="display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;overflow: hidden;"
                                                                        ><%=g.getTenGiay() %></a
                                                                    >
                                                                </h3>
                                                                <div
                                                                    class="
                                                                        d-flex
                                                                        align-items-center
                                                                        justify-content-between">
                                                                        <p>Size: <%=g.getSize() %></p>
                                                                        <p>Color: <%=g.getMau() %></p>
                                                                </div>
                                                                <div
                                                                    class="
                                                                        d-flex
                                                                        align-items-center
                                                                        justify-content-between">
                                                                    <h6 class="product-price">       
                                                                        <span class="onsale"
                                                                            >$<%=g.getGia()%></span
                                                                        >
                                                                    </h6>
                                                                    <span>
                                                                        <a
                                                                            href="ChiTietSanPham?maGiay=<%=g.getMaGiay()%>"
                                                                            class="pro-btn"
                                                                            style="padding: 11px; margin-right: 5px"
                                                                        >
                                                                            <i
                                                                                class="
                                                                                    fas
                                                                                    fa-search
                                                                                "
                                                                            ></i>
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
                                                </div>    
                                            </div>
                                            <!-- product-list End -->
                                        </div>
                                    </div>           
                            <%} %>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- new arrival section end -->
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
    </body>
</html>
