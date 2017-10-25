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
        <input type="text" name="filter" value="${filter}"/>
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
    <p><a href="create">Добавить книгу</a></p>
    <p>
    <form action="/" id="pagination" method="POST">
        <input type="hidden" name="page" id="pageNumber" value="${page}"/>
        <input type="hidden" name="filter"  value="${filter}"/>
        <button id="prev">Назад</button>
        <button id="next">Вперед</button>
    </form>
    </p>
<script>
    function init() {
        const elementPrev = document.getElementById("prev");
        const elementNext = document.getElementById("next");
        const pageNumberInput = document.getElementById("pageNumber");
        const paginationForm = document.getElementById("pagination");
        elementPrev.onclick = function() {
            if (pageNumberInput.value != 1) {
                pageNumberInput.value  = parseInt(pageNumberInput.value) - 1;
                paginationForm.submit();
            }
        };
        elementNext.onclick = function() {
            pageNumberInput.value  = parseInt(pageNumberInput.value) + 1;
            paginationForm.submit();
        };
    }
    window.onload = init;
</script>
</body>
</html>