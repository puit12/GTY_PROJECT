<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/resources/twitch.css"/>
</head>
<body>
<p id="resultNum" style="font-size:0px;">${dataNum}</p>
<div id="twitchWrapper">
    <c:forEach var="twitch" items="${data}" begin="${pageStart}" end="${pageEnd}">
        <c:if test="${not empty twitch.name}">
        <div class="twitchItem">
            <a href="${twitch.url}" target="_blank">
                <div class="twitchThumbnail">
                    <img src="${twitch.medium}" onerror="this.parentNode.parentNode.style.display='none'"/>
                </div>
                <div class="twitchDetail">
                    <div class="twitchStreamer">
                        <div class="twitchLogo">
                            <img src="${twitch.logo}" onerror="this.parentNode.style.display='none'"/>
                        </div>
                        ${twitch.display_name}
                        ${twitch.followers}
                        <br>
                    </div>
                    <div class="twitchStream">
                        ${twitch.game}
                        <br>
                        ${twitch.status}
                        <br>
                        ${twitch.viewers}
                    </div>
                </div>
            </a>
        </div>
        </c:if>
    </c:forEach>
</div>
</body>
</html>
