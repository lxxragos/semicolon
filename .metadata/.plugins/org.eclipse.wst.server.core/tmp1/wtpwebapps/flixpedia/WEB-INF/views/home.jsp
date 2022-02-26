<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%@include file="include/css.jsp" %>
</head>
<body class="body">
	<!-- header -->
	<%@include file="include/header.jsp" %>
	

	<!-- 카졸 시작 home -->
	<section class="home">
		<!-- 카졸 백그라운드 이미지 home bg -->
		<div class="owl-carousel home__bg">
			<div class="item home__cover" data-bg="img/home/home__bg.jpg"></div>
			<div class="item home__cover" data-bg="img/home/home__bg2.jpg"></div>
			<div class="item home__cover" data-bg="img/home/home__bg3.jpg"></div>
			<div class="item home__cover" data-bg="img/home/home__bg4.jpg"></div>
		</div>
		<!-- 카졸 백그라운드 이미지 끝end home bg -->

		<!-- 카졸 내용-->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="home__title"><b>영화</b> Movie</h1>
					
					<!-- 카졸 move-->
					<button class="home__nav home__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="home__nav home__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
					<!-- 카졸 move end-->
				</div>

				<div class="col-12"> <!-- 카톨 content start-->
					<div class="owl-carousel home__carousel">

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="img/covers/cover.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
									<span class="card__category">
										<a href="#">Action</a>
										<a href="#">Triler</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
								</div>
							</div>
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="img/covers/cover2.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Benched</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
								</div>
							</div>
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="img/covers/cover3.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Whitney</a></h3>
									<span class="card__category">
										<a href="#">Romance</a>
										<a href="#">Drama</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
								</div>
							</div>
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="img/covers/cover4.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Blindspotting</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
										<a href="#">Drama</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
								</div>
							</div>
							<!-- end card -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 카졸 끝 end home -->

	<!-- 카졸 내용-->
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="home__title"><b>드라마</b> Drama</h1>
				
				<!-- 카졸 move-->
				<button class="home__nav home__nav--prev" type="button">
					<i class="icon ion-ios-arrow-round-back"></i>
				</button>
				<button class="home__nav home__nav--next" type="button">
					<i class="icon ion-ios-arrow-round-forward"></i>
				</button>
				<!-- 카졸 move end-->
			</div>

			<div class="col-12"> <!-- 카톨 content start-->
				<div class="owl-carousel home__carousel">

					<div class="item">
						<!-- card -->
						<div class="card card--big">
							<div class="card__cover">
								<img src="img/covers/cover.jpg" alt="">
								<a href="#" class="card__play">
									<i class="icon ion-ios-play"></i>
								</a>
							</div>
							<div class="card__content">
								<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
								<span class="card__category">
									<a href="#">Action</a>
									<a href="#">Triler</a>
								</span>
								<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
							</div>
						</div>
						<!-- end card -->
					</div>

					<div class="item">
						<!-- card -->
						<div class="card card--big">
							<div class="card__cover">
								<img src="img/covers/cover2.jpg" alt="">
								<a href="#" class="card__play">
									<i class="icon ion-ios-play"></i>
								</a>
							</div>
							<div class="card__content">
								<h3 class="card__title"><a href="#">Benched</a></h3>
								<span class="card__category">
									<a href="#">Comedy</a>
								</span>
								<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
							</div>
						</div>
						<!-- end card -->
					</div>

					<div class="item">
						<!-- card -->
						<div class="card card--big">
							<div class="card__cover">
								<img src="img/covers/cover3.jpg" alt="">
								<a href="#" class="card__play">
									<i class="icon ion-ios-play"></i>
								</a>
							</div>
							<div class="card__content">
								<h3 class="card__title"><a href="#">Whitney</a></h3>
								<span class="card__category">
									<a href="#">Romance</a>
									<a href="#">Drama</a>
								</span>
								<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
							</div>
						</div>
						<!-- end card -->
					</div>

					<div class="item">
						<!-- card -->
						<div class="card card--big">
							<div class="card__cover">
								<img src="img/covers/cover4.jpg" alt="">
								<a href="#" class="card__play">
									<i class="icon ion-ios-play"></i>
								</a>
							</div>
							<div class="card__content">
								<h3 class="card__title"><a href="#">Blindspotting</a></h3>
								<span class="card__category">
									<a href="#">Comedy</a>
									<a href="#">Drama</a>
								</span>
								<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
							</div>
						</div>
						<!-- end card -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 카졸 끝 end home -->

