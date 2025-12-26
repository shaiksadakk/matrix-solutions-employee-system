package com.employee.dao;

import com.employee.model.Employee;

public class TestEmployeeInsert {

    public static void main(String[] args) {

        Employee emp = new Employee();
        emp.setName("Sadak");
        emp.setEmail("sadak@gmail.com");
        emp.setDepartment("IT");
        emp.setSalary(45000);

        EmployeeDAO dao = new EmployeeDAO();

        boolean result = dao.addEmployee(emp);

        if (result) {
            System.out.println("✅ Employee inserted successfully");
        } else {
            System.out.println("❌ Employee insertion failed");
        }
    }
}
