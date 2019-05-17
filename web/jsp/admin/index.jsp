<%@page import="java.sql.*"%>
<%@page import="DB.DBConnection"%>
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
                    
                   
                </ul>
            </div>
        </header>
        <div class="indexBody"> 
            <ul style="padding-top: 200px;color: white;font-size: 36px;">
                <li>
                    <a href="addCategory.jsp" class="aaa">Add category</a>
                </li>
                <li>
                    <a href="addAuthor.jsp" class="aaa">Add Author</a>
                </li>
                <li>
                    <a href="addPublisher.jsp" class="aaa">Add publisher</a>
                </li>
                <li>
                    <a href="addBook.jsp" class="aaa">Add books</a>
                </li>
                <li>
                    <a href="userDetails.jsp" class="aaa">user details</a>
                </li>
            </ul>
        
        </div>
    </div>
        
    </body>
</html>
