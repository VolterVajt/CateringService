<%-- 
    Document   : login
    Created on : Jul 10, 2022, 10:59:32 PM
    Author     : dgudo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ketering Služba</title>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="./css/customStyles.css"/>
        
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-md">
                <%@include file="includes/navbar.jsp"%>
            <section>
                ${msg}                
            </section>
               <%@include file="includes/footer.jsp"%>
        </div>
    </body>
</html>
