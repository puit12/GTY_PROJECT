
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

</head>
<body>
    <gcse:searchresults-only gname="googleS"></gcse:searchresults-only>
    <script type="text/javascript" src="resources/jquery-3.3.1.min.js"></script>
</body>


<script>
    $(document).ready(function() {

        (function() {
            var cx = 'code';
            var gcse = document.createElement('script');
            gcse.type = 'text/javascript';
            gcse.async = true;
            gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(gcse, s);
        })();

        setTimeout(function() {
            var element = google.search.cse.element.getElement('googleS');
            element.execute("${data}");
        }, 500);
        console.log("${data}");
    });

</script>
</html>
