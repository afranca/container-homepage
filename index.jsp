<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy");
request.setAttribute("year", sdf.format(new java.util.Date()));
request.setAttribute("tomcatUrl", "https://tomcat.apache.org/");
request.setAttribute("tomcatDocUrl", "/docs/");
request.setAttribute("tomcatExamplesUrl", "/examples/");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title><%=request.getServletContext().getServerInfo() %></title>
        <link href="favicon.ico" rel="icon" type="image/x-icon" />
        <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <link href="tomcat.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="wrapper">
            <div id="navigation" class="curved container">
                <span id="nav-home"><a href="${tomcatUrl}">Home</a></span>

                <br class="separator" />
            </div>
            <div id="asf-box">
                <h1>${pageContext.servletContext.serverInfo}</h1>
            </div>
            <div id="upper" class="curved container">
                <div id="congrats" class="curved container">
                    <h2>If you're seeing this, You are running your Tomcat Docker Container </h2>
                </div>
                <div id="notice">
                    <div id="tasks">                        
                        <h3>This is a Docker Container</h3>
                    </div>
                </div>

                <br class="separator" />
            </div>
            <div id="middle" class="curved container">
                <br class="separator" />
                <h3>This Container can be used to deploy in Circle CI</h3>                              
                
                <br class="separator" />
            </div>
            <div id="lower">

            </div>

            <div id="footer" class="curved container">
                <br class="separator" />
                 <p class="copyright">Copyright &copy;1999-${year} Apache Software Foundation.  All Rights Reserved</p>               
                <br class="separator" />
            </div>
            
        </div>
    </body>

</html>
