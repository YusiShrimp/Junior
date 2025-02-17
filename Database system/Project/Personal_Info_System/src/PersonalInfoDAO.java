import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PersonalInfoDAO {

    public void addPersonalInfo(PersonalInfo info) {
        String sql = "INSERT INTO PersonalInfo (name, age, gender, address) VALUES (?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, info.getName());
            statement.setInt(2, info.getAge());
            statement.setString(3, info.getGender());
            statement.setString(4, info.getAddress());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<PersonalInfo> getAllPersonalInfo() {
        List<PersonalInfo> personalInfos = new ArrayList<>();
        String sql = "SELECT * FROM PersonalInfo";

        try (Connection connection = DBConnection.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            while (resultSet.next()) {
                PersonalInfo info = new PersonalInfo();
                info.setId(resultSet.getInt("id"));
                info.setName(resultSet.getString("name"));
                info.setAge(resultSet.getInt("age"));
                info.setGender(resultSet.getString("gender"));
                info.setAddress(resultSet.getString("address"));

                personalInfos.add(info);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return personalInfos;
    }

    public void updatePersonalInfo(PersonalInfo info) {
        String sql = "UPDATE PersonalInfo SET name = ?, age = ?, gender = ?, address = ? WHERE id = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, info.getName());
            statement.setInt(2, info.getAge());
            statement.setString(3, info.getGender());
            statement.setString(4, info.getAddress());
            statement.setInt(5, info.getId());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deletePersonalInfo(int id) {
        String sql = "DELETE FROM PersonalInfo WHERE id = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
