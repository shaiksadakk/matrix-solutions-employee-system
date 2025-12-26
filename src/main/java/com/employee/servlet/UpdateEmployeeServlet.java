package com.employee.servlet;

import com.employee.dao.EmployeeDAO;
import com.employee.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/updateEmployee")
public class UpdateEmployeeServlet extends HttpServlet {

    private EmployeeDAO dao = new EmployeeDAO();

    // STEP 1: Open edit form with existing data
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        Employee employee = dao.getEmployeeById(id);
        request.setAttribute("employee", employee);

        request.getRequestDispatcher("update-employee.jsp")
                .forward(request, response);
    }

    // STEP 2: Handle update submit
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Employee emp = new Employee();
        emp.setId(Integer.parseInt(request.getParameter("id")));
        emp.setName(request.getParameter("name"));
        emp.setEmail(request.getParameter("email"));
        emp.setDepartment(request.getParameter("department"));
        emp.setSalary(Double.parseDouble(request.getParameter("salary")));

        dao.updateEmployee(emp);

        response.sendRedirect("employees");
    }
}
