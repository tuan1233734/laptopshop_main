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

                <link href="/css/create.css" rel="stylesheet">

            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h3>Update User</h3>
                            <hr />
                            <form:form method="post" action="/admin/user/update" modelAttribute="newUpdate">
                                <div class="mb-3" style="display: none;">
                                    <label for="exampleInputEmail1" class="form-label">Id</label>
                                    <form:input type="text" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" path="id" />
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email Address</label>
                                    <form:input type="email" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" path="email" disabled="true" />
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPhoneNumber1" class="form-label">Phone Number</label>
                                    <form:input type="text" class="form-control" id="exampleInputPhoneNumber1"
                                        path="phone" />
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputFullName1" class="form-label">Full Name</label>
                                    <form:input type="text" class="form-control" id="exampleInputFullName1"
                                        path="fullName" />
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputAddress1" class="form-label">Address</label>
                                    <form:input type="text" class="form-control" id="exampleInputAddress1"
                                        path="address" />
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form:form>

                        </div>
                    </div>
                </div>
            </body>

            </html>