<%-- 
    Document   : index
    Created on : May 13, 2019, 5:29:25 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="../../FileServlet" enctype="multipart/form-data" method="post">
            <input type="file" name="file" multiple="true"/>
            <input type="submit" />
            </form>
    </body>
</html>