<!-- 카졸 내용-->
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1 class="home__title"><b>예능</b> Entertainment</h1>
			
			<!-- 카졸 move-->
			<button class="home__nav home__nav--prev" type="button">
				<i class="icon ion-ios-arrow-round-back"></i>
			</button>
			<button class="home__nav home__nav--next" type="button">
				<i class="icon ion-ios-arrow-round-forward"></i>
			</button>
			<!-- 카졸 move end-->
		</div>

		<div class="col-12"> <!-- 카톨 content start-->
			<div class="owl-carousel home__carousel">

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
							<span class="card__category">
								<a href="#">Action</a>
								<a href="#">Triler</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover2.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Benched</a></h3>
							<span class="card__category">
								<a href="#">Comedy</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover3.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Whitney</a></h3>
							<span class="card__category">
								<a href="#">Romance</a>
								<a href="#">Drama</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover4.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Blindspotting</a></h3>
							<span class="card__category">
								<a href="#">Comedy</a>
								<a href="#">Drama</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
						</div>
					</div>
					<!-- end card -->
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<!-- 카졸 끝 end home -->

<!-- 카졸 내용-->
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1 class="home__title"><b>애니메이션</b> animation</h1>
			
			<!-- 카졸 move-->
			<button class="home__nav home__nav--prev" type="button">
				<i class="icon ion-ios-arrow-round-back"></i>
			</button>
			<button class="home__nav home__nav--next" type="button">
				<i class="icon ion-ios-arrow-round-forward"></i>
			</button>
			<!-- 카졸 move end-->
		</div>

		<div class="col-12"> <!-- 카톨 content start-->
			<div class="owl-carousel home__carousel">

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
							<span class="card__category">
								<a href="#">Action</a>
								<a href="#">Triler</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover2.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Benched</a></h3>
							<span class="card__category">
								<a href="#">Comedy</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover3.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Whitney</a></h3>
							<span class="card__category">
								<a href="#">Romance</a>
								<a href="#">Drama</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover4.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Blindspotting</a></h3>
							<span class="card__category">
								<a href="#">Comedy</a>
								<a href="#">Drama</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
						</div>
					</div>
					<!-- end card -->
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<!-- 카졸 끝 end home -->


<!-- 카졸 내용-->
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1 class="home__title"><b>웹툰</b> WEBTOON</h1>
			
			<!-- 카졸 move-->
			<button class="home__nav home__nav--prev" type="button">
				<i class="icon ion-ios-arrow-round-back"></i>
			</button>
			<button class="home__nav home__nav--next" type="button">
				<i class="icon ion-ios-arrow-round-forward"></i>
			</button>
			<!-- 카졸 move end-->
		</div>

		<div class="col-12"> <!-- 카톨 content start-->
			<div class="owl-carousel home__carousel">

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
							<span class="card__category">
								<a href="#">Action</a>
								<a href="#">Triler</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover2.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Benched</a></h3>
							<span class="card__category">
								<a href="#">Comedy</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover3.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Whitney</a></h3>
							<span class="card__category">
								<a href="#">Romance</a>
								<a href="#">Drama</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover4.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Blindspotting</a></h3>
							<span class="card__category">
								<a href="#">Comedy</a>
								<a href="#">Drama</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
						</div>
					</div>
					<!-- end card -->
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<!-- 카졸 끝 end home -->

<!-- 카졸 내용-->
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1 class="home__title"><b>책</b> BOOK</h1>
			
			<!-- 카졸 move-->
			<button class="home__nav home__nav--prev" type="button">
				<i class="icon ion-ios-arrow-round-back"></i>
			</button>
			<button class="home__nav home__nav--next" type="button">
				<i class="icon ion-ios-arrow-round-forward"></i>
			</button>
			<!-- 카졸 move end-->
		</div>

		<div class="col-12"> <!-- 카톨 content start-->
			<div class="owl-carousel home__carousel">

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
							<span class="card__category">
								<a href="#">Action</a>
								<a href="#">Triler</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover2.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Benched</a></h3>
							<span class="card__category">
								<a href="#">Comedy</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover3.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Whitney</a></h3>
							<span class="card__category">
								<a href="#">Romance</a>
								<a href="#">Drama</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
						</div>
					</div>
					<!-- end card -->
				</div>

				<div class="item">
					<!-- card -->
					<div class="card card--big">
						<div class="card__cover">
							<img src="img/covers/cover4.jpg" alt="">
							<a href="#" class="card__play">
								<i class="icon ion-ios-play"></i>
							</a>
						</div>
						<div class="card__content">
							<h3 class="card__title"><a href="#">Blindspotting</a></h3>
							<span class="card__category">
								<a href="#">Comedy</a>
								<a href="#">Drama</a>
							</span>
							<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
						</div>
					</div>
					<!-- end card -->
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<!-- 카졸 끝 end home -->
	
<%@include file="include/footer.jsp" %>
</body>

</html>