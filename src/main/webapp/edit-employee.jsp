<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.employee.model.Employee" %>

<%
    Employee emp = (Employee) request.getAttribute("employee");
%>

<html>
<head>
    <title>Edit Employee</title>
</head>
<body>

<h2>Edit Employee</h2>

<form action="updateEmployee" method="post">
    <input type="hidden" name="id" value="<%= emp.getId() %>">

    Name: <input type="text" name="name" value="<%= emp.getName() %>" required><br><br>
    Email: <input type="email" name="email" value="<%= emp.getEmail() %>" required><br><br>
    Department: <input type="text" name="department" value="<%= emp.getDepartment() %>" required><br><br>
    Salary: <input type="number" step="0.01" name="salary" value="<%= emp.getSalary() %>" required><br><br>

    <button type="submit">Update</button>
</form>

</body>
</html>
