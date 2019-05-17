<%@page import="java.util.ArrayList"%>
<%@page import="DB.DB"%>
<html>
    <head>
        <title>Boier Dokan</title>
        <link href="../../css/styles.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/book.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <%
            DB db= new DB();
            ArrayList<String> authors=db.getAuthors();
            ArrayList<String> publishers=db.getPublishers();
            ArrayList<String> categories=db.getCategories();
            %>
        
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
        <div class="bookindexbody">
            <div class="bookform">
            <h1 class="Hmm">Add Book</h1>
            <form action="../../AddBookServlet" method="post">
                 <p class="row"> Category
                     <select name="category" class="text-box">
                         <%
                             for(String i: categories)
                             {
                                 out.println("<option value=\""+i+"\">"+i+"</option>");
                             }
                             %>
                </select>
                 </p>
                 
                 <p class="row"> Author
                     <select name="author" class="text-box">
                         <%
                             for(String i: authors)
                             {
                                 out.println("<option value=\""+i+"\">"+i+"</option>");
                             }
                             %>
                </select>
                 </p>
                 <p class="row"> Publisher
                     <select name="publisher" class="text-box">
                         <%
                             for(String i: publishers)
                             {
                                 out.println("<option value=\""+i+"\">"+i+"</option>");
                             }
                             %>
                </select>
                 </p>
                 
                 <p class="row"> Name <input type="text" name="name" class="text-box"> </p>
                 <p class="row"> Edition<input type="number" name="edition" class="text-box"/></p>
                <P class="row"> Pages <input type="number" name="pages" class="text-box"></p>
                <p class="row"> Copies <input type="number" name="copies" class="text-box"</p>
               
                <p class="row"> Details <input type="text" name="details" class="text-box"> </p> 
                 <p class="row"> Image <input type="file" name="image" class="text-box"> </p>
                <p> <input type="submit" class="submit">
                    
            </form> 
        </div>
            <div>
            <form>
                <select name="cars">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>
            </form>
        </div>
        
    </body>
</html>
