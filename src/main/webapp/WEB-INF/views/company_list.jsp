<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>기업 리스트</title>

<!--  company_list.jsp 파일 입니다 -->

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main2.css' />">

<script>
    $(document).ready(function(){
        $('header, nav').hover(function(){
            $('.submenu').stop(true, true).slideDown();
        }, function(){
            $('.submenu').stop(true, true).slideUp();
        });

        // 클릭 이벤트 처리
        $('.company-card').click(function(){
            var companyId = $(this).data('id');
            window.location.href = 'companyDetail.jsp?id=' + companyId;
        });
    });
    </script>


</head>
<body>
    <!-- <c:out value="${companyList}" /> -->
    <c:out value="${list}" />

    <div id="wrap">
        <h1 style="text-align: center; color: #007BFF;">기업 리스트</h1>
        <div id="company-list">
            <c:forEach var="company" items="${list}">
                <div class="company-card" data-id="${company.corpInfo_No}">
                    <h2>${company.corp_name}</h2>
                    <p>${company.corpInfo_intro}</p> <!-- Description was changed to corpInfo_intro based on DTO -->
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="box-container">
        <div class="box">
            <h2 class="box-title">온라인 MD영업</h2>
            <p class="box-description">
                온라인 MD영업 관련 정보와 서비스를 제공합니다. 이 상자는 MD영업의 세부 사항을 설명하고, 관련 링크를 통해 더 많은 정보를 제공합니다.
            </p>
            <a href="#" class="box-button">자세히 보기</a>
        </div>
    </div>


    <%@ include file="footer.jsp" %>
</body>
</html>
