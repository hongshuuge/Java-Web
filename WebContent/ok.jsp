<%@ page contentType="text/html; charset=gbk" import="Jerry.User"%>

<html>
<style type="text/css">
body {
	background-image: url(image/ab.jpg);
	background-size: cover;
}
</style>
<body>

	<h1>
		��¼�ɹ�,<%=session.getAttribute("username")%></h1>
	<h2><%="�����Ǳ���ʱ�䣺"%></h2>
	<script language="javascript">
		document.write(new Date());
	</script>
	<div align="center" >
	<h1 style="color:red">��������Ƶ</h1>
	</div>
	<div align="center">
		<video src="image/h.mp4" width="800px" height="600px"
			controls="controls"></video>
	</div>
</body>
</html>