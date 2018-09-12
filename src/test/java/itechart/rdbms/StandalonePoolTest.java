package itechart.rdbms;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import org.apache.tomcat.jdbc.pool.DataSource;

import java.sql.*;

/**
 * Created by gennady.novik on 3/23/2017.
 */
public class StandalonePoolTest extends TestCase {

    public void testApp3() throws SQLException {
        DataSource ds = new DataSource();
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/students");
        ds.setUsername("root");
        ds.setPassword("Gena121");
        ds.setInitialSize(5);
        ds.setMaxActive(10);
        ds.setMaxIdle(5);
        ds.setMinIdle(2);

        Connection connection = ds.getConnection();

        Statement statement = connection.createStatement();

        String sql = "SELECT s.first_name, s.last_name as last, exam_result.result as DATA FROM student s INNER JOIN exam_result ON exam_result.student_id = s.id ";

        ResultSet rs = statement.executeQuery(sql);

        ResultSetMetaData rsm = rs.getMetaData();

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

        rs.close();
        statement.close();
        connection.close();


    }

    public StandalonePoolTest( String testName )
    {
        super( testName );
    }

    public static Test suite()
    {
        return new TestSuite( StandalonePoolTest.class );
    }
}
