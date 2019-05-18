<%@page import="DB.DB"%>
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
                        SL
                    </td>
                    <td>
                        NAME
                    </td>
                    <td>
                        Category
                    </td>
                    <td>
                        Author
                    </td>
                    <td>
                        Publisher
                    </td>
                    <td>
                        edition
                    </td>
                    </thead>
                    <tbody>
                        <%
                            DBConnection dbCon=new DBConnection();
                            Connection con=dbCon.getConnection();
                            Statement st=con.createStatement();
                            DB db=new DB();

                            String query="select * from book";
                            try
                            {
                                ResultSet rs=st.executeQuery(query);
                                while (rs.next())
                                {
                                    out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(5)+"</td><td>"+db.getCategoryName(rs.getInt(2))+"</td><td>"+db.getAuthorName(rs.getInt(3))+"</td><td>"+db.getPublisherName(rs.getInt(4))+"</td><td>"+rs.getInt(6)+"</td></tr>");
                                }
                            }
                            catch (Exception e)
                            {
                                out.println(e);
                            }

                        %>

                    </tbody>
                </table>
                </form> 
            </div>

        </di>

</body>
</html>

