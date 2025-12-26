<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: radial-gradient(circle at top, #141414, #000);
            color: #eaeaea;
            min-height: 100vh;
        }

        .navbar {
            background: linear-gradient(90deg, #000, #111);
            box-shadow: 0 10px 40px rgba(0,0,0,0.8);
        }

        .lux-form {
            background: rgba(255,255,255,0.06);
            backdrop-filter: blur(16px);
            border-radius: 20px;
            box-shadow: 0 30px 80px rgba(0,0,0,0.8);
            padding: 40px;
            max-width: 520px;
            margin: auto;
        }

        .form-control {
            background: rgba(0,0,0,0.6);
            border: 1px solid rgba(255,255,255,0.15);
            color: #fff;
            border-radius: 14px;
            padding: 12px;
        }

        .form-control:focus {
            border-color: #4facfe;
            box-shadow: 0 0 18px rgba(79,172,254,0.5);
            background: rgba(0,0,0,0.7);
            color: #fff;
        }

        .btn-lux {
            background: linear-gradient(135deg, #00f2fe, #4facfe);
            color: #000;
            font-weight: 700;
            border-radius: 30px;
            padding: 12px;
            border: none;
            width: 100%;
        }

        .btn-lux:hover {
            box-shadow: 0 0 30px rgba(79,172,254,0.8);
            transform: translateY(-2px);
        }
    </style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand fw-bold" href="employees">⚡ EMPLOYEE SYSTEM</a>
    </div>
</nav>

<div class="container mt-5">
    <div class="lux-form">
        <h2 class="text-center fw-bold mb-4">ADD NEW EMPLOYEE</h2>

        <form action="addEmployee" method="post">
            <input type="text" name="name" class="form-control mb-3" placeholder="Employee Name" required>
            <input type="email" name="email" class="form-control mb-3" placeholder="Email Address" required>
            <input type="text" name="department" class="form-control mb-3" placeholder="Department" required>
            <input type="number" name="salary" class="form-control mb-4" placeholder="Salary" required>

            <button type="submit" class="btn-lux">🚀 Add Employee</button>
        </form>
    </div>
</div>

</body>
</html>
