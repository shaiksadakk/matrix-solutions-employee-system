<%@ page import="com.employee.model.Employee" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<%
    Employee emp = (Employee) request.getAttribute("employee");
%>

<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white text-center">
            <h3>Update Employee</h3>
        </div>

        <div class="card-body">
            <form action="updateEmployee" method="post">

                <input type="hidden" name="id" value="<%= emp.getId() %>">

                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <input type="text" name="name" class="form-control"
                           value="<%= emp.getName() %>" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control"
                           value="<%= emp.getEmail() %>" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Department</label>
                    <input type="text" name="department" class="form-control"
                           value="<%= emp.getDepartment() %>" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Salary</label>
                    <input type="number" name="salary" class="form-control"
                           value="<%= emp.getSalary() %>" required>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary px-5">
                        Update
                    </button>
                    <a href="employees" class="btn btn-secondary px-5">
                        Cancel
                    </a>
                </div>


            </form>
        </div>
    </div>
</div>

</body>
</html>
