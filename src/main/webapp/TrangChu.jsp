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
        	ArrayList<Giay> dsGiayMen = (ArrayList<Giay>)session.getAttribute("dsGiayMen");
        	ArrayList<Giay> dsGiayWomen = (ArrayList<Giay>)session.getAttribute("dsGiayWomen");
        	ArrayList<Giay> dsGiayCasual = (ArrayList<Giay>)session.getAttribute("dsGiayCasual");
    	%>
		<%@include file="Menu.jsp" %>
        <!-- main slider start -->
        <section class="bg-light position-relative">
            <div class="main-slider dots-style theme1">
                <div class="slider-item bg-img bg-img1">
                    <div class="container">
                        <div class="row align-items-center slider-height">
                            <div class="col-12">
                                <div class="slider-content">
                                    <p
                                        class="text text-white text-uppercase animated mb-25"
                                        data-animation-in="fadeInDown"
                                    >
                                        nike running shoes
                                    </p>
                                    <h4
                                        class="title text-white animated text-capitalize mb-25"
                                        data-animation-in="fadeInLeft"
                                        data-delay-in="1"
                                    >
                                        Sport Shoes
                                    </h4>
                                    <h2
                                        class="sub-title text-white animated"
                                        data-animation-in="fadeInRight"
                                        data-delay-in="2"
                                    >
                                        Sale 40% Off
                                    </h2>
                                    <a
                                        href="Shop"
                                        class="
                                            btn
                                            theme--btn1
                                            btn--lg
                                            text-uppercase
                                            rounded-5
                                            animated
                                            mt-45 mt-sm-25
                                        "
                                        data-animation-in="zoomIn"
                                        data-delay-in="3"
                                        >Shop now</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- slider-item end -->
                <div class="slider-item bg-img bg-img2">
                    <div class="container">
                        <div class="row align-items-center slider-height">
                            <div class="col-12">
                                <div class="slider-content">
                                    <p
                                        class="text text-white text-uppercase animated mb-25"
                                        data-animation-in="fadeInLeft"
                                    >
                                        New Arrivals
                                    </p>
                                    <h4
                                        class="title text-white animated text-capitalize mb-25"
                                        data-animation-in="fadeInRight"
                                        data-delay-in="1"
                                    >
                                        Sumer Sale
                                    </h4>
                                    <h2
                                        class="sub-title text-white animated"
                                        data-animation-in="fadeInUp"
                                        data-delay-in="2"
                                    >
                                        Up To 70% Off
                                    </h2>
                                    <a
                                        href="Shop"
                                        class="
                                            btn
                                            theme--btn1
                                            btn--lg
                                            text-uppercase
                                            rounded-5
                                            animated
                                            mt-45 mt-sm-25
                                        "
                                        data-animation-in="zoomIn"
                                        data-delay-in="3"
                                        >Shop now</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- slider-item end -->
            </div>
            <!-- slick-progress -->
            <div class="slick-progress">
                <span></span>
            </div>
            <!-- slick-progress end-->
        </section>
        <!-- main slider end -->
        <!-- common banner  start -->
        <div class="common-banner pt-80 bg-white">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 mb-30">
                        <div class="banner-thumb">
                            <a
                                href="Shop"
                                class="zoom-in d-block overflow-hidden"
                            >
                                <img src="assets/img/banner/1.jpg" alt="banner-thumb-naile" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 mb-30">
                        <div class="banner-thumb">
                            <a
                                href="Shop"
                                class="zoom-in d-block overflow-hidden"
                            >
                                <img src="assets/img/banner/2.jpg" alt="banner-thumb-naile" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 mb-30">
                        <div class="banner-thumb">
                            <a
                                href="Shop"
                                class="zoom-in d-block overflow-hidden"
                            >
                                <img src="assets/img/banner/3.jpg" alt="banner-thumb-naile" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- common banner  end -->
          <!-- product tab start -->
        <section class="product-tab bg-white pt-50 pb-80">
            <div class="container">
                <div class="product-tab-nav mb-35">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <div class="section-title text-center mb-30">
                                <h2 class="title text-dark text-capitalize">Our products</h2>
                                <p class="text mt-10">Add our products to weekly line up</p>
                            </div>
                        </div>
                        <div class="col-12">
                            <nav class="product-tab-menu theme1">
                                <ul
                                    class="nav nav-pills justify-content-center"
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
                                            >Women Shoes</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="nav-link"
                                            id="pills-profile-tab"
                                            data-toggle="pill"
                                            href="#pills-profile"
                                            role="tab"
                                            aria-controls="pills-profile"
                                            aria-selected="false"
                                            >Men Shoes</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="nav-link"
                                            id="pills-contact-tab"
                                            data-toggle="pill"
                                            href="#pills-contact"
                                            role="tab"
                                            aria-controls="pills-contact"
                                            aria-selected="false"
                                            >Casual Shoes</a
                                        >
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- product-tab-nav end -->
                <div class="row">
                    <div class="col-12">
                        <div class="tab-content" id="pills-tabContent">
                            <!-- first tab-pane -->
                            <div
                                class="tab-pane fade show active"
                                id="pills-home"
                                role="tabpanel"
                                aria-labelledby="pills-home-tab"
                            >
                                <div class="product-slider-init theme1 slick-nav">
                                    <% for (Giay g: dsGiayWomen){ %>
                                    <div class="slider-item">
                                        <div class="product-list">         
                                            <div class="card product-card">
                                         
                                                <div class="card-body p-0">
                                                    <div class="media flex-column">
                                                        <div
                                                            class="
                                                                product-thumbnail
                                                                position-relative
                                                            "
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
                                                                        href="ChiTietSanPham?maGiay=<%=g.getMaGiay() %>"
                                                                        style="display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;overflow: hidden;"
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
                                    <!-- slider-item end -->
                                </div>
                            </div>
                            <!-- second tab-pane -->
                            <div
                                class="tab-pane fade"
                                id="pills-profile"
                                role="tabpanel"
                                aria-labelledby="pills-profile-tab"
                            >
                                <div class="product-slider-init theme1 slick-nav">
                                	<% for (Giay g: dsGiayMen){ %>
                                    <div class="slider-item">
                                        <div class="product-list">         
                                            <div class="card product-card">
                                         
                                                <div class="card-body p-0">
                                                    <div class="media flex-column">
                                                        <div
                                                            class="
                                                                product-thumbnail
                                                                position-relative
                                                                style="margin: 0 auto;"
                                                            "
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
                                                                        href="ChiTietSanPham?maGiay=<%=g.getMaGiay() %>"
                                                                        style="display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;overflow: hidden;"
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
                                                                        justify-content-between
                                                                    "
                                                                >
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
                            <!-- third tab-pane -->
                            <div
                                class="tab-pane fade"
                                id="pills-contact"
                                role="tabpanel"
                                aria-labelledby="pills-contact-tab"
                            >
                                <div class="product-slider-init theme1 slick-nav">
								    <% for (Giay g: dsGiayCasual){ %>
                                    <div class="slider-item">
                                        <div class="product-list">         
                                            <div class="card product-card">
                                         
                                                <div class="card-body p-0">
                                                    <div class="media flex-column">
                                                        <div
                                                            class="
                                                                product-thumbnail
                                                                position-relative
                                                                style="margin: 0 auto;"
                                                            "
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
                                                                        href="ChiTietSanPham?maGiay=<%=g.getMaGiay() %>"
                                                                        style="display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;overflow: hidden;"
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
                                                                        justify-content-between
                                                                    "
                                                                >
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
                </div>
            </div>
        </section>
        <!-- product tab end -->
        <!-- common banner  start -->
        <div class="common-banner bg-white pb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-30">
                        <div class="banner-thumb">
                            <div class="zoom-in d-block overflow-hidden position-relative">
                                <img src="assets/img/banner/4.jpg" alt="banner-thumb-naile" />
                                <a
                                    href="Shop?maLoai=1"
                                    class="
                                        text-uppercase
                                        btn
                                        theme--btn1
                                        btn--lg
                                        banner-btn
                                        position-absolute
                                    "
                                    >Men’s</a
                                >
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-30">
                        <div class="banner-thumb">
                            <div class="zoom-in d-block overflow-hidden position-relative">
                                <img src="assets/img/banner/5.jpg" alt="banner-thumb-naile" />
                                <a
                                    href="Shop?maLoai=2"
                                    class="
                                        text-uppercase
                                        btn
                                        theme--btn1
                                        btn--lg
                                        banner-btn
                                        position-absolute
                                    "
                                    >WoMen’s</a
                                >
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 mb-30">
                        <div class="banner-thumb">
                            <div class="zoom-in d-block overflow-hidden position-relative mb-30">
                                <img src="assets/img/banner/6.jpg" alt="banner-thumb-naile" />
                                <a
                                    href="Shop?maLoai=4"
                                    class="
                                        text-uppercase
                                        btn
                                        theme--btn1
                                        btn--lg
                                        banner-btn
                                        position-absolute
                                    "
                                    >running</a
                                >
                            </div>
                            <div class="zoom-in d-block overflow-hidden position-relative">
                                <img src="assets/img/banner/7.jpg" alt="banner-thumb-naile" />
                                <a
                                    href="Shop?maLoai=5"
                                    class="
                                        text-uppercase
                                        btn
                                        theme--btn1
                                        btn--lg
                                        banner-btn
                                        position-absolute
                                    "
                                    >accessories</a
                                >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- common banner  end -->

        <!-- staic media start -->
        <section class="static-media-section pb-80 bg-white">
            <div class="container">
                <div class="static-media-wrap theme-bg rounded-5">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6 py-3">
                            <div class="d-flex static-media2 flex-column flex-sm-row">
                                <img
                                    class="align-self-center mb-2 mb-sm-0 mr-auto mr-sm-3"
                                    src="assets/img/icon/2.png"
                                    alt="icon"
                                />
                                <div class="media-body">
                                    <h4 class="title text-capitalize text-white">Free Shipping</h4>
                                    <p class="text text-white">On all orders over $75.00</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 py-3">
                            <div class="d-flex static-media2 flex-column flex-sm-row">
                                <img
                                    class="align-self-center mb-2 mb-sm-0 mr-auto mr-sm-3"
                                    src="assets/img/icon/3.png"
                                    alt="icon"
                                />
                                <div class="media-body">
                                    <h4 class="title text-capitalize text-white">Free Returns</h4>
                                    <p class="text text-white">Returns are free within 9 days</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 py-3">
                            <div class="d-flex static-media2 flex-column flex-sm-row">
                                <img
                                    class="align-self-center mb-2 mb-sm-0 mr-auto mr-sm-3"
                                    src="assets/img/icon/4.png"
                                    alt="icon"
                                />
                                <div class="media-body">
                                    <h4 class="title text-capitalize text-white">
                                        100% Payment Secure
                                    </h4>
                                    <p class="text text-white">Your payment are safe with us.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 py-3">
                            <div class="d-flex static-media2 flex-column flex-sm-row">
                                <img
                                    class="align-self-center mb-2 mb-sm-0 mr-auto mr-sm-3"
                                    src="assets/img/icon/5.png"
                                    alt="icon"
                                />
                                <div class="media-body">
                                    <h4 class="title text-capitalize text-white">Support 24/7</h4>
                                    <p class="text text-white">Contact us 24 hours a day</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- staic media end -->
        <!-- brand slider start -->
        <div class="brand-slider-section theme1 bg-white">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="brand-init border-top py-35 slick-nav-brand">
                            <div class="slider-item">
                                <div class="single-brand">
                                    <a
                                        href="https://themeforest.net/user/hastech"
                                        class="brand-thumb"
                                    >
                                        <img src="assets/img/brand/1.jpg" alt="brand-thumb-nail" />
                                    </a>
                                </div>
                            </div>
                            <!-- slider-item end -->
                            <div class="slider-item">
                                <div class="single-brand">
                                    <a
                                        href="https://themeforest.net/user/hastech"
                                        class="brand-thumb"
                                    >
                                        <img src="assets/img/brand/2.jpg" alt="brand-thumb-nail" />
                                    </a>
                                </div>
                            </div>
                            <!-- slider-item end -->
                            <div class="slider-item">
                                <div class="single-brand">
                                    <a
                                        href="https://themeforest.net/user/hastech"
                                        class="brand-thumb"
                                    >
                                        <img src="assets/img/brand/3.jpg" alt="brand-thumb-nail" />
                                    </a>
                                </div>
                            </div>
                            <!-- slider-item end -->
                            <div class="slider-item">
                                <div class="single-brand">
                                    <a
                                        href="https://themeforest.net/user/hastech"
                                        class="brand-thumb"
                                    >
                                        <img src="assets/img/brand/4.jpg" alt="brand-thumb-nail" />
                                    </a>
                                </div>
                            </div>
                            <!-- slider-item end -->
                            <div class="slider-item">
                                <div class="single-brand">
                                    <a
                                        href="https://themeforest.net/user/hastech"
                                        class="brand-thumb"
                                    >
                                        <img src="assets/img/brand/5.jpg" alt="brand-thumb-nail" />
                                    </a>
                                </div>
                            </div>
                            <!-- slider-item end -->
                            <div class="slider-item">
                                <div class="single-brand">
                                    <a
                                        href="https://themeforest.net/user/hastech"
                                        class="brand-thumb"
                                    >
                                        <img src="assets/img/brand/2.jpg" alt="brand-thumb-nail" />
                                    </a>
                                </div>
                            </div>
                            <!-- slider-item end -->
                            <div class="slider-item">
                                <div class="single-brand">
                                    <a
                                        href="https://themeforest.net/user/hastech"
                                        class="brand-thumb"
                                    >
                                        <img src="assets/img/brand/3.jpg" alt="brand-thumb-nail" />
                                    </a>
                                </div>
                            </div>
                            <!-- slider-item end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- brand slider end -->
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
    <script src="assets/js/plugins/plugins.min.js"></script> -->
    </body>
</html>
