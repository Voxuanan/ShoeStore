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
                            <h2 class="title text-dark text-capitalize">Add Shoe</h2>
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
                            <li class="breadcrumb-item active" aria-current="page">Add Shoe</li>
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
                        <h3 class="title text-capitalize mb-30 pb-25">Add A Shoe</h3>
                    </div>
                    <div class="col-lg-4 col-md-12 log-in-form">
                        <img id="blah" src="assets/img/product/default.png" alt="your image" 
                        style="height: 400px;width: 400px;object-fit: contain;"/>
                    </div>
                    <div class="col-lg-8 col-md-12 log-in-form">
                        <div>
                           <form method="post" action="ThemGiay" enctype= "multipart/form-data">
                                <div class="form-group row">
                                    <label for="shoeName" class="col-md-3 col-form-label"
                                        >Shoe Name</label
                                    >
                                    <div class="col-md-6">
                                        <input
                                        	required="required"
                                            type="text"
                                            id="shoeName"
                                            class="form-control"
                                            name="tenGiay"
                                        />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="unit" class="col-md-3 col-form-label">Unit</label>
                                    <div class="col-md-6">
                                        <input
                                        	required="required"
                                            type="number"
                                            min="0"
                                            id="unit"
                                            class="form-control"
                                            name="soLuongTon"
                                        />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="price" class="col-md-3 col-form-label">Price</label>
                                    <div class="col-md-6">
                                        <input
                                        	required="required"
                                            type="number"
                                            min="0"
                                            id="price"
                                            class="form-control"
                                            name="gia"
                                        />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="categoryId" class="col-md-3 col-form-label"
                                        >Mã Loại</label
                                    >
                                	    <div class="col-md-6">
                                        <div class="input-group mb-2 mr-sm-2">
                                            <select name="maLoai" class="form-select"
                                                id="categoryId" >
												<% for (Loai l: dsLoai ) {%>
												<option value="<%=l.getMaLoai()%>"> <%=l.getTenLoai()%> </<option>
												<%} %>
										</select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="imgInp" class="col-md-3 col-form-label">Ảnh</label>
                                    <div class="col-md-6">
                                        <div class="input-group mb-2 mr-sm-2">
                                            <input
                                                accept="image/*"
                                                type="file"
                                                id="imgInp"
                                                class="form-control"
                                                name="anh"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="size" class="col-md-3 col-form-label">Size</label>
                                    <div class="col-md-6">
                                        <div class="input-group mb-2 mr-sm-2">
                                            <input
                                            	required="required"
                                                type="text"
                                                class="form-control"
                                                id="size"
                                                name="size"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="color" class="col-md-3 col-form-label">Màu</label>
                                    <div class="col-md-6">
                                        <div class="input-group mb-2 mr-sm-2">
                                            <input
                                            	required="required"
                                                type="text"
                                                class="form-control"
                                                id="color"
                                                name="mau"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="description" class="col-md-3 col-form-label"
                                        >Mô tả</label
                                    >
                                    <div class="col-md-9">
                                        <div class="input-group mb-2 mr-sm-2">

                                             <textarea id="editor" name="moTa">
											</textarea>
											<script src="https://cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>
											<script>
											    CKEDITOR.replace( 'editor' );
											</script>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6"></div>
                                    <div class="col-12">
                                        <div class="sign-btn text-right">
                                            <button
                                                type="submit"
                                                class="btn theme-btn--dark1 btn--md"
                                            >
                                                Add
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
            imgInp.onchange = (evt) => {
                const [file] = imgInp.files;
                if (file) {
                    blah.src = URL.createObjectURL(file);
                }
            };
        </script>
    </body>
</html>
