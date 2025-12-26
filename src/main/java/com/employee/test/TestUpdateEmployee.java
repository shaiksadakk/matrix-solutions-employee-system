package com.employee.test;

import com.employee.dao.EmployeeDAO;
import com.employee.model.Employee;

public class TestUpdateEmployee {

    public static void main(String[] args) {

        Employee emp = new Employee();
        emp.setId(1);              // 👈 existing ID in DB
        emp.setDepartment("HR");
        emp.setSalary(55000);

        EmployeeDAO dao = new EmployeeDAO();

        if (dao.updateEmployee(emp)) {
            System.out.println("✅ Employee updated successfully");
        } else {
            System.out.println("❌ Update failed");
        }
    }
}
