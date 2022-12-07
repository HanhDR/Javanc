<%@page import="bean.dangnhapadminbean"%>
<%@page import="bean.khachhangbean"%>

<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="admin">Trang chủ</a></li>
      
      <li><a href="loaiadmin">Quản lý loại</a></li>
      <li><a href="sachadminController">Quản lý sách</a></li>
      <li><a href="xacnhanadmin">Xác nhận</a></li>
      <li><a href="danhsachchuyentien">danh sách chuyển tiền</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li>
      <%if(session.getAttribute("admin")==null){ %>
      <a href="dangnhapadmin">
      <span class="glyphicon glyphicon-log-in"></span>
       Login
       </a>
       <%}else{ %>
       <a href="#">
	      <span class="glyphicon glyphicon-log-in"></span>
	       Hi: <%
	       dangnhapadminbean kh =(dangnhapadminbean)session.getAttribute("admin");
	        out.print(kh.getTenDangNhap());
	       %>
	       </a>
	       <%} %>
       </li>
    </ul>
  </div>
</nav>
 <form action="loaiadmin" method="post">
<table width="1000" align="center" >
			<tr>
			<th>Mã Loại</th>
			<th>Tên Loại</th>
			</tr>
<%				
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("uft-8");
				//loaibo loai = new loaibo();
				ArrayList<loaibean> loai = (ArrayList<loaibean>)request.getAttribute("dsloai");
					for(loaibean l: loai){%>
						<tr style="border: double;"> 
						<td ><%=l.getMaLoai() %></td>
						<td><%=l.getTenLoai() %></td>
						<td> <a href="loaiadmin?ml=<%=l.getMaLoai()%> &remove=1">Xoa </a>
						<input name="sua" type="button" value="sua"> </td>
						</tr>
					<%
					}
				%>	


	  
</table>

</form >
<form action="loaiadmin" method ="get">
	<table>
	 <td><input type="text" name="txtml"></td>
	 <td><input type="text" name="txttl"></td>
	 <td> <input type="submit" name="add" value="add">
	 </td>
	</table>
</form>
</body>
</html>
