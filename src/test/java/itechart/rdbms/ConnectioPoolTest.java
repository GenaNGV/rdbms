package itechart.rdbms;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;
import java.util.Properties;

/**
 * Created by gennady.novik on 3/22/2017.
 */
public class ConnectioPoolTest extends TestCase {

    public void testApp2() {

        Context initCtx;
        try {
            initCtx = new InitialContext();

            Context envCtx = (Context) initCtx.lookup("java:comp/env");

            DataSource dataSource = (DataSource) envCtx.lookup("jdbc/studentsDB");

            Connection connection = dataSource.getConnection();

        } catch (Throwable e) {
            e.printStackTrace();
        }
    }

    public ConnectioPoolTest(String testName) {
        super(testName);
    }

    public static Test suite() {
        return new TestSuite(ConnectioPoolTest.class);
    }


}
