<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form action="dangnhapadmin" method="post">
		un <input name="txtun" type="text"> <br>
		pass <input name="txtpass" type="password"> <br>
		<input name="but1" type="submit" value="Login">
		      <%if(request.getParameter("kt")!=null){
		    	  out.print("Dang nhap sai");
		      }
    	  %>
    </form>

</body>
</html>