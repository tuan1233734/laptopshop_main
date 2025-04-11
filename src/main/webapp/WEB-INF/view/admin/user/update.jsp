<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Update User ${newUpdate.id}</title>
                <!-- Latest compiled and minified CSS-->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Latest compiled JavaScript-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />

                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage Users</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/user">Users</a></li>
                                    <li class="breadcrumb-item active">Update</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Update User</h3>
                                            <hr />
                                            <form:form method="post" action="/admin/user/update"
                                                modelAttribute="newUpdate">
                                                <div class="mb-3" style="display: none;">
                                                    <label for="exampleInputEmail1" class="form-label">Id</label>
                                                    <form:input type="text" class="form-control" id="exampleInputEmail1"
                                                        aria-describedby="emailHelp" path="id" />
                                                </div>
                                                <div class="mb-3">
                                                    <label for="exampleInputEmail1" class="form-label">Email
                                                        Address</label>
                                                    <form:input type="email" class="form-control"
                                                        id="exampleInputEmail1" aria-describedby="emailHelp"
                                                        path="email" disabled="true" />
                                                </div>
                                                <div class="mb-3">
                                                    <label for="exampleInputPhoneNumber1" class="form-label">Phone
                                                        Number</label>
                                                    <form:input type="text" class="form-control"
                                                        id="exampleInputPhoneNumber1" path="phone" />
                                                </div>
                                                <div class="mb-3">
                                                    <label for="exampleInputFullName1" class="form-label">Full
                                                        Name</label>
                                                    <form:input type="text" class="form-control"
                                                        id="exampleInputFullName1" path="fullName" />
                                                </div>
                                                <div class="mb-3">
                                                    <label for="exampleInputAddress1" class="form-label">Address</label>
                                                    <form:input type="text" class="form-control"
                                                        id="exampleInputAddress1" path="address" />
                                                </div>
                                                <div class="mb-3 form-check">
                                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                    <label class="form-check-label" for="exampleCheck1">Check me
                                                        out</label>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </form:form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/scripts.js"></script>
            </body>

            </html>