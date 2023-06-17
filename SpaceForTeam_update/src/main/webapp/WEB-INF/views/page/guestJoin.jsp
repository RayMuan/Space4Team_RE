<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="SpaceForTeam join page" />
        <title>SpaceForTeam - search your space !</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	</head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- nav -->
        	<jsp:include page="../inc/top.jsp" />
            <!-- Page content-->
            <section class="py-5">
                <div class="container px-5">
                	<!-- Contact form-->
                	<div class="rounded-3 py-5 px-4 px-md-5 mb-5">
						<div class="text-center mb-5">
							<h1 class="fw-bolder">Space For Team</h1>
						</div>
						<div class="row gx-5 justify-content-center">
							<div class="col-lg-8 col-xl-6">
								<form action="${pageContext.request.contextPath}/joinPro" id="joinForm" method="post">
									<!-- Id input-->
									<div class="input-group gap-md-2">
										<div class="form-floating col">
											<input class="form-control" name="g_id" id="id" type="text" placeholder="아이디"/>
        	                           		<label for="id">아이디</label>
        	                           	</div>
									</div>
									<div id="idFeedback"></div>
									<!-- Pass1 input-->
                            	    <div class="form-floating mt-3">
                         	    	   	<input class="form-control" name="g_pass" id="pass" type="password" placeholder="비밀번호">
                            	    	<label for="pass">비밀번호</label>
                                		<div id="passFeedback"></div>
   		                             </div>
   		                             <!-- Pass2 input-->
   		                             <div class="form-floating mt-3">
   		                             	<input class="form-control" name="g_pass_re" id="pass_re" type="password" placeholder="비밀번호 재확인">
   		                             	<label for="g_pass_re">비밀번호 재확인</label>
   		                             	<div id="passReFeedback"></div>
   		                             </div>
                                	<!-- Name input-->
                                	<div class="form-floating mt-3">
                                		<input class="form-control" name="g_name" id="name" type="text" placeholder="이름">
                                		<label for="name">이름</label>
                                		<div class="invalid-feedback"></div>
                                	</div>
									<!-- Email address input-->
									<div class="form-floating mt-3">
										<input class="form-control" name="g_email" id="email" type="email" placeholder="이메링">
										<label for="email">이메일</label>
<!-- 										<input type="hidden" name="emaildup" value="" id="emaildup"> -->
                        	            <div id="emailFeedback"></div>
									</div>
									<div class="mt-3">
                                		<button type="submit" class="btn-primary btn-lg col" id="joinBtn" name="joinBtn">회원가입</button>
									</div>
                            	</form>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>
		<!-- footer -->
		<jsp:include page="../inc/footer.jsp" />
		<!-- script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/javascript.js"></script>
</body>
</html>
