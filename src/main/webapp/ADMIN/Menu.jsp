<%@page import="bean.Loai"%>
<%@page import="bean.Admin"%>
<%@page import="bean.GioHang"%>
<%@page import="bo.GioHangBO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<% 
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");	
		Admin admin = null;
		if (session.getAttribute("admin") != null){
			admin = (Admin)session.getAttribute("admin");
		}
		GioHangBO ghBO1=(GioHangBO)session.getAttribute("ghBO");
    	ArrayList<Loai> dsLoai = (ArrayList<Loai>)session.getAttribute("dsLoai");
	%>
	<!-- offcanvas-overlay start -->
        <div class="offcanvas-overlay"></div>
        <!-- offcanvas-overlay end -->
        <!-- offcanvas-mobile-menu start -->
        <div id="offcanvas-mobile-menu" class="offcanvas theme1 offcanvas-mobile-menu">
            <div class="inner">
                <div class="border-bottom mb-4 pb-4 text-right">
                    <button class="offcanvas-close">×</button>
                </div>
                <nav class="offcanvas-menu">      
                    <ul>
                        <li data-atr-location="/CuaHangGiay/QuanLyGiay">
                            <a href="QuanLyGiay">Shoes Manager</a>
                        </li>
                        <li data-atr-location="/CuaHangGiay/QuanLyLoai">
                            <a href="QuanLyLoai">Categories Manager</a>
                        </li>
                        <li data-atr-location="/CuaHangGiay/QuanLyHoaDon">
                            <a href="QuanLyHoaDon">Purchase Manager</a>
                        </li>
                        <li data-atr-location="/CuaHangGiay/QuanLyKhachHang">
                        	<a href="QuanLyKhachHang">Customer Manager</a>
                        </li>
                        <li data-atr-location="/CuaHangGiay/AboutUs">
                            <a href="AboutUs">About Us</a>
                        </li>
                    </ul>
                </nav>
                <div class="offcanvas-social py-30">
                    <ul>
                        <li>
                            <a href="#"><i class="icon-social-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="icon-social-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="icon-social-instagram"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="icon-social-google"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="icon-social-instagram"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    <!-- offcanvas-mobile-menu end -->
	<!-- header start -->
        <header>	
	            <!-- header bottom start -->
	            <nav id="sticky" class="header-bottom theme1 d-lg-block">
	            	            <!-- header top start -->
	            <div class="header-top theme1 bg-dark py-15">
	                <div class="container">
	                    <div class="row align-items-center">
	                        <div class="col-lg-6 col-md-7 order-last order-md-first">
	                            <div class="static-info text-center text-md-left">
	                                <p class="text-white">
	                                    Join our showroom and get
	                                    <span class="theme-color">50 % off</span> ! Coupon code :
	                                    <span class="theme-color">Junno50</span>
	                                </p>
	                            </div>
	                        </div>
	                        <div class="col-lg-6 col-md-5">
	                            <nav class="navbar-top pb-2 pb-md-0 position-relative">
	                                <ul
	                                    class="
	                                        d-flex
	                                        justify-content-center justify-content-md-end
	                                        align-items-center
	                                    "
	                                >
	                                	<%if(admin !=null) {%>
		                                    <li>
		                                        <a
		                                            href="#"
		                                            id="dropdown1"
		                                            data-toggle="dropdown"
		                                            aria-haspopup="true"
		                                            aria-expanded="false"
		                                            ><%=admin.getTenDangNhap() %> <i class="ion ion-ios-arrow-down"></i
		                                        ></a>
		                                        <ul
		                                            class="topnav-submenu dropdown-menu"
		                                            aria-labelledby="dropdown1"
		                                        >
		                                            <li><a href="DangNhapAdmin?dangXuat=1">Sign out</a></li>
		                                        </ul>
		                                    </li>
	                                    <%}else{ %>
		                                    <li>
		                                    	<a href="DangNhapAdmin">Log in</a>
		                                    </li>
					                    <%} %> 
	                                </ul>
	                            </nav>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!-- header top end -->
	            <!-- header-middle satrt -->
	            <div class="header-middle pt-20 pb-2">
	                <div class="container">
	                    <div class="row align-items-center">
	                        <div class="col-sm-6 col-lg-2 order-first">
	                            <div class="logo text-center text-sm-left mb-30 mb-sm-0">
	                                <a href="QuanLyGiay"
	                                    ><img src="assets/img/logo/logo-dark.jpg" alt="logo"
	                                /></a>
	                            </div>
	                        </div>
	                        <div class="col-sm-6 col-lg-5 col-xl-4">
	                            <!-- search-form end -->
	                            <div
	                                class="
	                                    d-flex
	                                    align-items-center
	                                    justify-content-center justify-content-sm-end
	                                "
	                            >
	                                <div class="media static-media mr-50 d-none d-lg-flex">
	                                    <img
	                                        class="mr-3 align-self-center"
	                                        src="assets/img/icon/1.png"
	                                        alt="icon"
	                                    />
	                                    <div class="media-body">
	                                        <div class="phone">
	                                            <span class="text-muted">Call us:</span>
	                                        </div>
	                                        <div class="phone">
	                                            <a href="tel:(+123)4567890" class="text-dark"
	                                                >(+123)4567890</a
	                                            >
	                                        </div>
	                                    </div>
	                                </div>
	                                <!-- static-media end -->
	                                <div class="mobile-menu-toggle theme1 d-lg-none">
	                                    <a href="#offcanvas-mobile-menu" class="offcanvas-toggle">
	                                        <svg viewbox="0 0 800 600">
	                                            <path
	                                                d="M300,220 C300,220 520,220 540,220 C740,220 640,540 520,420 C440,340 300,200 300,200"
	                                                id="top"
	                                            ></path>
	                                            <path d="M300,320 L540,320" id="middle"></path>
	                                            <path
	                                                d="M300,210 C300,210 520,210 540,210 C740,210 640,530 520,410 C440,330 300,190 300,190"
	                                                id="bottom"
	                                                transform="translate(480, 320) scale(1, -1) translate(-480, -318)"
	                                            ></path>
	                                        </svg>
	                                    </a>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-lg-5 col-xl-6 order-lg-first">
	                            <div class="search-form pt-30 pt-lg-0">
	                                <form class="form-inline position-relative" action="QuanLyGiay" method="GET">
	                                    <input
	                                        class="form-control theme1-border"
	                                        type="search"
	                                        placeholder="Enter your search key ..."
	                                        name="keySearch"
	                                    />
	                                    <button
	                                        class="btn search-btn theme-bg btn-rounded"
	                                        type="submit"
	                                    >
	                                        <i class="icon-magnifier"></i>
	                                    </button>
	                                </form>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!-- header-middle end -->
            	
                <div class="container d-none d-lg-block">
                    <div class="row align-items-center">
                        <div
                            class="
                                col-lg-10
                                offset-lg-2
                                d-flex
                                flex-wrap
                                align-items-center
                                position-relative
                            "
                        >
                            <ul class="main-menu d-flex">
                                <li class="active ml-0" data-atr-location="/CuaHangGiay/QuanLyGiay"><a href="QuanLyGiay">Shoes Manager</a></li>                         
                                <li  data-atr-location="/CuaHangGiay/QuanLyLoai"><a href="QuanLyLoai">Categories Manager</a></li>
                                <li  data-atr-location="/CuaHangGiay/QuanLyHoaDon"><a href="QuanLyHoaDon">Purchase Manager</a></li>
                                <li  data-atr-location="/CuaHangGiay/QuanLyKhachHang"><a href="QuanLyKhachHang">Customer Manager</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <!-- header end -->
        
    <script type="text/javascript">
		const liList = Array.from(document.querySelectorAll("li"));
		liList.forEach( li => {if (li.getAttribute("data-atr-location") == location.pathname){
			li.classList.add("active");
		} else li.classList.remove("active");} );
	</script>