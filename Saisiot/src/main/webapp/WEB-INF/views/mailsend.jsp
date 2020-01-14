<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 인증 코드 발송</title>
</head>
<link rel="stylesheet" href="resources/css/mailsend.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="resources/js/mail_send.js"></script>
<body>
	<div id="left_wrapper1">
	<div id="left_wrapper2">
	<div id="left_wrapper3">
	<div id="left_wrapper4">
	<div id="left_wrapper5_1">
		<div>
			<input type="text" class="texts" id="yourmail"/>
			<input type="button" class="btns" value="이메일 중복 체크" onclick="mailchk();"/>
			<input type="hidden" readonly="readonly" id="randomcode"/>
		</div>
		<div>
			<input type="text" class="texts" id="numberchk"/>
			<input type="button" class="btns" value="인증 코드 확인" onclick="numberchk();"/>
		</div>
	</div>
	<!-- left_wrapper5 end -->
	</div>
	<!-- left_wrapper4 end(white box) -->
	</div>
	<!-- left_wrapper3 end(gray box) -->
	</div>
	<!-- left_wrapper2 end(dashed box) -->
	</div>
	<!-- left_wrapper1 end(blue box) -->


</body>
</html>