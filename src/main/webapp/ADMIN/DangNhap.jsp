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
                            <h2 class="title text-dark text-capitalize">Admin Login</h2>
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
                                Log in to your account
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </nav>
        <!-- breadcrumb-section end -->
        <!-- product tab start -->
        <div class="my-account pt-80 pb-80">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h3 class="title text-capitalize mb-30 pb-25">Log in to your account</h3>
                        <form class="log-in-form" action="DangNhapAdmin" method="post" id="form">
                            <div class="form-group row">
                                <label for="staticEmail" class="col-md-3 col-form-label" 
                                    >Username</label
                                >
                                <div class="col-md-6">
                                    <input type="text" class="form-control" id="staticEmail" name="tenDangNhap" required/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword" class="col-md-3 col-form-label"
                                    >Password</label
                                >
                                <div class="col-md-6">
                                    <div class="input-group mb-2 mr-sm-2">
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="inputPassword"
                                            name="matKhau"
                                            required
                                        />
                                        <div class="input-group-prepend">
                                            <button
                                                type="button"
                                                class="
                                                    input-group-text
                                                    theme-btn--dark1
                                                    btn--md
                                                    show-password
                                                "
                                            >
                                                show
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="g-recaptcha  d-flex justify-content-center" data-type="image" data-sitekey="6LeBqMEdAAAAAP7LQ7KxQPQU2MUU77eN6gWeR87g"></div>
                            <div class="form-group row pb-3 text-center">
                                <div class="col-md-6 offset-md-3">
                                    <div class="login-form-links">
                                   	 <p class="text-danger mb-2"  id="error">
	                                    <%     if (request.getAttribute("errorDangNhap") !=null){%>
											<%=request.getAttribute("errorDangNhap").toString() %>
										<%} %>
									</p>
										
                                        <div class="sign-btn">
                                            <input type="submit" value="Sign In"  class="btn theme-btn--dark1 btn--md" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row text-center mb-0">
                                <div class="col-12">
                                    <div class="border-top">
                                        <a href="DangNhap" class="no-account">Login with user account? Click Here</a>
                                    </div>
                                </div>
                            </div>
                        </form>
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

        <script>
            passElement = document.querySelector("#inputPassword");
            btnShowPassword = document.querySelector(".show-password");

            btnShowPassword.addEventListener("click", () => {
                if (passElement.type == "password") {
                    passElement.type = "text";
                } else passElement.type = "password";
            });
        </script>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script>
        	window.onload = function(){
        		let isValid = false;
        		const form = document.getElementById("form");
        		const error = document.getElementById("error");
        		
        		form.addEventListener("submit",function(event){
        			event.preventDefault();
        			const response = grecaptcha.getResponse();
        			if (response){
        				form.submit();
        			} else error.innerText = "Bạn chưa xác nhận reCaptcha";
        		})
        	}
       </script>
    </body>
</html>
