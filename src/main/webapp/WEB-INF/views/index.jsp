<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>구인구직 홈페이지</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/main2.css' />">
</head>
<body>
    <jsp:include page="header.jsp" />
    
    <div id="wrap">
        <h1>구인구직 홈페이지</h1>
        <!-- 여기에 콘텐츠 추가 -->
        ㅎㅇㅎㅇ
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>