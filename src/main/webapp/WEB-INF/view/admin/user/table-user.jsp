<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Table User</title>
                <!-- Latest compiled and minified CSS-->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Latest compiled JavaScript-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <link href="/css/table-user.css" rel="stylesheet">

            </head>

            <body>

                <div class="container mt-5">
                    <div class="row">
                        <div class="col-12 mx-auto">
                            <div class="d-flex justify-content-between">
                                <h3>Table users</h3>
                                <a href="/admin/user/create" class="btn btn-primary">Create a user</a>
                            </div>

                            <hr />
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th class="col-1">ID</th>
                                        <th class="col-2">Email</th>
                                        <th class="col-3">Full Name</th>
                                        <th class="col-6">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="user" items="${users1}">
                                        <tr>
                                            <td>${user.id}</td>
                                            <td>${user.email}</td>
                                            <td>${user.fullName}</td>
                                            <td>
                                                <div class="mb-2 mt-2">
                                                    <a href="/admin/user/view/${user.id}"
                                                        class="btn btn-warning">View</a>
                                                    <a href="/admin/user/update/${user.id}"
                                                        class=" btn btn-success">Update</a>
                                                    <a href="/admin/user/delete/${user.id}"
                                                        class="btn btn-danger">Delete</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </body>

            </html>