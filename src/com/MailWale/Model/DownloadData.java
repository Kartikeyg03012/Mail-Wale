package com.MailWale.Model;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

public class DownloadData {
	public void getDefendants() throws Exception {

		// Workbook readWorkbook = WorkbookFactory.create(new
		// FileInputStream("D:\\test.xls")); -->>For Fixed
		OutputStream os = new FileOutputStream("D:\\Java New\\Mail_Wale\\MailWale.xls");// For Dynamic
		Workbook writeWorkbook = new HSSFWorkbook();
		Sheet desSheet = writeWorkbook.createSheet("new sheet");
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Mail_Wale", "root", "root");

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		Statement stmt = null;
		ResultSet rs = null;
		try {
			String query = "SELECT * FROM ClientRegistation";

			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			ResultSetMetaData rsmd = rs.getMetaData();
			int columnsNumber = rsmd.getColumnCount();

			Row desRow1 = desSheet.createRow(0);
			for (int col = 0; col < columnsNumber; col++) {
				Cell newpath = desRow1.createCell(col);
				newpath.setCellValue(rsmd.getColumnLabel(col + 1));
			}
			while (rs.next()) {
				System.out.println("Row number" + rs.getRow());
				Row desRow = desSheet.createRow(rs.getRow());
				for (int col = 0; col < columnsNumber; col++) {
					Cell newpath = desRow.createCell(col);
					newpath.setCellValue(rs.getString(col + 1));
				}
				FileOutputStream fileOut = new FileOutputStream("D:\\Java New\\Mail_Wale\\MailWale.xls");
				writeWorkbook.write(fileOut);
				fileOut.close();
			}
		} catch (SQLException e) {
			System.out.println("Failed to get data from database");
		}
	}
}