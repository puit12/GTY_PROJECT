<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="resources/youtube.css"/>
</head>
<body>

<div id="youtubeWrapper">
    <c:forEach var="youtube" items="${data}">
        <div class="youtubeItem">

            <c:choose>
                <c:when test="${youtube.checkVideoChannel eq 0}">
                    <a href="https://youtu.be/${youtube.videoId}" target="_blank">
                        <div class="youtubeImage">
                            <img src="${youtube.url}"/>
                        </div>

                        <div class="youtubeDetail">
                                ${youtube.title}
                            <br><br>
                            <div class="youtubeDate">${youtube.publishedAt}</div>
                            <br><br>
                            <div class="youtubeDescription">${youtube.description}</div>
                        </div>
                    </a>

                </c:when>
                <c:otherwise>
                    <a href="https://www.youtube.com/channel/${youtube.channelId}"
                       target="_blank">
                        <div class="youtubeImage">
                            <img src="${youtube.url}"/>
                        </div>

                        <div class="youtubeDetail">
                                ${youtube.title}
                            <br><br>
                            <div class="youtubeDate">${youtube.publishedAt}</div>
                            <br><br>
                            <div class="youtubeDescription">${youtube.description}</div>
                        </div>
                    </a>
                </c:otherwise>
            </c:choose>


        </div>
    </c:forEach>
</div>
</body>
</html>
