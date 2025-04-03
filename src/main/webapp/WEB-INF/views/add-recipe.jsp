<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Recipe</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
<div class="container">
    <h2>Add Recipe</h2>
    <form action="/recipes/add" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" required>

        <label for="ingredients">Ingredients:</label>
        <textarea name="ingredients" required></textarea>

        <label for="instructions">Instructions:</label>
        <textarea name="instructions" required></textarea>

        <button type="submit">Add Recipe</button>
    </form>
</div>
</body>
</html>