<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
        <head>
                <title>${title}</title>
        </head>
<body>
        <h1><jsp:text>${book.author}</jsp:text>: ${book.title}</h1>
        <form action="replace/replace?id=${book.id}" method="POST">
                <div>
                        <label for="title">Название книги</label>
                        <input type="text" id="title" name="title" value="${book.title}"/>
                </div>
                <div>
                        <label for="description"/>Описание книги</label>
                        <textarea id="description" name="description">${book.description}</textarea>
                </div>
                <div>
                        <label for="isbn"/>ISBN</label>
                        <input type="text" id="isbn" name="isbn" value="${book.isbn}"/>
                </div>
                <div>
                        <label for="year"/>Год выпуска:</label>
                        <input type="text" id="year" name="year" value="${book.printYear}"/>
                </div>
                <div>
                        <input type="submit" value="Сохранить изменения"/>
                </div>
        </form>
        </body>
</html>