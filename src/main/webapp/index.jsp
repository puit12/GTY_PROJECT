<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" type="text/css" href="resources/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="resources/slick/slick-theme.css"/>
    <link rel="stylesheet" type="text/css" href="resources/index.css"/>
    <script type="text/javascript" src="resources/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="resources/slick/slick.min.js"></script>
</head>

<body>

<form id="searchForm">
    <input type="text" id="wordInput"><br>
    <input type="button" value="검색" id="wordInputBtn"/>
</form>

<div id="listWrapper">
<ul id="contentImage">
    <li id="twitchImageBox">
        <p>T</p>
    </li>
    <div id="twitchContentBox" class="contentBox">
        <div id="twitch-embed"></div>
    </div>

    <li id="youtubeImageBox">
        <p>Y</p>
    </li>
    <div id="youtubeContentBox" class="contentBox">

    </div>
    <li id="googleImageBox">
        <p>G</p>
    </li>
    <div id="googleContentBox" class="contentBox">

    </div>
</ul>
</div>

<!-- Add a placeholder for the Twitch embed -->

<!-- Load the Twitch embed script -->
<script src="https://embed.twitch.tv/embed/v1.js"></script>

<!-- Create a Twitch.Embed object that will render within the "twitch-embed" root element. -->
<script type="text/javascript">
    new Twitch.Embed("twitch-embed", {
        width: 854,
        height: 480,
        channel: "lol_ambition"
    });
</script>
</body>


<script>
    $(document).ready(function () {
        $('#twitchImageBox').click(function () {
            $("#twitchContentBox").slideToggle();
        });
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
            url: "/twitch/search/"+ formData +"/0",
            success: function (data) {
                $("#twitchView").html(data);
                alert(data);

            },
            error: function (data) {
                alert(data);
            }
        });
    }
</script>
</html>