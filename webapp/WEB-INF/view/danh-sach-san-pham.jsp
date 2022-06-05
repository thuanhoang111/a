<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div id="container">
	<table>
		<tr>
			<th>id</th>
			<th>ten san pham</th>
			<th>don gia</th>
			<th>loai san pham</th>
		</tr>
		<c:forEach var="tempProduct" items="${products}">
			<c:url var="deleteLink" value="/dsSanPham/delete">
				<c:param name="productId" value="${tempProduct.id }"></c:param>
			</c:url>
			<tr>
				<td>${tempProduct.id}</td>
				<td>${tempProduct.tenSanPham}</td>
				<td>${tempProduct.donGia}</td>
				<td>${tempProduct.loaiSanPham.tenLoaiSanPham}</td>
				<td>
					<a href="${deleteLink}">Delete</a>
				</td>
			</tr>
			
		</c:forEach>
	</table>
</div>

</body>
</html>