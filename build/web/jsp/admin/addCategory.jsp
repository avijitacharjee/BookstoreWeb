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
            <div class="form">
            <h1 class="Hmm">Add category</h1>
             <form action="../../AddCategoryServlet" method="post">
                 <p class="row"> Enter category name: <input type="text" name="category" class="text-box"> </p>
                 <p class="row"> Enter details: <input type="text" name="details" class="text-box"> </p>
                <p> <input type="submit" class="submit">
                    
            </form> 
        </div>
        
        </di>
        
    </body>
</html>
