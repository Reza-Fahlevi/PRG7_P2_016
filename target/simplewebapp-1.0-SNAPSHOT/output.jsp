<%--
  Created by IntelliJ IDEA.
  User: mocha
  Date: 3/24/2021
  Time: 11:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:useBean id="surveyData" scope="request" class="model.SurveyData"></jsp:useBean>
<head>
    <title>Terima-kasih!</title>
</head>
<body>
    <h2>Terima-kasih</h2>
    <p>
        <jsp:getProperty name="surveyData" property="fullName" /> , berikut bahasa pemrograman kesukaan anda:
    </p>
    <ul>
        <%
            String[] bahasa = surveyData.getProLangList();
            if (bahasa != null){
                for (int i=0; i<bahasa.length; i++){
        %>
        <li>
            <%=bahasa[i]%>
        </li>
        <%
                }
            }
        %>
    </ul>
</body>
</html>
