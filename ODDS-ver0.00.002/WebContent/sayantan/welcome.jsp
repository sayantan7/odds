<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="author" content="sayantan" />		
		<link rel="stylesheet" href="../css/default.css">
		<title> O D D S </title>
	</head>
	<body>
		<jsp:include page="header.jsp" />
			<div align="right">
				<ul dir="rtl" type="square">
					<!-- Language setting -->
				    <li>
				        <s:url id="url" action="goto_index_welcome">
				            <s:param name="request_locale">en</s:param>
				        </s:url>
				        <s:a href="%{url}">English</s:a>
				    </li>
				    <li>
				        <s:url id="url" action="home">
				            <s:param name="request_locale">es</s:param>
				        </s:url>
				        <s:a href="%{url}">Espanol</s:a>
				    </li>
				    <li>
				        <s:url id="url" action="home">
				            <s:param name="request_locale">de</s:param>
				        </s:url>
				        <s:a href="%{url}">Deutsch</s:a>
				    </li>
				</ul>
			</div>
		<br/>
		Wannakkam! <s:property value="welcome.welcome.message" /> <br/>
		<!-- giving direct links cant use i18n. should be able to pass through a default action -->
		<a href="login.jsp">Login</a><br>
		<a href="register.jsp">Register</a>
		<jsp:include page="footer.jsp" />
	</body>
</html>