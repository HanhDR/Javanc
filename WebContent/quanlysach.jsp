<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table style="align-items: center ;display: flex; justify-content: center;"  > 
	<%
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("uft-8");
				//loaibo loai = new loaibo();
				%>
	
		<form>
		<tr>
		<td>Ma Loai:  </td>
		<td><input name="ml" type="text"> </td>
		 </tr>
		<tr>
		<td>Ten sach:  </td>
		<td><input name="ts" type="text"> </td>
		 </tr>
		 <tr>
		<td>Tac gia:  </td>
		<td><input name="tg" type="text"> </td>
		 </tr>
		 <tr>
		<td>Gia:  </td>
		<td><input name="gia" type="text"> </td>
		 </tr>
		 <tr>
		<td>So Luong:  </td>
		<td><input name="sl" type="text"> </td>
		 </tr>
		 <tr>
		<td>Ngay Nhap:  </td>
		<td><input name="ngay" type="Date"> </td>
		 </tr>
		 <tr>
		<td>Anh:  </td>
		<td><input name="anh" type="file"> </td>
		 </tr>
		<td>So Tap:  </td>
		<td><input name="sotap" type="text"> </td>
		 </tr>
		<tr> <td>Ma loai: </td>
			<td>
			<select> 
		<%	ArrayList<loaibean> loai = (ArrayList<loaibean>)request.getAttribute("dsloai");
		for(loaibean l: loai){%>
		<option><%=l.getTenLoai() %></option>
		<% } %>
			</select> 
			</td>
		 </tr>
				<tr>	
			<td><input name="add" type="button"value ="Add"> 
			<input name="save" type="button"value ="Save"> 
				</td></tr>
 	</form> 
 
	</table>
</body>
</html>