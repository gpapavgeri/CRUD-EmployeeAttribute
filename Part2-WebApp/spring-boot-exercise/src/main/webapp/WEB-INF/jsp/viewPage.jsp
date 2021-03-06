<%@include file="employeesModal.jsp" %>
<%@include file="attributesModal.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employees</title>

    <!--Bootstrap 4 CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--FontAwesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!--Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/css/employees.css">
    <!--Jquery-->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <!--Bootstrap 4 JS-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <!--Custom JS-->
    <script async src="/js/employees.js"></script>
    <script async src="/js/attributes.js"></script>
</head>

<body>

<div id="content">
    <div class="container mt-4 bg-light border shadow mb-5">
        <p class="h1">Employees</p>

        <table class="table table-hover">
            <thead>
            <tr>
                <th>Name</th>
                <th>Date of Hire</th>
                <th>Supervisor</th>
                <th>Modify</th>
                <th>Remove</th>
                <th>Attributes</th>
            </tr>
            </thead>
            <tbody>
            <tr id="btn-createEmp" data-toggle="modal">
                <td>
                    <i class="fas fa-plus"></i>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <c:forEach items="${allEmployees}" var="employee">
                <tr>
                    <td>
                        <c:out value="${employee.empName}"/>
                    </td>
                    <td>
                        <c:out value="${employee.empDateOfHire}"/>
                    </td>
                    <td>
                        <c:out value="${employee.empSupervisor.empName}"/>
                    </td>
                    <td>
                        <button class="btn-edit btn-warning btn" type="button" data-employeeId="${employee.empId}"
                                data-toggle="modal">Edit
                        </button>
                    </td>
                    <td>
                        <button class="btn-delete btn-danger btn" type="button" data-employeeId="${employee.empId}"
                                data-toggle="modal">Delete
                        </button>
                    </td>
                    <td>
                        <button class="btn-empAttributes btn-success btn" type="button" data-employeeId="${employee.empId}"
                                data-toggle="modal">Attributes
                        </button>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>

    </div>

</div>

</body>

</html>
