<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.employee.model.Employee" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MATRIX SOLUTIONS | Employee Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>
        * {
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        body {
            margin: 0;
            background: radial-gradient(circle at top, #0f172a, #020617);
            color: #e5e7eb;
            padding: 20px;
        }

        .dashboard-title {
            text-align: center;
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 8px;
            letter-spacing: 1px;
        }

        .subtitle {
            text-align: center;
            color: #94a3b8;
            margin-bottom: 30px;
        }

        .search-box {
            max-width: 900px;
            margin: 0 auto 30px;
        }

        .search-box input {
            width: 100%;
            padding: 14px 20px;
            border-radius: 999px;
            border: none;
            outline: none;
            font-size: 16px;
        }

        .table-container {
            max-width: 1100px;
            margin: auto;
        }

        .table-header {
            display: grid;
            grid-template-columns: 80px 1.5fr 2fr 1.5fr 1.2fr 1.5fr;
            padding: 14px 20px;
            font-weight: 600;
            color: #94a3b8;
        }

        .employee-row {
            display: grid;
            grid-template-columns: 80px 1.5fr 2fr 1.5fr 1.2fr 1.5fr;
            align-items: center;
            background: linear-gradient(145deg, #0b1220, #020617);
            margin-bottom: 16px;
            padding: 18px 20px;
            border-radius: 14px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.6);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .employee-row:hover {
            transform: translateY(-4px);
            box-shadow: 0 30px 60px rgba(0,0,0,0.9);
        }

        .salary-pill {
            background: linear-gradient(135deg, #06b6d4, #3b82f6);
            padding: 8px 16px;
            border-radius: 999px;
            font-weight: 600;
            text-align: center;
            width: fit-content;
            color: #020617;
        }

        .actions a {
            text-decoration: none;
            margin-right: 10px;
            padding: 8px 18px;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .edit-btn {
            color: #22d3ee;
            border: 1px solid #22d3ee;
            background: transparent;
        }

        .edit-btn:hover {
            background: #22d3ee;
            color: #020617;
        }

        .delete-btn {
            color: #fb7185;
            border: 1px solid #fb7185;
            background: transparent;
        }

        .delete-btn:hover {
            background: #fb7185;
            color: #020617;
        }

        .add-btn {
            display: block;
            margin: 50px auto 0;
            padding: 16px 40px;
            border-radius: 999px;
            background: linear-gradient(135deg, #22d3ee, #3b82f6);
            color: #020617;
            font-size: 16px;
            font-weight: 700;
            border: none;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .add-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 20px 40px rgba(34,211,238,0.4);
        }

        @media (max-width: 900px) {
            .table-header,
            .employee-row {
                grid-template-columns: 1fr;
                gap: 10px;
            }
        }
    </style>
</head>

<body>

<h1 class="dashboard-title">EMPLOYEE DASHBOARD</h1>
<p class="subtitle">Enterprise HR Management Platform</p>

<div class="search-box">
    <input type="text" placeholder="Search by name, email, department...">
</div>

<div class="table-container">
    <div class="table-header">
        <div>ID</div>
        <div>Name</div>
        <div>Email</div>
        <div>Department</div>
        <div>Salary</div>
        <div>Actions</div>
    </div>

    <%
        List<Employee> employees = (List<Employee>) request.getAttribute("employees");
        if (employees != null) {
            for (Employee emp : employees) {
    %>
    <div class="employee-row">
        <div>#<%= emp.getId() %></div>
        <div><%= emp.getName() %></div>
        <div><%= emp.getEmail() %></div>
        <div><%= emp.getDepartment() %></div>
        <div class="salary-pill">
            <%= String.format("%,.2f", emp.getSalary()) %> INR
        </div>
        <div class="actions">
            <a href="updateEmployee?id=<%= emp.getId() %>" class="edit-btn">Edit</a>
            <a href="deleteEmployee?id=<%= emp.getId() %>"
               class="delete-btn"
               onclick="return confirm('Are you sure you want to delete this employee?');">
                Delete
            </a>
        </div>
    </div>
    <%
            }
        }
    %>
</div>

<button class="add-btn" onclick="location.href='add-employee.jsp'">
    + Add New Employee
</button>

</body>
</html>
