<%@ page contentType="text/html" pageEncoding="UTF-8"
	import="java.util.*"%>

<html>
<body>
	<h2 style="color:#00FFFF">欢迎页面</h2>

	<%
		String Login = (String) session.getAttribute("Login");
		if (Login != null && Login.equals("OK")) {
	%>
	<h1 style="color:0000CD">
		登录成功</h1>
	<h2 style="color:#C71585"><%="现在是北京时间："%></h2>
	<script language="javascript">
		document.write(new Date());
	</script>
	<div align="center">
		<h1 style="color: red">请欣赏视频</h1>
	</div>
	<div align="center">
		<video src="image/h.mp4" width="800px" height="600px"
			controls="controls"></video>
	</div>
	<input type=button value="退出" style="color:red"
		onclick="javascript:location.href='handlelogin.jsp'">
	<%
		} else {
	%>
	<jsp:forward page="Hello1.jsp" />
	<%
		}
	%>

</body>
</html>
