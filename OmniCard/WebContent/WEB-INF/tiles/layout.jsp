<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
<title>
<tiles:getAsString name="title"/></title>
</head>
<body>
<tiles:insertAttribute name="header"/>
<br>
<tiles:insertAttribute name="body"/><br><br><br>

</body>
<tiles:insertAttribute name="footer"/>
</html>