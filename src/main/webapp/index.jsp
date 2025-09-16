<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>List of albums</h1>

<p>User Email: ${cookie.userEmail.value}</p>

<p>
<a href="download?action=checkUser&amp;productCode=8601">
    Keishi List
</a><br>

<a href="download?action=checkUser&amp;productCode=pf01">
    Ariana Grande
</a><br>

<a href="download?action=checkUser&amp;productCode=pf02">
    Maroon 5
</a><br>

<a href="download?action=checkUser&amp;productCode=jr01">
    The Weekend
</a>
</p>

</body>
</html>