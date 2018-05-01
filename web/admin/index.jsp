<!DOCTYPE html>
<html>
    <head>
        <title>TOBA - Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/main.css">
    </head>
    
    <body>
        
        <jsp:include page="header.html" />
        
        <div id="content">
            <h3>Welcome to the Admin page</h3>
            <p>Click here to access reports page. <a href="reports.jsp">Reports</a></p>
        </div>
        
        <div id = "footer">
            <jsp:include page="footer.jsp" />
        </div>     
    </body>
    
</html>