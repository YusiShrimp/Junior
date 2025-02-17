import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/PersonalInfoDB"; // Change to your database address
    private static final String USER = "root"; // Change to your database username
    private static final String PASSWORD = "12345"; // Change to your database password

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
