<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <script type="text/javascript" src="../resources/jquery-3.3.1.min.js"></script>

</head>


<body>
<form action="/search/" method="post">
    <label>검색: </label>
    <input name="name" type="text"><br>
</form>

<input type="button" value="경고창" id="btn"/>
</body>
<div id="result"></div>

<script>
    $("#btn").click(function () {
        $.ajax({
            type:"POST",
            url:"/search/",
            data:{name:"lol"},
            success: function (data) {
                $("#result").html(data);
            },
            error : function(data){
                alert(data);
            }
        });
    });
</script>
</html>
