<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>TYG</title>
    <link rel="stylesheet" type="text/css" href="/resources/index.css?ver"/>
</head>

<body>

<form id="searchForm">
    <input type="text" id="wordInput"><br>
    <input type="button" value="검색" id="wordInputBtn"/>
</form>

<div id="listWrapper">
    <ul id="contentImage">
        <li id="twitchImageBox">
            <p id="twitchP">T</p>
        </li>
        <div id="twitchContentBox" class="contentBox">
            <div id="twitchStreamListBox">
                <dl id="twitchStreamList">

                </dl>
            </div>

            <div id="twitch-embed-wrapper">
                <div id="twitch-embed"></div>
                <div id="twitchStreamDescription">
                </div>
            </div>
        </div>

        <li id="youtubeImageBox">
            <p id="youtubeP">Y</p>
        </li>
        <div id="youtubeContentBox" class="contentBox">
            <div id="youtubeVideoList">

            </div>
            <div id="youtube-video-wrapper">
                <div id="youtube-video"></div>
                <div id="youtubeVideoDescription">

                </div>
            </div>
        </div>
        <li id="googleImageBox">
            <p id="googleP">G</p>
        </li>
        <div id="googleContentBox" class="contentBox">

        </div>
    </ul>
</div>

<!-- Load the Twitch embed script -->
<script src="https://embed.twitch.tv/embed/v1.js"></script>
<script type="text/javascript" src="/resources/jquery-3.3.1.min.js"></script>
</body>


<script>

    $(document).ready(function () {

    });

    $(document).on("click", '#twitchImageBox', function () {
        $("#twitchContentBox").slideToggle(function () {
            if($("#twitchContentBox").css("display") == "none"){
                $("dt").remove();
                $("dd").remove();
            }
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
            },
            error: function (data) {
                alert(data);
            }
        });

        $("dt").remove();
        $("dd").remove();
        $.ajax({
            type: "POST",
            url: "/twitch/search/" + formData + "/0",
            dataType: "json",
            success: function (data) {
                for (var i = 0; i < data.twitch.length; i++) {
                    var preview = '<dt id="preview' + i + '" class="previewLink">' + "<img src=" + '"' + data.twitch[i].medium + '"' + ">" + "</dt>";
                    var logo = '<div class="logo">' + "<img src=" + '"' + data.twitch[i].logo + '"' + ">" + "</div>";
                    var viewer = "Viewers: " + data.twitch[i].viewers + "<br>";
                    var streamer = "Streamer: " + data.twitch[i].display_name + "<br>";
                    var followers = "Followers: " + data.twitch[i].followers + "<br>";

                    var des = "<dd>" + logo + '<div class="streamDes">' + viewer + streamer + followers;


                    $("#twitchStreamList").append(preview);

                    $("#twitchStreamList").append(des);

                    $("#preview" + i.toString()).attr('data-url', data.twitch[i].name);

                }

            },
            error: function (data) {
                alert(data);
            }
        });
    }
    var twitchView = new Twitch.Embed("twitch-embed", {
        width: 500,
        height: 300,
        channel: "lol_ambition"
    });

    $(document).on("click", ".previewLink", function () {
        var player = twitchView.getPlayer();
        player.setChannel($(this).attr("data-url"));
    });



</script>
</html>
