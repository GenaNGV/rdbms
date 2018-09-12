package itechart.rdbms;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

import java.sql.*;

public class PreparedStatementTest  extends TestCase {
    private final String USER = "root";
    private final String PASSWORD = "Gena121";
    private final String URL = "jdbc:mysql://localhost:3306/students";
    private final String DRIVER = "com.mysql.jdbc.Driver";

    public void testApp() {
        String sql = "SELECT first_name, last_name FROM student WHERE first_name=? ";

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;

        try {
            Class.forName(DRIVER);

            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            statement = connection.prepareStatement(sql);
            statement.setString(1, "Dasha");

            rs = statement.executeQuery();

            while (rs.next()) {
                for (int i = 1; i <= 2; i++) {
                    System.out.printf("%s \t\t", rs.getString(i));
                }
                System.out.println("");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException sqle) {
                    sqle.printStackTrace();
                }
            }

            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException sqle) {
                    sqle.printStackTrace();
                }
            }
        }

    }

    public PreparedStatementTest( String testName )
    {
        super( testName );
    }

    public static Test suite()
    {
        return new TestSuite( SimpleSQLTest.class );
    }

}
