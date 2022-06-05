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
			<th>ten loai san pham</th>

		</tr>
		<c:forEach var="tempProduct" items="${cate}">
			<c:url var="deleteLink" value="/choice">
				<c:param name="productId" value="${tempProduct.id }"></c:param>
			</c:url>
			<tr>
				<td>${tempProduct.id}</td>
				<td>${tempProduct.tenLoaiSanPham}</td>
				<td>
					<a href="${deleteLink}">select</a>
				</td>
			</tr>
			
		</c:forEach>
	</table>
</div>

</body>
</html>