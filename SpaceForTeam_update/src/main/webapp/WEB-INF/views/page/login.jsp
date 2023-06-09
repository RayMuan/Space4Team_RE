<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="SpaceForTeam Login Page" />
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
                            	<form action="${pageContext.request.contextPath}/loginPro" method="post" id="loginForm">
									<div class="form-floating mb-3">
                                        <input class="form-control bg-light " id="h_id" name="h_id" type="text"/>
                                        <label for="id">id</label>
                                        <div class="invalid-feedback">An id is required.</div>
                                    </div>
                                    <!-- Password input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control bg-light" id="h_pass" name="h_pass" type="password" placeholder="비밀번호"/>
                                        <label for="name">Password</label>
                                        <div class="invalid-feedback">A password is required.</div>
                                    </div>
                                    <div class="memory_box">
                                    	<p>
                                    		<input id="memory" type="checkbox">
                                    		<label for="memory">아이디 저장</label>
                                    	</p>
                                    </div>
                                    <!-- Submit Button-->
                                    <div class="d-grid">
                                    	<button class="btn btn-primary btn-lg" id="loginBtn" type="submit">로그인</button>
                                    </div>
                      			</form>
                      			<div class="my-2">
                      				<p class="figure">Space For Team의 회원이 아니신가요?</p>
                                    <a href="${pageContext.request.contextPath}/guestJoin" class="mx-2 figure">회원가입</a>
                      			</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- footer -->
        <jsp:include page="../inc/footer.jsp" />
		<!-- script -->
        <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/javascript.js"></script>
	</body>
</html>
