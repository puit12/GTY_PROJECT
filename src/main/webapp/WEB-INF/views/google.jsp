
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="../../resources/jquery-3.3.1.min.js"></script>
</head>
<body>
    <gcse:searchresults-only gname="googleS"></gcse:searchresults-only>
</body>


<script>
    $(document).ready(function() {

        (function() {
            var cx = '011238770061073225825:sl_p9d933wo';
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
