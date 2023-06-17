<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="SpaceForTeam main page" />
        <meta name="author" content="" />
        <title>SpaceForTeam - search your space !</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>
        <link href="resources/css/styles.css" rel="stylesheet" />
	</head>
<body class="d-flex flex-column h-100">
	<main class="flex-shrink-0">
		<!-- nav -->
		<jsp:include page="../inc/top.jsp" />
		<!-- Header-->
		<header class="bg-dark py-5">
			<div class="container px-4 px-lg-5 my-4">
				<div class="text-center text-white">
					<h1 class="display-4 fw-bolder">Space For Team</h1>
					<!-- 검색창 -->
					<div class="my-4">
						<div class="col">
							<form method="post" name="searchform" id="searchform" action="MainPro.sp" onsubmit="return checkIt()">
								<table class="m-auto col-7">
									<tr>
										<td class="col-2"><input type="text" class="form-control" placeholder="지역" name="s_sido"></td>					
										<td><input type="text" class="form-control" placeholder="공간명으로 찾아보세요" name="search"></td>
										<td><button type="submit" value="search"  name="searchbutton" id="searchbutton" class="form-control" >검색</button></td>
									</tr>
							</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- space list -->
		<section class="py-5">
                <div class="container px-5 my-5"> 
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <div class="text-center">
                                <h2 class="fw-bolder">BEST SPACE</h2>
                                <p class="lead fw-normal text-muted mb-5">평점 높은 공간을 준비했어요!</p>
							</div>                        
                    	</div>   
                    	<div class="row gx-5">        
            			<!-- 공간프리뷰 1	 -->
							<div class="col-lg-4 mb-5">
    							<div class="card h-100 shadow border-0" style="cursor: pointer;" onclick="location.href='${pageContext.request.contextPath}/spaceInfo'">
 									<img src="upload/<% //=dto.getS_file()%>" >
 									<div class="card-body p-4">
            							<div class="badge bg-primary bg-gradient rounded-pill mb-2"><% //=dto.getS_num() %></div>
            							<div class="text-decoration-none link-dark stretched-link" style="cursor: pointer;" onclick="location.href='SpaceInfoPro.sp?s_num=<%//=dto.getS_num()%>'" >
            								<h5 class="card-title mb-3"><%//=dto.getS_name() %></h5>
            							</div>
            	 						<p class="card-text mb-0"><%//=dto.getS_memo() %></p>
        							</div>
        							<div class="card-footer p-4 pt-0 bg-transparent border-top-0">
            							<div class="d-flex align-items-end justify-content-between">                    
											<div class="d-flex align-items-center" style="font-weight: bold; font-size: 15px;">
												<%//=dto.getS_bill() %> 원
											</div>
											<div class="small">
                                   				<div class="text-muted">
                                   					<div class="fw-bold">
                                   						<i class="fa-solid fa-map-location-dot"> <%//=dto.getS_sido() %></i> |
                                   						<i class="fa-solid fa-user fa-sm"> 최대 <%//=dto.getS_max() %></i>
                                   					</div>
                             					</div> 
                           					</div>
                       					</div>
         								<input type="button" name="detail" value="상세페이지" onclick="location.href='SpaceInfoPro.sp?num<%//=dto.getS_num()%>'">
         								<input type="button" name="write" value="예약하기" onclick="location.href='BookingInsertForm.bk?s_num=<%//=dto.getS_num()%>'">
         							</div>
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
