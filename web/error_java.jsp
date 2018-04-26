<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>TOBA - Error</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/main.css">
    </head>
    
    <body>
        <jsp:include page="header.html" />
        
        <div id="content">
            <h1>Java Error</h1>
            <p>Sorry, Java has thrown an exception.
            <p>To continue, click the Back button.
            <p>Details
            <p>Type: ${pageContext.exception["class"]}
            <p>Message: ${pageContext.exception.message}
        </div>
        
        <div id = "footer">
            <jsp:include page="footer.jsp" />
        </div>     
        
    </body>
    
</html>
