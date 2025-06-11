<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 11/06/2025
  Time: 09:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="noms" type="java.util.ArrayList<java.lang.String>" scope="request"/>
<jsp:useBean id="prenoms" type="java.util.ArrayList<java.lang.String>" scope="request"/>
<jsp:useBean id="ages" type="java.util.ArrayList<java.lang.Integer>" scope="request"/>
<html>
<head>
    <title>Affichage Tableau</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <link rel="stylesheet" href="style/styles.css">
</head>
<body>
<h1>Affichage des Personnages</h1>
<table class="table table-dark">
    <tr>
        <th>Noms :</th>
        <th>Prénom :</th>
        <th>Ages :</th>
    </tr>
    <% for (int i = 0; i < noms.size(); i++) {%>
    <tr>
        <td><%= noms.get(i) %>
        </td>
        <td><%= prenoms.get(i) %>
        </td>
        <td><%= ages.get(i) %>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
