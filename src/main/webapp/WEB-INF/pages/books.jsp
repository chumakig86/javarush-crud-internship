<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books List</title>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }
        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }
        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }
        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>

</head>
<body>
<a href="index.jsp">Back to main menu</a>
<br />
<br />
<h1>BOOKS</h1>

<c:if test="${!empty listBooks}">
    <table class="tg">
        <tr>
            <th width="5%">ID</th>
            <th width="25%">Title</th>
            <th width="10%">Description</th>
            <th width="10%">Author</th>
            <th width="10%">ISBN</th>
            <th width="5%">Year</th>
            <th width="5%">isRead</th>
            <th width="10%">Manage</th>

        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.description}</td>
                <td>${book.author}</td>
                <td>${book.isbn}</td>
                <td>${book.printYear}</td>
                <c:if test="${!book.readAlready}">
                    <td class="form" align="center">
                        false
                    </td>
                </c:if>
                <c:if test="${book.readAlready}">
                    <td class="form" align="center">
                        true
                    </td>
                </c:if>
                </td>
                <td><a href="<c:url value='/edit/${book.id}'/>">
                    <img src="<c:url value="/resources/pencilcircle.png"/>"/>
                </a>
                    <a href="<c:url value='/remove/${book.id}'/>">
                        <img src="<c:url value="/resources/closecircle2.png"/>"/></a>
                    <c:if test="${!book.readAlready}">
                    <a href="<c:url value='/readbook/${book.id}'/>"> READ</a></td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
</c:if>

<h1>Add new book</h1>

<br/>
<br/>
</body>
</html>
