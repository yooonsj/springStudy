<%--
  Created by IntelliJ IDEA.
  User: CI
  Date: 2016-11-09
  Time: 오후 4:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
    <tiles:insertAttribute name="head"/>
</head>
<body>
    <tiles:insertAttribute name="menu"/>
    <main>
        <tiles:insertAttribute name="body"/>
    </main>
    <tiles:insertAttribute name="footer"/>
</body>
</html>
