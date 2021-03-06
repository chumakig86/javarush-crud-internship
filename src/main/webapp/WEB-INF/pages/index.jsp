<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>BOOKS</title>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }
        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            padding: 20px 15px;
            border-style: solid;
            border-width: 0;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #777;
            background-color: #fff;
        }
        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 30px 15px;
            border-style: solid;
            border-width: 0;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }
        .tg .tg-4eph {
            background-color: #f9f9f9
        }
        .header {
            font-family: Arial, sans-serif;
            font-size: 20px;
            font-weight: lighter;
            padding: 10px 5px;
            border-width: 0px;
            align-content: center;
            align-items: center;
        }
        .form {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            padding: 10px 15px;
            border-width: 0;
            align-content: center;
            align-items: center;
            background-color: #ffffff;
        }
        .form2 {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            padding: 10px 15px;
            border: 0 #ffffff;
            align-content: center;
            align-items: center;
            background-color: #ffffff;
        }
        .font {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            font-style: italic;
            padding: 0 15px;
            border-width: 0;
            align-content: center;
            align-items: center;
            background-color: #ffffff;
        }
        .font-noborder {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            font-style: italic;
            padding: 0 15px;
            border-width: 0;
            align-content: right;
            align-items: right;
            background-color: #ffffff;
        }
        .material {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: lighter;
            padding: 10px 15px;
            border: 1px solid #eeeeee;
            align-content: center;
            align-items: center;
            word-spacing: 20px;
        }
        .btn {
            width: 100%;
            height: 44px;
            font-size: 14px;
            border: 0px solid #253737;
            background: #dddddd;
            padding: 10px 21px;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            color: #333333;
        }
        .btn:hover {
            width: 100%;
            height: 44px;
            font-size: 14px;
            border: 0px solid #253737;
            background: #dedede;
            padding: 10px 21px;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            color: #333333;
        }
        .btn:active {
            width: 100%;
            height: 44px;
            font-size: 14px;
            border: 0px solid #253737;
            background: #eeeeee;
            padding: 10px 21px;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            color: #333333;
        }
        .field {
            width: 100%;
            height: 30px;
            font-size: 14px;
            border: 1px solid #dddddd;
            background: #ffffff;
            margin-bottom: 20px;
            padding: 10px 21px;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            color: #333333;
        }
        .link {
            text-decoration: none;
            background-color: #78909C;
            color: #ffffff;
            padding: 5px;
            border: 0 #78909C;
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 0;
        }
    </style>
