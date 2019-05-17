<%@page import="DB.DBConnection"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <title>Boier Dokan</title>
        <link href="../../css/styles.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
         <header class="header">
            <div class="Link">
                
                
                <ul class="indexnav">
                    <li class="l">
                        Book Store
                    </li>
                    
                    <li class="active">
                        <a href="../../index.html">Home</a>
                    </li>
                    <li class="lst">
                        <a href="../about.jsp">About</a>
                    </li>
                    <li class="lst">
                        <a href="../contact.jsp">Contact</a>
                    </li>
                    <li class="lst">
                        <a href="../login.jsp">Login</a>
                    </li>
                    <li class="lst">
                        <a href="../registration.jsp">Sign up</a>
                    </li>
                   
                </ul>
            </div>
        </header>
        <div class="indexBody">
            <div class="">
                <table border="1">
                    <thead>
                    <td>
                        NAME
                    </td>
                    <td>
                        EMAIL
                    </td>
                    <td>
                        PASSWORD
                    </td>
                    </thead>
                    <tbody>
                        <%
                            DBConnection db = new DBConnection();
                            Connection con= db.getConnection();
                            Statement st=con.createStatement();
                            
                            String query= "select * from userr";
                            ResultSet rs=st.executeQuery(query);
                            while(rs.next())
                            {
                                out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>");
                            }

                            %>
                            
                    </tbody>
                </table>
            </form> 
        </div>
        
        </di>
        
    </body>
</html>
