<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 12/6/2023
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="/home">Trang Chủ</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="/home">Home <span class="sr-only">(current)</span></a>
                            </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0" action="/blogs?action=seach" method="post">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                                   name="seach">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </div>
                </nav>
            </div>
        </div>
    <div class="row">
        <div class="offset-1"></div>
        <div class="col-11">
            <h1>Blog</h1>
            <button type="button" class="btn btn-light"><a href="/blogs?action=create">Thêm Mới</a></button>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Content</th>
                    <th scope="col">Title</th>
                    <th scope="col">Creat Time</th>
                    <th scope="col">Like Count</th>
                    <th scope="col">Category</th>
                    <th scope="col">User</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <c:forEach items='${danhSachBlog}' var="blogs">
                    <tr>
                        <td>${blogs.id}</td>
                        <td>${blogs.content}</td>
                        <td>${blogs.title}</td>
                        <td>${blogs.createTime}</td>
                        <td>${blogs.likeCount}</td>
                        <td>${blogs.category}</td>
                        <td>${blogs.user}</td>
                        <td>
                            <button type="button" class="btn btn-light"><a
                                    href="/blogs?action=edit&id=${blogs.id}">Sửa</a>
                            </button>
                        </td>
                        <td>
                            <button type="button" class="btn btn-light"><a
                                    href="/blogs?action=delete&id=${blogs.id}">Xóa</a>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <button type="button" class="btn btn-light"><a href="http://localhost:8080/home">Quay Lại</a></button>
        </div>
    </div>
</div>
</body>
</html>
