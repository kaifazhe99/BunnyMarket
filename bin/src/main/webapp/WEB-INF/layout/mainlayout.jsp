<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
<title>바니마켓</title>
<meta id="ogTitle" property="og:title" content="바니마켓" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/gsap.min.js"></script>
<script type="text/javascript" src="/js/script.js"></script>
</head>
<body>
	<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
	<div id="wrap">
		<tiles:insertAttribute name="header" />
		<div id="cBody">
			<tiles:insertAttribute name="content" />
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
	<tiles:insertAttribute name="quick" />
	<div class="dimd"></div>
</body>
</html>