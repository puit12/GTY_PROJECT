<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" type="text/css" href="/resources/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/slick/slick-theme.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/index.css?ver=1"/>
</head>


<body>
<script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../resources/slick/slick.min.js"></script>
<form id="searchForm">
    <input type="text" id="wordInput"><br>
    <input type="button" value="검색" id="wordInputBtn"/>
</form>

<div class="viewSlide">
    <div id="googleView">
    </div>
    <div id="twitchView">
    </div>
    <div id="youtubeView">
    </div>
</div>
</body>


<script>

    $(document).ready(function () {
        $('.viewSlide').slick({});
    });

    $("#searchForm").on("keydown", function (event) {

        if (event.which == 13) {
            event.preventDefault();
            search();
        }
    })


    $("#wordInputBtn").click(function () {
        search();
    });


    var search = function () {
        var formData = $("#wordInput").val();
        $.ajax({
            type: "POST",
            url: "/google/search/",
            data: {name: formData},
            success: function (data) {
                $("#googleView").html(data);
            },
            error: function (data) {
                alert(data);
            }
        });

        $.ajax({
            type: "POST",
            url: "/youtube/search/",
            data: {name: formData},
            success: function (data) {
                $("#youtubeView").html(data);
            },
            error: function (data) {
                alert(data);
            }
        });

        $.ajax({
            type: "POST",
            url: "/twitch/search/",
            data: {name: formData},
            success: function (data) {
                $("#twitchView").html(data);
            },
            error: function (data) {
                alert(data);
            }
        });
    }
</script>
</html>
