import java.sql.*;

public class Main {

    public static void main(String[] args) {

        String[] myArray = new String[] {"fname", "sname"};
        dbQuery(myArray, "SELECT * from customer");



    }

    public static void dbQuery(String[] fields, String myQuery){


        try {
            Class driver = Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/bigBadBank", "root", "password");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(myQuery);


            while(resultSet.next()) {
                for (int i=0; i<fields.length; i++){
                    String fname = resultSet.getString(fields[i]);
                    System.out.println(fname);
                }

            }
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}