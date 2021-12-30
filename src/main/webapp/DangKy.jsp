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
                            <h2 class="title text-dark text-capitalize">Register</h2>
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
                            <li class="breadcrumb-item active" aria-current="page">Register</li>
                        </ol>
                    </div>
                </div>
            </div>
        </nav>
        <!-- breadcrumb-section end -->
        <!-- product tab start -->
        <div class="register pt-80 pb-80">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h3 class="title text-capitalize mb-30 pb-25">Create an account</h3>
                        <div class="log-in-form">
                            <form action="DangKy" method="post" class="personal-information" id="form">
                                <div class="order-asguest theme1 mb-3">
                                    <span>Already have an account?</span>
                                    <a class="text-muted hover-color" href="DangNhap"
                                        >Log in instead!</a
                                    >
                                </div>
                                <div class="form-group row">
                                    <label for="name" class="col-md-3 col-form-label">name</label>
                                    <div class="col-md-6">
                                        <input
                                            type="text"
                                            id="name"
                                            class="form-control"
                                            name="hoTen"
                                            required
                                        />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="username" class="col-md-3 col-form-label"
                                        >username</label
                                    >
                                    <div class="col-md-6">
                                        <input
                                            type="text"
                                            id="username"
                                            class="form-control"
                                            name="tenDangNhap"
                                            required
                                        />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="email" class="col-md-3 col-form-label">Email</label>
                                    <div class="col-md-6">
                                        <input
                                            type="email"
                                            id="email"
                                            class="form-control"
                                            name="email"
                                            required
                                        />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="Password" class="col-md-3 col-form-label"
                                        >Password</label
                                    >
                                    <div class="col-md-6">
                                        <div class="input-group mb-2 mr-sm-2">
                                            <input
                                                type="password"
                                                class="form-control"
                                                id="Password"
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
                                <div class="form-group row">
                                    <label for="Address" class="col-md-3 col-form-label"
                                        >Address</label
                                    >
                                    <div class="col-md-6">
                                        <div class="input-group mb-2 mr-sm-2">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="Address"
                                                name="diaChi"
                                                required
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="Address" class="col-md-3 col-form-label"></label>
                                    <div class="col-md-6">
                                        <div class="input-group mb-2 mr-sm-2">
                                            <select
                                                name="province"
                                                id="province"
                                                class="form-select"
                                                required
                                            ></select>
                                            <select
                                                name="district"
                                                id="district"
                                                class="form-select"
                                                required
                                            ></select>
                                            <select
                                                name="commune"
                                                id="commune"
                                                class="form-select"
                                                required
                                            ></select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="Address" class="col-md-3 col-form-label"
                                        >Moblie</label
                                    >
                                    <div class="col-md-6">
                                        <div class="input-group mb-2 mr-sm-2">
                                            <input
                                                type="tel"
                                                id="Moblie"
                                                name="soDienThoai"
                                                pattern="[0-9]{10,12}"
                                                class="form-control"
                                                required
                                            />
                                        </div>
                                    </div>
                                </div>			 
                                <div class="form-group row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6">
	                                    <p class="text-danger" id="error">
								        <%     if (request.getAttribute("errorDangKy") !=null){%>
											<%=request.getAttribute("errorDangKy").toString() %>
										<%} %>
										</p>
									</div>
									<div class="form-group row">
	                                    <div class="col-md-3"></div>
	                                    <div class="col-md-6">
	                                    	<div class="g-recaptcha" data-type="image" data-sitekey="6LeBqMEdAAAAAP7LQ7KxQPQU2MUU77eN6gWeR87g"></div>
	                                    </div>
                                    </div>
									 
                                    <div class="col-12">
                                        <div class="sign-btn text-right">
                                            <button
                                                type="submit"
                                                class="btn theme-btn--dark1 btn--md"
                                            >
                                                Register
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
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
            passElement = document.querySelector("#Password");
            btnShowPassword = document.querySelector(".show-password");

            btnShowPassword.addEventListener("click", () => {
                if (passElement.type == "password") {
                    passElement.type = "text";
                } else passElement.type = "password";
            });
        </script>
        <script>
            const provinceSelector = document.getElementById("province");
            provinceSelector.innerHTML = `<option value="">-- Tỉnh & Thành Phố -- </option>`;

            const districtSelector = document.getElementById("district");
            districtSelector.innerHTML = `<option value="">-- Quận & Huyện -- </option>`;

            const communeSelector = document.getElementById("commune");
            communeSelector.innerHTML = `<option value="">-- Phường & Xã-- </option>`;

            async function getProvince() {
                provinceSelector.innerHTML = `<option value="">-- Tỉnh & Thành Phố -- </option>`;
                try {
                    const response = await fetch("DataProvinceVN.json");
                    const data = await response.json();
                    data.province.forEach((datum) => {
                        const option = document.createElement("option");
                        option.setAttribute("value", datum.name);
                        option.setAttribute("idProvince", datum.idProvince);
                        option.innerText = datum.name;
                        provinceSelector.appendChild(option);
                    });
                } catch (e) {
                    console.log("fail to get province");
                }
            }

            async function getDistrict() {
                if (provinceSelector.value) {
                    districtSelector.innerHTML = `<option value="">-- Quận & Huyện -- </option>`;
                    try {
                        const response = await fetch("DataProvinceVN.json");
                        const data = await response.json();
                        data.district
                            .filter(
                                (datum) =>
                                    datum.idProvince ===
                                    provinceSelector[provinceSelector.selectedIndex].getAttribute(
                                        "idProvince"
                                    )
                            )
                            .forEach((datum) => {
                                const option = document.createElement("option");
                                option.setAttribute("value", datum.name);
                                option.setAttribute("idDistrict", datum.idDistrict);
                                option.innerText = datum.name;
                                districtSelector.appendChild(option);
                            });
                    } catch (e) {
                        console.log("fail to get district");
                    }
                } else districtSelector.innerHTML = `<option value="">-- Quận & Huyện -- </option>`;
            }

            async function getCommune() {
                if (districtSelector.value) {
                    try {
                        communeSelector.innerHTML = `<option value="">-- Phường & Xã-- </option>`;
                        const response = await fetch("DataProvinceVN.json");
                        const data = await response.json();

                        data.commune
                            .filter(
                                (datum) =>
                                    datum.idDistrict ===
                                    districtSelector[districtSelector.selectedIndex].getAttribute(
                                        "idDistrict"
                                    )
                            )
                            .forEach((datum) => {
                                const option = document.createElement("option");
                                option.setAttribute("value", datum.name);
                                option.setAttribute("idCommune", datum.idCommune);
                                option.innerText = datum.name;
                                communeSelector.appendChild(option);
                            });
                    } catch (e) {
                        console.log("fail to get commune");
                    }
                } else communeSelector.innerHTML = `<option value="">-- Phường & Xã-- </option>`;
            }

            getProvince();
            provinceSelector.addEventListener("change", () => {
                getDistrict();
                communeSelector.innerHTML = `<option value="">-- Phường & Xã-- </option>`;
            });

            districtSelector.addEventListener("change", () => {
                getCommune();
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
        			const response = grecaptcha.getResponse()
        			if (response){
        				form.submit();
        			} else error.innerText = "Bạn chưa xác nhận reCaptcha";
        		})
        	}
        </script>
    </body>
</html>
    