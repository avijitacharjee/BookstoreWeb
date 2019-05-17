package DB;

import java.sql.*;

public class DBConnection {
    private Connection con;
    int i=0;
    public Connection getConnection() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        if(i==0)
        {
            //createTable(con);
        }
        return con;
    }
    private void createTable(Connection con) throws SQLException
    {
        String sql="CREATE TABLE user (name varchar(30),email varchar(30),"
                + "password varchar(20), bdate varchar(20) );";
        Statement st=con.createStatement();
        st.execute(sql);
        System.out.println("Table created");
        i++;
    }
}
