
<%--
file: index.jsp
desc: Test installation of Java EE SDK 5
--%>
<html>
<head>
    <title>Hello World - test the Java EE SDK installation
    </title>
</head>
<body>
<%
    for (int i = 1; i < 5; i++)
    {
%>
<h<%=i%>>Hello World</h<%=i%>>
<%
    }
%>
</body>
</html>
