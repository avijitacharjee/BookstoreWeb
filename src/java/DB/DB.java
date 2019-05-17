package DB;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Avijit
 */
public class DB {

    public void insert(String name, String email, String pass) throws ClassNotFoundException, SQLException
    {
        DBConnection db = new DBConnection();
        Connection con = db.getConnection();

        String sql = "INSERT INTO userr (name,email,pass) VALUES('"+name+"','" + email + "','" + pass +"')";

        Statement st = con.createStatement();
        st.execute(sql);
    }
    
    public boolean checkAdmin(String email,String password)throws ClassNotFoundException, SQLException
    {
        DBConnection db = new DBConnection();
        Connection con = db.getConnection();

        String sql = "SELECT * FROM admin WHERE email='"+email+"' AND pass ='"+password+"'";

        Statement st = con.createStatement();
        ResultSet rs=st.executeQuery(sql);
        return rs.next();
        
    }

    public boolean check(String email, String password) throws ClassNotFoundException, SQLException
    {
        DBConnection db = new DBConnection();
        Connection con = db.getConnection();

        String sql = "SELECT * FROM userr WHERE email='"+email+"' AND pass ='"+password+"'";

        Statement st = con.createStatement();
        ResultSet rs=st.executeQuery(sql);
        return rs.next();
        
    }
    
    public void insertCategory(String category,String details) throws ClassNotFoundException, SQLException
    {
        DBConnection db= new DBConnection();
        Connection con=db.getConnection();
        
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("Select * from category where c_id='"+category+"';");
        if(!rs.next())
        {
            String query="insert into category(name,details) values('"+category+"','"+details+"')";
            st.execute(query);
        }
        
    }
    public void insertAuthor(String name,String email,String address,String url) throws ClassNotFoundException, SQLException
    {
        DBConnection db= new DBConnection();
        Connection con=db.getConnection();
        String query="insert into author(name,email,address,url) values('"+name+"','"+email+"','"
                +address+"','"+url+"');";
        Statement st=con.createStatement();
        st.execute(query);
        
    }
    
    public void insertPublisher(String name,String email,String address,String url) throws ClassNotFoundException, SQLException
    {
        DBConnection db= new DBConnection();
        Connection con=db.getConnection();
        String query="insert into publisher(name,email,address,url) values('"+name+"','"+email+"','"
                +address+"','"+url+"');";
        Statement st=con.createStatement();
        st.execute(query);
        
    }
    
    public void insertBook(String category,String details) throws ClassNotFoundException, SQLException
    {
        DBConnection db= new DBConnection();
        Connection con=db.getConnection();
        
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("Select * from category where c_id='"+category+"';");
        if(!rs.next())
        {
            String query="insert into category(name,details) values('"+category+"','"+details+"')";
            st.execute(query);
        }
        
    }
    
    public ArrayList<String> getAuthors() throws ClassNotFoundException, SQLException
    {
        ArrayList<String> authors = new ArrayList<>();
        DBConnection db=new DBConnection();
        Connection con= db.getConnection();
        
        String query="select name from author";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(query);
        while(rs.next())
        {
            authors.add(rs.getString("name"));
        }
        return authors;
    }
    
    public ArrayList<String> getPublishers() throws SQLException, ClassNotFoundException
    {
        ArrayList<String> publishers = new ArrayList<>();
        DBConnection db = new DBConnection();
        Connection con = db.getConnection();
        
        String query="select name from publisher";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(query);
        while(rs.next())
        {
            publishers.add(rs.getString("name"));
        }
        return publishers;
    }
    
    public ArrayList<String> getCategories() throws SQLException, ClassNotFoundException
    {
        ArrayList<String> categories = new ArrayList<>();
        DBConnection db = new DBConnection();
        Connection con = db.getConnection();
        
        String query="select name from category";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(query);
        while(rs.next())
        {
            categories.add(rs.getString("name"));
        }
        return categories;
    }
    

}
