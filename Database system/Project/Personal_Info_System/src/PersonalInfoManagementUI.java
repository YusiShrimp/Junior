import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.*;
import javafx.stage.Stage;

import java.util.List;

public class PersonalInfoManagementUI extends Application {

    private TableView<PersonalInfo> table = new TableView<>();
    private ObservableList<PersonalInfo> data = FXCollections.observableArrayList();
    private PersonalInfoDAO dao = new PersonalInfoDAO();

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("Personal Info Management");

        // Set up the table columns
        TableColumn<PersonalInfo, String> nameColumn = new TableColumn<>("Name");
        nameColumn.setCellValueFactory(cellData -> cellData.getValue().nameProperty());

        TableColumn<PersonalInfo, Integer> ageColumn = new TableColumn<>("Age");
        ageColumn.setCellValueFactory(cellData -> cellData.getValue().ageProperty().asObject());

        TableColumn<PersonalInfo, String> genderColumn = new TableColumn<>("Gender");
        genderColumn.setCellValueFactory(cellData -> cellData.getValue().genderProperty());

        TableColumn<PersonalInfo, String> addressColumn = new TableColumn<>("Address");
        addressColumn.setCellValueFactory(cellData -> cellData.getValue().addressProperty());

        table.getColumns().addAll(nameColumn, ageColumn, genderColumn, addressColumn);

        // Load data
        loadData();

        // Add data to table
        table.setItems(data);

        // Set up the form
        TextField nameField = new TextField();
        nameField.setPromptText("Name");

        TextField ageField = new TextField();
        ageField.setPromptText("Age");

        TextField genderField = new TextField();
        genderField.setPromptText("Gender");

        TextField addressField = new TextField();
        addressField.setPromptText("Address");

        Button addButton = new Button("Add");
        addButton.setOnAction(e -> addPerson(nameField, ageField, genderField, addressField));

        Button updateButton = new Button("Update");
        updateButton.setOnAction(e -> updatePerson(nameField, ageField, genderField, addressField));

        Button deleteButton = new Button("Delete");
        deleteButton.setOnAction(e -> deletePerson());

        HBox form = new HBox();
        form.setPadding(new Insets(10, 10, 10, 10));
        form.setSpacing(10);
        form.getChildren().addAll(nameField, ageField, genderField, addressField, addButton, updateButton, deleteButton);

        VBox vbox = new VBox();
        vbox.setSpacing(10);
        vbox.setPadding(new Insets(10, 10, 10, 10));
        vbox.getChildren().addAll(form, table);

        Scene scene = new Scene(vbox);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    private void loadData() {
        data.clear();
        List<PersonalInfo> infos = dao.getAllPersonalInfo();
        data.addAll(infos);
    }

    private void addPerson(TextField nameField, TextField ageField, TextField genderField, TextField addressField) {
        PersonalInfo info = new PersonalInfo();
        info.setName(nameField.getText());
        info.setAge(Integer.parseInt(ageField.getText()));
        info.setGender(genderField.getText());
        info.setAddress(addressField.getText());
        dao.addPersonalInfo(info);
        loadData();
    }

    private void updatePerson(TextField nameField, TextField ageField, TextField genderField, TextField addressField) {
        PersonalInfo selectedInfo = table.getSelectionModel().getSelectedItem();
        if (selectedInfo != null) {
            selectedInfo.setName(nameField.getText());
            selectedInfo.setAge(Integer.parseInt(ageField.getText()));
            selectedInfo.setGender(genderField.getText());
            selectedInfo.setAddress(addressField.getText());
            dao.updatePersonalInfo(selectedInfo);
            loadData();
        }
    }

    private void deletePerson() {
        PersonalInfo selectedInfo = table.getSelectionModel().getSelectedItem();
        if (selectedInfo != null) {
            dao.deletePersonalInfo(selectedInfo.getId());
            loadData();
        }
    }
}
