package itechart.rdbms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class SimpleSQLTest extends TestCase
{
    private final String USER = "root";
    private final String PASSWORD = "Gena121";
    private final String URL = "jdbc:mysql://localhost:3306/students";
    private final String DRIVER = "com.mysql.jdbc.Driver";
	
    public void testApp()
    {
        String sql = "SELECT s.first_name, s.last_name as last, exam_result.result as DATA FROM student s INNER JOIN exam_result ON exam_result.student_id = s.id ";

        Connection connection = null;
        Statement statement = null;
        ResultSet rs = null;
        
        ResultSetMetaData rsm = null;

        System.out.println("Database info");

        try {
            Class.forName(DRIVER);

            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            statement = connection.createStatement();

            rs = statement.executeQuery(sql);
            rsm = rs.getMetaData();

            int colCount = rsm.getColumnCount();
            
            for(int i = 1; i <= colCount; i++) {
                System.out.printf("%s \t\t", rsm.getColumnLabel(i));
            }
            System.out.println("");

            while (rs.next()) {
                for(int i = 1; i <= colCount; i++) {
                	System.out.printf("%s \t\t", rs.getString(i));
                }
                System.out.println("");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if(statement != null) {
                try {
                    statement.close();
                }
                catch (SQLException sqle) { sqle.printStackTrace(); }
            }
            
            if(connection != null) {
            try {
                    connection.close();
                }
                 catch (SQLException sqle) { sqle.printStackTrace(); }
            }
        }
    }

    public SimpleSQLTest( String testName )
    {
        super( testName );
    }

    public static Test suite()
    {
        return new TestSuite( SimpleSQLTest.class );
    }

}