</head>
<body bgcolor="#eeeeee">
<table width="95%" align="center">
    <tr>
        <%--Sider--%>
        <td width="20%" valign="top">

            <table class="header" align="center">
                <tr class="header" align="center">
                    <td class="header" align="center" height="100px">
                    </td>
                </tr>
            </table>

            <%--Add form--%>
            <table width="300px">
                <tr>
                    <td>
                        <c:url var="addAction" value="/books/add" />
                        <form:form action="${addAction}" commandName="book">
                            <%--Add form--%>
                            <table class="form" align="center" width="100%">
                                <tr>
                                    <td>
                                        <table class="header" align="center">
                                            <tr class="header" align="center">
                                                <td class="header" align="center">
                                                    <c:if test="${!empty book.title}">
                                                        EDIT BOOK
                                                    </c:if>
                                                    <c:if test="${empty book.title}">
                                                        ADD NEW BOOK
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width="100%">
                                                <%--ID--%>
                                            <c:if test="${!empty book.title}">
                                                <tr>
                                                    <td>
                                                        <form:label path="id">
                                                            <spring:message text="ID"/>
                                                        </form:label>
                                                    </td>
                                                    <td>
                                                        <form:input path="id" readonly="true" disabled="true"/>
                                                        <form:hidden path="id"/>
                                                    </td>
                                                </tr>
                                            </c:if>

                                                    <tr>
                                                        <td>
                                                            <form:label path="title">
                                                                <spring:message text="Title"/>
                                                            </form:label>
                                                        </td>
                                                        <td>
                                                            <form:input required="required" path="title"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <form:label path="description">
                                                                <spring:message text="Description"/>
                                                            </form:label>
                                                        </td>
                                                        <td>
                                                            <form:input path="description"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <form:label path="author">
                                                                <spring:message text="Author"/>
                                                            </form:label>
                                                        </td>
                                                        <c:if test="${!empty book.title}">
                                                            <td>
                                                                <form:input path="author" readonly="true" disabled="true"/>
                                                                <form:hidden path="author"/>
                                                            </td>
                                                        </c:if>
                                                        <c:if test="${empty book.title}">
                                                            <td>
                                                                <form:input required="required" path="author"/>
                                                            </td>
                                                        </c:if>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <form:label path="isbn">
                                                                <spring:message text="ISBN"/>
                                                            </form:label>
                                                        </td>
                                                        <td>
                                                            <form:input required="required" path="isbn"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <form:label path="printYear">
                                                                <spring:message text="Year"/>
                                                            </form:label>
                                                        </td>
                                                        <td>
                                                            <form:input path="printYear"/>
                                                        </td>
                                                    </tr>
                                                    </tr>
                                                <td colspan="2" class="form">
                                                    <c:if test="${!empty book.title}">
                                                        <input class="btn" type="submit"
                                                               value="<spring:message text="SUBMIT CHANGES"/>"/>
                                                    </c:if>
                                                    <c:if test="${empty book.title}">
                                                        <input class="btn" type="submit"
                                                               value="<spring:message text="ADD BOOK"/>"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </form:form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="form" width="100%">
                            <tr>
                                <td class="form">
                                    <form action="<c:url value="/"/>">
                                        <input class="field" type="text" placeholder="Min 3 symbols of Title" name="bookName" />
                                        <input class="btn" type="submit" value="Search" />
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <%--Vertical divider--%>
        <td width="2%">

        </td>
        <%--Main table--%>
        <td width="78%" valign="top">
            <table width="100%">
                <tr>
                    <td>
                        <table class="header" align="center">
                            <tr class="header" align="center">
                                <td class="header" align="center" height="100px">
                                    BOOKS
                                </td>
                            </tr>
                        </table>
                        <c:if test="${!empty listBooks}">
                            <table class="tg" align="center" width="100%">
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

                                            </td>
                                        </c:if>
                                        <c:if test="${book.readAlready}">
                                            <td class="form" align="center">
                                                <img src="<c:url value="/resources/checkcircle.png"/>"/>
                                            </td>
                                        </c:if>
                                        </td>
                                        <td><a href="<c:url value='/edit/${book.id}'/>"><img src="<c:url value="/resources/pencilcircle.png"/>"/></a>
                                            <a href="<c:url value='/remove/${book.id}'/>"> <img src="<c:url value="/resources/closecircle2.png"/>"/></a>
                                            <c:if test="${!book.readAlready}">
                                            <a href="<c:url value='/readbook/${book.id}'/>"><img src="<c:url value="/resources/book.png"/>"/>
                                                </a></td>
                                        </c:if>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:if>
                        <c:if test="${empty listBooks}"><center>List of books is empty.</center></c:if>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="material" align="center">
                            <tr align="center">
                                <td align="center">
                                    <c:url value="/" var="prev">
                                        <c:param name="page" value="${page-1}"/>
                                    </c:url>
                                    <c:if test="${page > 1}">
                                        <a href="<c:out value="${prev}" />" class="link">Previous</a>
                                    </c:if>

                                    <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                                        <c:choose>
                                            <c:when test="${page == i.index}">
                                                <span>${i.index}</span>
                                            </c:when>
                                            <c:otherwise>
                                                <c:url value="/" var="url">
                                                    <c:param name="page" value="${i.index}"/>
                                                </c:url>
                                                <a href='<c:out value="${url}" />' class="link">${i.index}</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:url value="/" var="next">
                                        <c:param name="page" value="${page + 1}"/>
                                    </c:url>
                                    <c:if test="${page + 1 <= maxPages}">
                                        <a href='<c:out value="${next}" />' class="link">Next</a>
                                    </c:if>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<br>
</body>
</html>