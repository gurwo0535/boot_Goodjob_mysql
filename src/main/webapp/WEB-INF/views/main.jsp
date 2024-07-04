<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>구인구직 홈페이지</title>
<style>
    body {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
    #wrap {
        min-height: 100vh; /* 뷰포트 높이를 기준으로 최소 높이 설정 */
        padding-top: 5rem; /* header 높이만큼 패딩 추가 */
        padding-bottom: 10rem; /* footer 높이만큼 패딩 추가 */
        background: whitesmoke;
    }
    header {
        position: fixed;
        top: 0;
        width: 100%;
        height: 5rem;
        background: lightblue;
        display: flex;
        align-items: center; /* 수직 중앙 정렬 */
        justify-content: space-between; /* 양쪽 정렬 */
        padding: 0 1rem; /* 좌우 패딩 추가 */
        box-sizing: border-box;
        z-index: 1000; /* 헤더를 항상 위에 표시 */
    }
    header img {
        height: 100%;
    }
    .header-content {
        text-align: center; /* 중앙 정렬 */
        flex: 1; /* 남은 공간 차지 */
    }
    .search-container {
        display: flex;
        align-items: center; /* 수직 중앙 정렬 */
    }
    .search-container input[type="text"] {
        padding: 0.5rem;
        font-size: 1rem;
        border: 1px solid #ccc;
        border-radius: 4px;
        margin-right: 0; /* 버튼과의 간격을 제거 */
        flex: 1; /* 입력 필드가 가능한 만큼 넓게 확장하도록 함 */
    }
    .search-container input[type="submit"] {
        padding: 0.5rem 1rem;
        font-size: 1rem;
        border: none;
        border-radius: 4px;
        background-color: #007BFF;
        color: white;
        cursor: pointer;
        margin-left: 0; /* 버튼과 입력 필드 간의 간격을 제거 */
    }
    .search-container input[type="submit"]:hover {
        background-color: #0056b3;
    }
    footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    height: 10rem;
    background: gray;
    display: flex; /* Flexbox를 사용하여 배치 */
    align-items: center; /* 수직 중앙 정렬 */
    justify-content: space-between; /* 좌우 간격 조절 */
    padding: 0 1rem; /* 좌우 패딩 추가 */
    box-sizing: border-box;
    z-index: 1000; /* 푸터를 항상 위에 표시 */
    overflow: hidden; /* 푸터 영역을 벗어나는 내용을 숨김 */
}

.footer-content {
    display: flex;
    flex-direction: column; /* 세로 방향으로 배치 */
    justify-content: center; /* 세로 중앙 정렬 */
    text-align: center; /* 중앙 정렬 */
    margin-left: auto; /* 이미지를 왼쪽에 붙이기 위해 사용 */
    flex: 1; /* 남은 공간을 차지하도록 설정 */
    overflow: hidden; /* 내용이 영역을 벗어나지 않도록 숨김 */
}

.footer-content p {
    margin: 1px 0; /* 좌우 마진을 0으로 설정 */
    word-break: break-word; /* 긴 단어가 영역을 벗어나지 않도록 줄바꿈 */
}

.footer-content a {
    color: #0066cc;
    text-decoration: none;
}

.footer-content a:hover {
    text-decoration: underline;
}

.footer-content .email {
    margin-top: 10px;
}

.footer-images {
    display: flex;
    align-items: center; /* 수직 중앙 정렬 */
}

.footer-images img {
    height: 60%; /* 이미지 높이 조정 */
}
</style>
</head>
<body>
    <header>
        <img src="<c:url value='/img/logo.png' />" alt="Logo" onclick="">
        <div class="header-content">
            Good job
        </div>
        <div class="search-container">
            <form action="/search" method="get">
                <input type="text" name="query" placeholder="굿 잡 굿 잡 굿 잡 맨 ">
                <input type="submit" value=" ">
            </form>
        </div>
        <label id="mouse-over-label">Mouse Over Me!</label>
        <ul class="menubars">
            <li>메뉴</li>
            <li>메뉴</li>
            <li>메뉴</li>
            <li>메뉴</li>
        </ul>  
    </header>
    <div id="wrap">
        <h1>구인구직 홈페이지</h1>
        <!-- 여기에 콘텐츠 추가 -->
    </div>
    <footer>
        <!-- <img src="./resources/img/abc.png" alt="abc"> -->
        <div class="footer-images">
            <img src="<c:url value='/static/img/abc.png' />" alt="abc">
        </div>
        <div class="footer-content">
            Member
            <p>
                <a href="https://www.notion.so/640668240d804de19cda6b6ad9e82f1a" target="_blank">차혜영</a> gpdud4094@gmail.com
            </p>
            <p>
                <a href="https://www.notion.so/Springboot-SW-8525fd2c3cd545939f645a7b6c03cca6" target="_blank">최민중</a> choimin0915@naver.com
            </p>
            <p>
                <a href="https://www.notion.so/naseongyeop" target="_blank">나성엽</a> fgghk132@naver.com
            </p>
            <p>
                <a href="https://www.notion.so/seoyoungsoo" target="_blank">서영수</a> tjdudtn7879@naver.com
            </p>
            <p>
                <a href="https://www.notion.so/seominjeong" target="_blank">서민정</a> minjung2209@naver.com
            </p>
        </div>
    </footer>
</body>
</html>