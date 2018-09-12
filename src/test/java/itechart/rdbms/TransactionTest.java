package itechart.rdbms;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

import java.sql.*;

public class TransactionTest  extends TestCase  {

    private final String USER = "root";
    private final String PASSWORD = "Gena121";
    private final String URL = "jdbc:mysql://localhost:3306/students";
    private final String DRIVER = "com.mysql.jdbc.Driver";

    public void testApp()
    {
        String sql = "INSERT INTO training_course (name, teacher_id) VALUES (?, ?) ";

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;

        try {
            Class.forName(DRIVER);

            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            connection.setAutoCommit(false);

            selectTrainingCourses(connection);

            statement = connection.prepareStatement(sql);
            statement.setString(1, "History3");
            statement.setInt(2, 1);

            statement.executeUpdate();

            selectTrainingCourses(connection);

            connection.rollback();

            selectTrainingCourses(connection);

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

    private void selectTrainingCourses(Connection connection) throws SQLException {
        String sql = "SELECT * FROM training_course";

        Statement statement = null;
        ResultSet rs = null;

        System.out.printf("\n\n");

        try {
            statement = connection.createStatement();

            rs = statement.executeQuery(sql);

            while (rs.next()) {
                for(int i = 1; i <= 2; i++) {
                    System.out.printf("%s \t\t", rs.getString(i));
                }
                System.out.println("");
            }
        } finally {
            if(statement != null) {
                try {
                    statement.close();
                }
                catch (SQLException sqle) { sqle.printStackTrace(); }
            }
        }
    }

    public TransactionTest( String testName )
    {
        super( testName );
    }

    public static Test suite()
    {
        return new TestSuite( SimpleSQLTest.class );
    }
}
