<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// 경로 /biz 부터 시작  [http://localhost:8080/biz/ @@.do 요청 하기 위해]
	String contextPath = request.getContextPath();
	// theme 까지 들어온 경로 
	String KPath = contextPath + "/resources/theme";
%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>현재 상영작</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicons -->
<link rel="shortcut icon" href="<%=KPath%>/images/favicon.ico">
<link rel="apple-touch-icon" href="<%=KPath%>/images/icon.png">

<!-- Google font (font-family: 'Roboto', sans-serif;) -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<!-- Google font (font-family: 'Roboto Condensed', sans-serif;) -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="<%=KPath%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=KPath%>/css/plugins.css">
<link rel="stylesheet" href="<%=KPath%>/style.css">

<!-- Color Variations -->
<link rel="stylesheet" href="<%=KPath%>/css/color-variations.css">

<!-- Cusom css -->
<link rel="stylesheet" href="<%=KPath%>/css/custom.css">

<!-- Modernizer js -->
<script src="<%=KPath%>/js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>


	<!-- Add your site or application content here -->


	<!-- 메인 영역 -->
	<div class="wrapper" id="wrapper">

		<!-- Header -->
		 <jsp:include page="../main/main-header.jsp"></jsp:include> 
		<!-- //Header -->

 <!-- Page Content -->
        <main class="page-content">

            <!-- Portfolio Area -->
            <section class="portfolio-area section-padding-lg bg-white">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">
                            <div class="section-title text-center">
                            <div id="test"> 테스트 하는칸
                            ${movieList}</div>
                                <h4>현재 상영작</h4>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="portfolio-wrap">

                    <!-- Poftfolio Filters -->
                    <div class="portfolio-filters">
                        <button class="is-checked" data-filter="*">ALL</button>
                        <button data-filter=".pfolio-filter-design">DESIGN</button>
                        <button data-filter=".pfolio-filter-creative">CREATIVE</button>
                        <button data-filter=".pfolio-filter-photoshop">PHOTOSHOP</button>
                    </div>
                    <!--// Poftfolio Filters -->

                    <!-- Portfolios -->
                    <div class="row no-gutters portfolios portfolios-style-1" data-show="6" data-load="3">

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-design pfolio-filter-photoshop">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-1.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>Design</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Medicine Box</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-creative">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-2.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>CREATIVE</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Coffe Paper Cup</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-design pfolio-filter-photoshop">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-3.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>Photoshop</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Paper Bag Mockup</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-creative pfolio-filter-design">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-4.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>Design</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Beautiful Mockup</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-design">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-5.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>CREATIVE</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Gradient Helmet</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-creative pfolio-filter-photoshop">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-6.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>Photoshop</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Beautiful White Cup</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-design pfolio-filter-photoshop">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-7.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>Design</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Beautiful Bottles</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-creative">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-8.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>CREATIVE</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Wall Electric Box</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-design pfolio-filter-photoshop">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-9.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>Photoshop</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Wood Paper Mockup</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-creative pfolio-filter-design">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-10.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>Design</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Beautiful Mockup</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-design">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-11.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>CREATIVE</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Stand Fan</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                        <!-- Single Portfolio -->
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-creative pfolio-filter-photoshop">
                            <div class="portfolio">
                                <div class="portfoilo-thumb">
                                    <img src="images/portfolio/layout-1/portfolio-thumb-12.jpg" alt="portfolio thumb">
                                </div>
                                <div class="portfolio-content">
                                    <div class="portfolio-content-inner text-center">
                                        <h6>Photoshop</h6>
                                        <h3>
                                            <a href="single-portfolio.html">Hight Table</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// Single Portfolio -->

                    </div>
                    <!--// Portfolios -->

                    <div class="portfolio-load-more-button text-center">
                        <button class="load-more-toggle cr-btn cr-btn">
                            <span>Load More</span>
                        </button>
                    </div>

                </div>

            </section>
            <!--// Portfolio Area -->

        </main>
        <!--// Page Content -->

		

 
		<!-- Features Area -->
		<section
			class="features-area section-padding-top-xs section-padding-bottom-sm bg-grey">
			<div class="container">
				<div class="row justify-content-center services-grid">

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-sm-6 col-12">
						<div class="service text-center">
							<div class="service-icon">
								<span> <i class="bi bi-color-plate"></i>
								</span> <span> <i class="bi bi-color-plate"></i>
								</span>
							</div>
							<div class="service-content">
								<h4>친절</h4>
								<p>There are many variations of passages of Lorem Ipsum, but
									the majority</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-sm-6 col-12">
						<div class="service text-center">
							<div class="service-icon">
								<span> <i class="bi bi-support"></i>
								</span> <span> <i class="bi bi-support"></i>
								</span>
							</div>
							<div class="service-content">
								<h4>감동</h4>
								<p>There are many variations of passages of Lorem Ipsum, but
									the majority</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-sm-6 col-12">
						<div class="service text-center">
							<div class="service-icon">
								<span> <i class="bi bi-rocket2"></i>
								</span> <span> <i class="bi bi-rocket2"></i>
								</span>
							</div>
							<div class="service-content">
								<h4>행복</h4>
								<p>There are many variations of passages of Lorem Ipsum, but
									the majority</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

				</div>
			</div>
		</section>


		<!-- //메인 끝 -->

		<!-- Footer Area -->
		<jsp:include page="../main/main-footer.jsp"></jsp:include>
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="<%=KPath%>/js/vendor/jquery-3.2.1.min.js"></script>
	<script src="<%=KPath%>/js/popper.min.js"></script>
	<script src="<%=KPath%>/js/bootstrap.min.js"></script>
	<script src="<%=KPath%>/js/plugins.js"></script>
	<script src="<%=KPath%>/js/active.js"></script>
	<script src="<%=KPath%>/js/scripts.js"></script>
</body>

</html>