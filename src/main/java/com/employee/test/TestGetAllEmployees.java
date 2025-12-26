package com.employee.test;

import com.employee.dao.EmployeeDAO;
import com.employee.model.Employee;

import java.util.List;

public class TestGetAllEmployees {

    public static void main(String[] args) {

        EmployeeDAO dao = new EmployeeDAO();

        List<Employee> employees = dao.getAllEmployees();

        if (employees.isEmpty()) {
            System.out.println("❌ No employees found");
        } else {
            System.out.println("✅ Employee List:");
            for (Employee emp : employees) {
                System.out.println(
                        emp.getId() + " | " +
                                emp.getName() + " | " +
                                emp.getEmail() + " | " +
                                emp.getDepartment() + " | " +
                                emp.getSalary()
                );
            }
        }
    }
}
