<%@ page contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Создание книги</title>
</head>
<body>
<h1>Создание книги</h1>
<form action="/create" method="POST">
<div>
<label for="title">Название книги</label>
<input type="text" id="title" name="title" value="${book.title}"/>
</div>
<div>
<label for="author">Автор</label>
<input type="text" id="author" name="author" value="${book.author}"/>
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
<input type="submit" value="Сохранить"/>
</div>
</form>
</body>
</html>