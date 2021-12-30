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
    	%>
    	<%@include file="Menu.jsp" %>
        <!-- breadcrumb-section start -->
        <nav class="breadcrumb-section theme1 bg-lighten2 pt-110 pb-110">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center mb-15">
                            <h2 class="title text-dark text-capitalize">About Us</h2>
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
                            <li class="breadcrumb-item active" aria-current="page">About Us</li>
                        </ol>
                    </div>
                </div>
            </div>
        </nav>
        <!-- breadcrumb-section end -->
        <!-- product tab start -->
        <section class="about-section pt-80 pb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-30">
                        <div class="about-content">
                            <h2 class="title mb-20">Welcome To junno</h2>
                            <p class="mb-20">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore
                                aperiam fugit consequuntur voluptatibus ex sint iure in, distinctio
                                sed dolorem aspernatur veritatis repellendus dolorum voluptate,
                                animi libero officiis eveniet accusamus recusandae. Temporibus amet
                                ducimus sapiente voluptatibus autem dolorem magnam quas, officiis
                                eveniet accusamus animi libero officiis eveniet accusamus
                                recusandae. Temporibus
                            </p>
                            <p>
                                Sint voluptatum beatae necessitatibus quos mollitia vero, optio
                                asperiores aut tempora iusto eum rerum, possimus, minus quidem ut
                                saepe laboriosam. Praesentium aperiam accusantium minus repellendus
                                accusamus neque iusto pariatur laudantium provident quod
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-8 mb-30">
                        <div class="about-left-image mb-30">
                            <div class="map">
                                <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15305.29617838272!2d107.5927226!3d16.4591216!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1b70ba6cb49fb526!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBLaG9hIGjhu41jIEh14bq_!5e0!3m2!1svi!2s!4v1637739054208!5m2!1svi!2s"
                                    loading="lazy"
                                ></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 mb-30">
                        <div class="about-info">
                            <h4 class="title mb-20">Our Company</h4>
                            <p>
                                Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do
                                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing
                                elit.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 mb-30">
                        <div class="about-info">
                            <h4 class="title mb-20">Our Team</h4>
                            <p>
                                Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do
                                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing
                                elit.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 mb-30">
                        <div class="about-info">
                            <h4 class="title mb-20">Testimonial</h4>
                            <p>
                                Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do
                                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing
                                elit.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- product tab end -->
        <%@include file="Footer.jsp"%>

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
