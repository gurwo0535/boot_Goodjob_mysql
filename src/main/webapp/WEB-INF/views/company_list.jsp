<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>기업 리스트</title>

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
<style>
    .company-card {
        border: 1px solid #ccc;
        padding: 20px;
        margin: 10px;
        text-align: center;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .company-card:hover {
        background-color: #f0f0f0;
    }
</style>

</head>
<body>
    <div id="wrap">
        <h1 style="text-align: center; color: #007BFF;">기업 리스트</h1>
        <div id="company-list">
            <c:forEach var="company" items="${companyList}">
                <div class="company-card" data-id="${company.corpInfo_No}">
                    <h2>${company.corp_name}</h2>
                    <p>${company.description}</p>
                </div>
            </c:forEach>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>