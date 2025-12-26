package com.employee.util;

import java.sql.Connection;

public class TestDB {
    public static void main(String[] args) {
        Connection con = DBConnection.getConnection();
        if (con != null) {
            System.out.println("✅ DB Connection Test PASSED");
        } else {
            System.out.println("❌ DB Connection Test FAILED");
        }
    }
}
