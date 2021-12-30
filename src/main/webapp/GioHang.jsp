<%@page import="bo.GioHangBO"%>
<%@page import="bean.GioHang"%>
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
        	GioHangBO ghBO=(GioHangBO)session.getAttribute("ghBO");
    	%>
		<%@include file="Menu.jsp" %>
        <!-- breadcrumb-section start -->
        <nav class="breadcrumb-section theme1 bg-lighten2 pt-110 pb-110">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center mb-15">
                            <h2 class="title text-dark text-capitalize">cart</h2>
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
                            <li class="breadcrumb-item active" aria-current="page">cart</li>
                        </ol>
                    </div>
                </div>
            </div>
        </nav>
        <!-- breadcrumb-section end -->
        <!-- product tab start -->
        <section class="whish-list-section theme1 pt-80 pb-80">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h3 class="title mb-30 pb-25 text-capitalize">Your cart items</h3>
                        <div class="table-responsive mb-30" >
	                        <div id="danhSachGioHang1">
	                            <table class="table">
	                                <thead class="thead-light">
	                                    <tr>
	                                        <th class="text-center" scope="col">Product Image</th>
	                                        <th class="text-center" scope="col">Product Name</th>
	                                        <th class="text-center" scope="col">Quantity</th>
	                                        <th class="text-center" scope="col">Price</th>
	                                        <th class="text-center" scope="col">Size</th>
	                                        <th class="text-center" scope="col">Color</th>
	                                        <th class="text-center" scope="col">Action</th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                               		<% if (ghBO!= null) {
		                               		for (GioHang gh : ghBO.ds){ %>
		                                    <tr>
		                                        <th class="text-center" scope="row">
		                                        	<a href="ChiTietSanPham?maGiay=<%=gh.getMaGiay()%>">
			                                            <img src="assets/img/product/<%=gh.getAnh()!=null?gh.getAnh():"default.jpg" %>"
			                                             alt="img" onerror="this.src='assets/img/product/default.png'" 
			                                             style="height: 195px; width: 195px;object-fit: contain;"
			                                             />
		                                             </a>
		                                 		</th>
		                                        <td class="text-center">
		                                            <span class="whish-title"
		                                                ><%=gh.getTenGiay() %></span
		                                            >
		                                        </td>
		                                        <td class="text-center">
		                                            <div class="product-count style">
		                                                <div class="count d-flex justify-content-center">
		                                                    <input
		                                                    	name="soLuong"
		                                                        type="number"
		                                                        min="1"
		                                                        step="1"
		                                                        value="<%=gh.getSoLuong() %>"
		                                                    />
		                                                    <div class="button-group">
		                                                        <button class="count-btn increment" onclick="event.preventDefault();">
		                                                            <i class="fas fa-chevron-up"></i>
		                                                        </button>
		                                                        <button class="count-btn decrement" onclick="event.preventDefault();">
		                                                            <i class="fas fa-chevron-down"></i>
		                                                        </button>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </td>
		                                        <td class="text-center">
		                                            <span class="whish-list-price"> $<%=gh.getGia() %></span>
		                                        </td>
		
		                                        <td class="text-center">
		                                            <span><%=gh.getSize() %></span>
		                                        </td>
		                                        <td class="text-center">
		                                            <span><%=gh.getMau() %></span>
		                                        </td>
		                                        <td class="text-center">    
		                                           	<button class="trash btn theme-btn--dark1 btn--lg"
		                                           	 onclick="(async () => {
							             				await fetch(`GioHang?maXoa=<%=gh.getMaGiay()%>`)
							                        	jQuery('#soLuongMua').load(' #soLuongMua');
							                           	jQuery('#tongTienMua').load(' #tongTienMua');
														jQuery('#tongTienMua1').load(' #tongTienMua1');
														jQuery('#tongTienMua2').load(' #tongTienMua2');
														jQuery('#danhSachGioHang').load(' #danhSachGioHang');
														jQuery('#danhSachGioHang1').load(' #danhSachGioHang1');					
							                       })()"
		                                                    ><i class="fas fa-trash-alt"></i> 
		                                            </button>
		                                            <button class="btn theme-btn--dark1 btn--lg test1"
		                                            onclick="suaSoLuong(event,<%=gh.getMaGiay() %>)"
		                                                >Update
		                                            </button>
		                                        </td>
		                                    </tr>                          
		                                    
	                                    <% } 
		                               	if (ghBO.ds.isEmpty()) {%>
			                               	<tr>
			                                    <td colspan="7" ><h4 class="text-center text-dark text-capitalize py-50">Cart is empty</h4></td>
			                                </tr>
		                               	<% }
	                               		}
	                               		else  {%>
		                                    <tr>
		                                    	<td colspan="7" ><h4 class="text-center text-dark text-capitalize py-50">Cart is empty</h4></td>
		                                    </tr>
	                                    <%} %>
	                                </tbody>
	                            </table>
	                        </div>
                        </div>
                        <div class="d-flex flex-row justify-content-between">
                        	<div>
	                        	<button class="btn theme-btn--dark1 ml-30" style="padding: 15px 60px"
	                        	 onclick="(async () => {
						             				await fetch(`GioHang?xoaTatCa=1`)
						                        	jQuery('#soLuongMua').load(' #soLuongMua');
						                           	jQuery('#tongTienMua').load(' #tongTienMua');
													jQuery('#tongTienMua1').load(' #tongTienMua1');
													jQuery('#tongTienMua2').load(' #tongTienMua2');
													jQuery('#danhSachGioHang').load(' #danhSachGioHang');
													jQuery('#danhSachGioHang1').load(' #danhSachGioHang1');					
						                       })()">
	                                Delete All
	                            </button>
                            </div>
                        	<div class="d-flex">
                            <h1 class="mr-30" id="tongTienMua2">Total: <span class="text-success"><%=(session.getAttribute("tongTien")!=null)?session.getAttribute("tongTien"):0 %>$</span></h1>
                            <% if (session.getAttribute("khachHang") !=null) { %>
                            <a href="LichSuMua?thanhToan=1" class="btn theme-btn--dark1 mr-50" style="padding: 15px 60px">
                                Order
                            </a>
                            <%} else { %>
                            <a href="DangNhap" class="btn theme-btn--dark1 mr-50" style="padding: 15px 60px">
                                Order
                            </a>
                            <%} %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- product tab end -->
        <!-- footer strat -->
        <footer class="bg-light theme1 position-relative">
            <!-- footer bottom start -->
            <div class="footer-bottom pt-80 pb-30">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-4 mb-30">
                            <div class="footer-widget mx-w-400">
                                <div class="footer-logo mb-35">
                                    <a href="index.html">
                                        <img
                                            src="assets/img/logo/logo-dark.jpg"
                                            alt="footer logo"
                                        />
                                    </a>
                                </div>
                                <p class="text mb-30">
                                    We are a team of designers and developers that create high
                                    quality Magento, Prestashop, Opencart.
                                </p>
                                <div class="address-widget mb-30">
                                    <div class="media">
                                        <span class="address-icon mr-3">
                                            <img src="assets/img/icon/phone.png" alt="phone" />
                                        </span>
                                        <div class="media-body">
                                            <p class="help-text text-uppercase">NEED HELP?</p>
                                            <h4 class="title text-dark">
                                                <a href="tel:+1(123)8889999">(+800) 345 678</a>
                                            </h4>
                                        </div>
                                    </div>
                                </div>

                                <div class="social-network">
                                    <ul class="d-flex">
                                        <li>
                                            <a href="https://www.facebook.com/" target="_blank"
                                                ><span class="icon-social-facebook"></span
                                            ></a>
                                        </li>
                                        <li>
                                            <a href="https://twitter.com/" target="_blank"
                                                ><span class="icon-social-twitter"></span
                                            ></a>
                                        </li>
                                        <li>
                                            <a href="https://www.youtube.com/" target="_blank"
                                                ><span class="icon-social-youtube"></span
                                            ></a>
                                        </li>
                                        <li class="mr-0">
                                            <a href="https://www.instagram.com/" target="_blank"
                                                ><span class="icon-social-instagram"></span
                                            ></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-2 mb-30">
                            <div class="footer-widget">
                                <div class="border-bottom cbb1 mb-25">
                                    <div class="section-title pb-20">
                                        <h2 class="title text-dark text-uppercase">Information</h2>
                                    </div>
                                </div>
                                <!-- footer-menu start -->
                                <ul class="footer-menu">
                                    <li><a href="#">Delivery</a></li>
                                    <li><a href="about-us.html">About us</a></li>
                                    <li><a href="#">Secure payment</a></li>
                                    <li><a href="contact.html">Contact us</a></li>
                                    <li><a href="#">Sitemap</a></li>
                                    <li><a href="#">Stores</a></li>
                                </ul>
                                <!-- footer-menu end -->
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-2 mb-30">
                            <div class="footer-widget">
                                <div class="border-bottom cbb1 mb-25">
                                    <div class="section-title pb-20">
                                        <h2 class="title text-dark text-uppercase">Custom Links</h2>
                                    </div>
                                </div>
                                <!-- footer-menu start -->
                                <ul class="footer-menu">
                                    <li><a href="#">Legal Notice</a></li>
                                    <li><a href="#">Prices drop</a></li>

                                    <li><a href="#">New products</a></li>

                                    <li><a href="#">Best sales</a></li>

                                    <li><a href="login.html">Login</a></li>

                                    <li><a href="myaccount.html">My account</a></li>
                                </ul>
                                <!-- footer-menu end -->
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4 mb-30">
                            <div class="footer-widget">
                                <div class="border-bottom cbb1 mb-25">
                                    <div class="section-title pb-20">
                                        <h2 class="title text-dark text-uppercase">Newsletter</h2>
                                    </div>
                                </div>
                                <p class="text mb-20">
                                    You may unsubscribe at any moment. For that purpose, please find
                                    our contact info in the legal notice.
                                </p>
                                <div class="nletter-form mb-35">
                                    <form
                                        class="form-inline position-relative"
                                        action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef"
                                        target="_blank"
                                        method="post"
                                    >
                                        <input
                                            class="form-control"
                                            type="text"
                                            placeholder="Your email address"
                                        />
                                        <button
                                            class="btn nletter-btn text-capitalize"
                                            type="submit"
                                        >
                                            Sign up
                                        </button>
                                    </form>
                                </div>

                                <div class="store d-flex">
                                    <a href="https://www.apple.com/" class="d-inline-block mr-3"
                                        ><img src="assets/img/icon/apple.png" alt="apple icon" />
                                    </a>
                                    <a href="https://play.google.com/store/" class="d-inline-block"
                                        ><img src="assets/img/icon/play.png" alt="apple icon" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer bottom end -->
            <!-- coppy-right start -->
            <div class="coppy-right pb-80">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="text-left">
                                <p class="mb-3 mb-md-0">
                                    Copyright &copy; <a href="https://hasthemes.com/">HasThemes</a>.
                                    All Rights Reserved
                                </p>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-8">
                            <div class="text-left">
                                <img src="assets/img/payment/1.png" alt="img" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- coppy-right end -->
        </footer>
        <!-- footer end -->
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
		<script type="text/javascript">
		async function suaSoLuong(event,maGiay){
        	let soLuong = event.target.closest("tr").querySelector("input").value;
        	console.log("GioHang?maSua="+maGiay+"&soLuong="+soLuong);
			await fetch("GioHang?maSua="+maGiay+"&soLuong="+soLuong)
        	jQuery('#soLuongMua').load(' #soLuongMua');
           	jQuery('#tongTienMua').load(' #tongTienMua');
			jQuery('#tongTienMua1').load(' #tongTienMua1');
			jQuery('#tongTienMua2').load(' #tongTienMua2');
			jQuery('#danhSachGioHang').load(' #danhSachGioHang');
			jQuery('#danhSachGioHang1').load(' #danhSachGioHang1');					
		}
		
		</script>
        <!-- <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    <script src="assets/js/main.js"></script> -->
    </body>
</html>
