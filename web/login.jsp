<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
    <div class="container mt-3">
        <div class="row">
            <div class="col-6 mx-auto">
                <%
                    String error = request.getParameter("error");
                    if(error!=null){
                %>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        Incorrect email or password!
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <%
                    }
                %>
                <form action="/login" method="post">
                    <div class="row">
                        <div class="col-12">
                            <label>EMAIL : </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="email" class="form-control" name="email" required placeholder="Insert Email">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>PASSWORD : </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="password" class="form-control" name="password" required placeholder="Insert Password">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <button class="btn btn-success">SIGN IN</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
