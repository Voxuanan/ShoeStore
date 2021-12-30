<%@page import="bean.GioHang"%>
<%@page import="bo.GioHangBO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="bean.Loai"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<% 
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");	
		KhachHang khachHang = null;
		if (session.getAttribute("khachHang") != null){
			khachHang = (KhachHang)session.getAttribute("khachHang");
		}
		ArrayList<Loai> dsLoai = (ArrayList<Loai>)session.getAttribute("dsLoai");
		GioHangBO ghBO1=(GioHangBO)session.getAttribute("ghBO");
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
                        <li data-atr-location="/CuaHangGiay/TrangChu">
                            <a href="TrangChu">Home</a>
                        </li>
                        <li data-atr-location="/CuaHangGiay/Shop">
                            <a href="Shop"><span class="menu-text">Shop</span></a>
                            <ul class="offcanvas-submenu">
                                <%for (Loai l: dsLoai){ %>
                                	<li><a href="Shop?maLoai=<%=l.getMaLoai() %>" class="mr-30"><%=l.getTenLoai() %></a></li>                                	
                                <%} %>            
                            </ul>
                        </li>
                        <li data-atr-location="/CuaHangGiay/GioHang">
                            <a href="GioHang">Cart Page</a>
                        </li>
                        <li data-atr-location="/CuaHangGiay/LichSuMua">
                            <a href="LichSuMua">Purchase History</a>
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
	<!-- OffCanvas Cart Start -->
        <div id="offcanvas-cart" class="offcanvas offcanvas-cart theme1">
            <div class="inner">
                <div class="head d-flex flex-wrap justify-content-between">
                    <span class="title">Cart</span>
                    <button class="offcanvas-close">×</button>
                </div >
                <ul class="minicart-product-list overflow-auto" style="max-height: 60vh;">
                <span  id="danhSachGioHang">
                	<% if (ghBO1!= null) {
	                for (GioHang gh : ghBO1.ds){ %>
                    <li class="mr-15">
                        <a href="ChiTietSanPham?maGiay=<%=gh.getMaGiay() %>" class="image"
                            ><img src="assets/img/product/<%=gh.getAnh()!=null?gh.getAnh():"default.jpg" %>" 
                            alt="Cart product Image" onerror="this.src='assets/img/product/default.png'"
                            style="height: 75px; width: 75px;object-fit: contain;"
                        /></a>
                        <div class="content">
                            <a href="ChiTietSanPham?maGiay=<%=gh.getMaGiay() %>" class="title"><%=gh.getTenGiay() %></a>
                            <span class="quantity-price"
                                ><%=gh.getSoLuong() %> x <span class="amount">$<%=gh.getGia() %></span></span
                            >
                            <button class="remove" style="right:-15px"
                             onclick="(async () => {
				             				await fetch(`GioHang?maXoa=<%=gh.getMaGiay()%>`)
				                        	jQuery('#soLuongMua').load(' #soLuongMua');
				                           	jQuery('#tongTienMua').load(' #tongTienMua');
											jQuery('#tongTienMua1').load(' #tongTienMua1');
											jQuery('#tongTienMua2').load(' #tongTienMua2');
											jQuery('#danhSachGioHang').load(' #danhSachGioHang');
											jQuery('#danhSachGioHang1').load(' #danhSachGioHang1');					
				                       })()"
                            >×</button>
                        </div>
                    </li>       
	                <%}
	                 if (ghBO1.ds.isEmpty()) {%>
                        <h4 class="text-center text-dark text-capitalize py-30">Cart is empty</h4>
               		<% }
	                } else {%>
	                	<h4 class="text-center text-dark text-capitalize py-30">Cart is empty</h4>
	                <%} %>
                </span>
                </ul>
                <div class="sub-total d-flex flex-wrap justify-content-between">
                    <strong>Subtotal :</strong>
                    <span class="amount" id="tongTienMua1">$<%=session.getAttribute("tongTien")!=null?session.getAttribute("tongTien"):0 %>.00</span>
                </div>
                <a
                    href="GioHang"
                    class="
                        btn
                        theme--btn-default
                        btn--lg
                        d-block d-sm-inline-block
                        rounded-5
                        mr-sm-2
                    "
                    >view cart</a
                >
                <p class="minicart-message">Free Shipping on All Orders Over $100!</p>
            </div>
        </div>
        <!-- OffCanvas Cart End -->
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
	                                	<%if(session.getAttribute("khachHang") != null) {%>
		                                    <li>
		                                        <a
		                                            href="#"
		                                            id="dropdown1"
		                                            data-toggle="dropdown"
		                                            aria-haspopup="true"
		                                            aria-expanded="false"
		                                            ><%=khachHang.getHoTen() %> <i class="ion ion-ios-arrow-down"></i
		                                        ></a>
		                                        <ul
		                                            class="topnav-submenu dropdown-menu"
		                                            aria-labelledby="dropdown1"
		                                        >
		                                            <li><a href="DangNhap?dangXuat=1">Sign out</a></li>
		                                        </ul>
		                                    </li>
	                                    <%}else{ %>
		                                    <li>
		                                    	<a href="DangNhap">Log in</a>
		                                    </li>
		                                    <li>
		                                    	<a href="DangKy">Register</a>
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
	                                <a href="TrangChu"
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
	                                <div class="cart-block-links theme1">
	                                    <ul class="d-flex mr-50">
	                                        <li class="mr-0 cart-block position-relative">
	                                            <a class="offcanvas-toggle" href="#offcanvas-cart">
	                                                <span class="position-relative">
	                                                    <i class="icon-bag"></i>
	                                                    <span class="badge cbdg1" >
		                                                    <span id="soLuongMua">
		                                                    	<%=(session.getAttribute("ghBO")!=null)?((GioHangBO)session.getAttribute("ghBO")).ds.size():0 %>
		                                                    </span>
	                                                	</span>
	                                                </span>
	                                                <span class="cart-total position-relative" >
		                                                <span id="tongTienMua">
		                                                	$<%=session.getAttribute("tongTien")!=null?session.getAttribute("tongTien"):0 %>.00
		                                                </span>
	                                                </span>
	                                            </a>
	                                        </li>
	                                        <!-- cart block end -->
	                                    </ul>
	                                </div>
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
	                                <form class="form-inline position-relative" action="Shop" method="GET">
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
                                <li data-atr-location="/CuaHangGiay/TrangChu"><a href="TrangChu">Home </a></li>
                                <li class="position-static" data-atr-location="/CuaHangGiay/Shop">
                                    <a href="Shop">Shop <i class="ion-ios-arrow-down"></i></a>
                                    <ul class="mega-menu row">   
                                        <li class="col-12">
                                        	<ul class="d-flex flex-wrap">
                                            <%for (Loai l: dsLoai){ %>
                                             	<li><a href="Shop?maLoai=<%=l.getMaLoai() %>" class="mr-30"><%=l.getTenLoai() %></a></li>                                	
                                            <%}%>
                                            </ul>
                                        </li>
                                        <li class="col-6 mt-4">
                                                <img src="assets/img/mega-menu/1.jpg" class="zoom-in overflow-hidden" alt="img"
                                            />
                                        </li>
                                        <li class="col-6 mt-4">
                                                <img src="assets/img/mega-menu/2.jpg"  class="zoom-in overflow-hidden" alt="img"
                                            />
                                        </li>
                                    </ul>
                                </li>
                                <li data-atr-location="/CuaHangGiay/GioHang"><a href="GioHang">Cart Page</a></li>
                                <li data-atr-location="/CuaHangGiay/LichSuMua"><a href="LichSuMua">Purchase History</a></li>
                                <li data-atr-location="/CuaHangGiay/AboutUs"><a href="AboutUs">About Us</a></li>
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