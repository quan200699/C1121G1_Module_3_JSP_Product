<%@ page import="java.util.List" %>
<%@ page import="com.codegym.model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%
    List<Product> products = new ArrayList<>();
    products.add(new Product(1, "IPhone 13 Pro Max 512GB", 4000000, "New", "/img/iPhone-13-Pro-Max.jpeg"));
    products.add(new Product(2, "IPhone 13 Pro  512GB", 3250000, "New", "/img/IPhone 13 Pro.jpeg"));
    products.add(new Product(3, "IPhone 13 512GB", 2640000, "New", "/img/IPhone 13.jpeg"));
    pageContext.setAttribute("listProduct", products);
%>
<h1>Danh sách sản phẩm</h1>
<table class="table table-bordered">
    <thead>
    <tr>
        <th scope="col">Mã sản phẩm</th>
        <th scope="col">Tên sản phẩm</th>
        <th scope="col">Giá sản phẩm</th>
        <th scope="col">Mô tả sản phẩm</th>
        <th scope="col">Ảnh sản phẩm</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${listProduct}">
        <tr>
            <th scope="row">${product.id}</th>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td><img src="${product.image}" alt="ảnh sản phẩm" width="150" height="150"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
