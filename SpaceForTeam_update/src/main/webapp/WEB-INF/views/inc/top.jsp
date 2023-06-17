<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container px-5">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/main">SpaceForTeam</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/main">Home</a></li>
				<c:if test="${empty sessionScope.id }">
					<li class="nav-item dropdown" id="navDropdown">
						<a class="nav-link dropdown-toggle" href="#">Join</a>
						<ul class="dropdown-menu dropdown-menu-end" id="navDropdownMenu">
							<li>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/guestJoin">Guest Join</a>
							</li>
							<li>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/hostJoin">Host Join</a>
							</li>
						</ul>
					</li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
					</li>
				</c:if>
				<c:if test="${! empty sessionScope.id}">
					<li class="nav-item"><a class="nav-link">${sessionScope.id}님</a></li>
					<li class="nav-item"><a class="nav-link" href="UserLogout.us">Logout</a></li>
					<li class="nav-item"><a class="nav-link" href="UserMypage.us">Mypage</a></li>
				</c:if>
				<li class="nav-item"><a class="nav-link" href="#">Notice</a></li>
<!-- 				<li class="nav-item dropdown"><a -->
<!-- 					class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" -->
<!-- 					role="button" data-bs-toggle="dropdown" aria-expanded="false">Community</a> -->
<!-- 					<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog"> -->
<!-- 						<li>
								<a class="dropdown-item" href="NoticeList.no">Notice</a> -->
<!-- 						</li> -->
<!-- 					</ul> -->
<!-- 				</li> -->
			</ul>
		</div>
	</div>
</nav>