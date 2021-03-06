<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>001 任意目录读取 - 2</title>
</head>
<body>
<h1>001 - 使用 File.listFiles 遍历目录（无路径拼接）</h1>
<%
    String url = new String(request.getRequestURL());
    String baseUrl = url.substring(0, url.lastIndexOf("/"));
    String normal_querystring = "/directory?dirname=reports";
    String linux_querystring = "/directory?dirname=/var/log/";
    String windows_querystring = "/directory?dirname=c:/";
%>
<p>正常调用: </p>
<p>curl '<a href="<%=baseUrl+normal_querystring%>" target="_blank"><%=baseUrl + normal_querystring%>
</a>'</p>

<p>不正常调用 - Linux: </p>
<p>curl '<a href="<%=baseUrl+linux_querystring%>" target="_blank"><%=baseUrl + linux_querystring%>
</a>'</p>

<p>不正常调用 - Windows: </p>
<p>curl '<a href="<%=baseUrl+windows_querystring%>" target="_blank"><%=baseUrl + windows_querystring%>
</a>'</p>
</body>
</html>
