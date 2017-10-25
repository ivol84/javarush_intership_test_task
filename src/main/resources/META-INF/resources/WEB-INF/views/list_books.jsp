<%@ page contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<title>Список книг</title>
</head>
<body>
    <form action="/" method="POST">
        <label for="filter">Фильтр:</label>
        <input type="text" name="filter" value=""/>
        <input type="submit"/>
    </form>

    <table>
        <thead>
            <th>Название</th>
            <th>Автор</th>
            <th>Заменить</th>
            <th>Прочитано</th>
            <th>Удалить</th>
        </thead>
        <tbody>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td>${book.title}</td>
                    <td>${book.author}</td>
                    <td><a href="replace?id=${book.id}">Заменить</a></td>
                    <td>
                        <c:choose>
                            <c:when test="${book.readAlready}">
                                Уже прочитано
                            </c:when>
                            <c:otherwise>
                                <a href="markAsRead?id=${book.id}">Прочитано</a>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td><a href="delete?id=${book.id}">Удалить</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="create">Добавить книгу</a>
</body>
</html>