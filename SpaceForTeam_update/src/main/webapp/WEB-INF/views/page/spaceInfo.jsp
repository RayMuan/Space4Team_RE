<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>SpaceForTeam - search your space !</title>
	<!-- <link rel="icon" type="image/x-icon" href="assets/favicon.ico" /> -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
	<link href="resources/css/styles.css" rel="stylesheet" />
</head>
<body class="d-flex flex-column">
	<main class="flex-shrink-0">
		<!-- nav -->
       	<jsp:include page="../inc/top.jsp" />
		<!-- Page Content-->
		<section class="py-5">
			<div class="container px-5 my-5">
				<div class="row gx-5">
					<div class="col-lg-9">
						<!-- Post content-->
						<article>
							<!-- Post header-->
							<header class="mb-4">
								<!-- Post title-->
								<h1 class="fw-bolder mb-1"><%//=sdto.getS_name()%></h1>
							</header>
							<!-- 본문 사진 -->
							<figure class="mb-4">
								<img class="img-fluid rounded"	src="upload/<%//=sdto.getS_file()%>" width="900" alt="..." />
							</figure>
						</article>
						<div class="card bg-light">
							<h2 class="fw-bolder mx-3">Review</h2>
							<!-- 리뷰 -->
							<div id="reviewList">
								<div class="card-body">
									<!-- Comment form-->
									<!-- 이용한적있는 게스트 리뷰 가능-->
<!-- 									<div class="row"> -->
<!-- 										<form class="mb-4 col" action="ReviewWritePro.re" method="post" > -->
<%-- 											<input type="hidden" name="s_num" value=<%//=sdto.getS_num() %> > --%>
<!-- 											<select class="btn btn-outline-dark text-center" name="re_point"> -->
<!-- 												<option class="text-center" value="5">★★★★★</option> -->
<!-- 												<option class="text-center" value="4">★★★★☆</option> -->
<!-- 												<option class="text-center" value="3">★★★☆☆</option> -->
<!-- 												<option class="text-center" value="2">★★☆☆☆</option> -->
<!-- 												<option class="text-center" value="1">★☆☆☆☆</option> -->
<!-- 											</select> -->
<!-- 											<input type="submit" class="btn btn-secondary px-4 col-2" value="리뷰 달기" > -->
<!-- 											<textarea class="form-control col-10 mt-2"  name="re_content" rows="3" placeholder="Join the discussion and leave a comment!"></textarea> -->
<!-- 										</form> -->
<!-- 									</div> -->
								<!-- 이용한적있는 게스트 네이버 참고해서 만들기 -->
								<!-- 리뷰 리스트 -->
						<ul class="px-4 pt-0 pb-2 list-unstyled ">
							<li>
								<div class="m-0 border-bottom">
									<div class="ms-3">
										<div class="fw-bold d-flex align-items-center">
											<p class="fst-italic fw-noaml mb-0 ms-3 fw-light fs-6"><%//=redto.getRe_date() %></p>
											<!-- 	본인일 경우 리뷰 삭제하기 기능 -->
											<a class="nav-link" href="ReviewDeletePro.re?s_num=<%//=redto.getS_num() %>&re_num=<%//=redto.getRe_num() %>">삭제하기</a>
										</div>
										<div>
										★★★★★
										</div>
										<div class="p-1"><%//=redto.getRe_content() %></div>
									</div>
									<!-- Host reply -->
									<!--답글 있음 -->
									<div class="ms-3">
										<div class="d-flex mt-3 mb-4 ">
											<div class="ms-3 p-sm-4 bg-dark bg-opacity-25 col-5">
												<div class="fw-bold d-flex align-items-center">
													<%//=hdto.getH_id() %>
													<p class="fst-italic fw-noaml mb-0 ms-3 fw-light fs-6"><%//=redto.getRe_date() %></p>
												</div>
												<%//=redto.getRe_reply() %>
											</div>
										</div>
									</div>
									<!--답글 없음 -->
									<!-- 이 공간의 호스트 -->
										<div class="ms-3">
											<form class="mb-4 col" action="ReviewWritePro.re" method="post" >
											<input type="hidden" name="s_num" value="<%//=sdto.getS_num() %>" >
											<input type="submit" class="btn btn-secondary btn-lg px-4 col-2" value="답글 달기" >
											<textarea class="form-control col-10"  name="re_reply" rows="3" placeholder="Join the discussion and leave a comment!"></textarea>
											</form>
										</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 상세 정보 -->
		<div class="col-lg-3">
			<section class="mb-5 pt-4">
				<h2 class="fw-bolder mb-2 mt-5">평점</h2>
					<p class="fs-1 mb-4"> <%//=re_avg.getRe_avg() %> </p>
						<a class="btn btn-primary btn-lg px-4 me-sm-3" href="BookingInsertForm.bk?s_num=<%//=sdto.getS_num()%>">예약하기</a>
						<!-- 로그인 X 일경우 로그인해주세요 -> 로그인 페이지로 -->
						<!-- 호스트인 경우 호스트 계정으로는 예약하실 수 없습니다 경고창 -->
				<h3 class="fw-bolder mb-2 mt-5">시설 및 옵션</h3>
				<%//=sdto.getS_opt() %>
				<h3 class="fw-bolder mb-2 mt-5">위치</h3>
					<div class="col-lg-12 mb-5">
						<div class="card h-100 border">
							<div class="card-body p-4">
								<p class="card-text mb-0"><%//=sdto.getS_address()%></p>
							</div>
						</div>
					</div>
					<div class="col-lg-12 mb-5">
						<div class="card h-100 border">
							<div class="card-body p-4">
								<h5 class="card-title mb-3">공지사항</h5>
								<p class="card-text mb-0"><%//=sdto.getS_memo()%></p>
							</div>
							<div class="card-footer p-3 bg-light border-top">
								<div class="fw-bold me-sm-3"><%//=hdto.getH_name()%></div>
								<div class="fw-nomal"><%//=hdto.getH_phone()%></div>
							</div>
						</div>
					</div>
					<!-- Qna -->
			</section>
		</div>
	</div>
</div>
</section>
</main>
<!-- Footer-->
	<jsp:include page="../inc/footer.jsp" />
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>
</html>
