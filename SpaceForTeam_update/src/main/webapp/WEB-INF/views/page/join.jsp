<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="SpaceForTeam join page" />
        <title>SpaceForTeam - search your space !</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
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
									<div class="input-group mb-3 gap-md-2">
										<div class="form-floating col">
											<input class="form-control" name="g_id" id="g_id" type="text" placeholder="아이디"/>
        	                           		<label for="userId">아이디</label>
        	                           	</div>
										<div class="my-auto">
											<button class="btn btn-outline-dark btn-lg" id="button1" type="button">중복확인</button>
										</div>
									</div>
									<div class="invalid-feedback"></div>
                            	    <!-- Pass1 input-->
                            	    <div class="form-floating mb-3">
                         	    	   	<input class="form-control" name="g_pass" id="g_pass" type="password" placeholder="Enter your passward...">
                            	    	<label for="pass">비밀번호</label>
                                		<div class="invalid-feedback"></div>
   		                             </div>
   		                             <!-- Pass2 input-->
   		                             <div class="form-floating mb-3">
   		                             	<input class="form-control" name="g_pass_re" id="g_pass_re" type="password" placeholder="Enter your Confirm password...">
   		                             	<label for="g_pass_re">비밀번호 재확인</label>
   		                             	<div class="invalid-feedback" data-sb-feedback="pass:required"></div>
   		                             </div>
                                	<!-- Name input-->
                                	<div class="form-floating mb-3">
                                		<input class="form-control" name="g_name" id="g_name" type="text" placeholder="Enter your name...">
                                		<label for="name">이름</label>
                                		<div class="invalid-feedback" data-sb-feedback="name:required"></div>
                                	</div>
									<!-- Email address input-->
									<div class="form-floating mb-3">
										<input class="form-control" name="g_email" id="g_email" type="email" placeholder="name@example.com">
										<label for="g_email">이메일</label>
<!-- 										<input type="hidden" name="emaildup" value="" id="emaildup"> -->
                        	            <div class="invalid-feedback"></div>
									</div>
                                <!-- Phone number input-->
                                <div class="form-floating mb-3">
                                	<input class="form-control" name="g_phone" id="g_phone" type="tel" placeholder="(123) 456-7890">
                                	<label for="g_phone">핸드폰 번호</label>
                                	<div class="invalid-feedback"></div>
<!--                                 	 data-sb-feedback="phone:required" -->
                                </div>
<!--                                 birth input -->
<!--                                 <div class="form-floating mb-3"> -->
<!--                                 	<input class="form-control" name="user_birth" id="user_birth" type="text" placeholder="1993-01-01" data-sb-validations="required"> -->
<!--                                 	<label for="birth">생년월일</label> -->
<!--                                 	<div class="invalid-feedback" data-sb-feedback="birth:required"></div> -->
<!--                                 </div> -->
<!--                                 <div class="d-none" id="submitSuccessMessage"> -->
<!--                                 	<div class="text-center mb-3"> -->
<!--                                 		<div class="fw-bolder">Form submission successful!</div> -->
<!--                                 	</div> -->
<!--                                 </div> -->
                                <div>
                                <input type="submit" class="btn-primary btn-lg col" id="joinBtn" name="submit" value="회원가입">
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
	<script type="text/javascript" src="script/jquery-3.6.3.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
