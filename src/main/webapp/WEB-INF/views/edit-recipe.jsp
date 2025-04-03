<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Recipe</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
<div class="container">
    <h2>Edit Recipe</h2>
    <form action="/recipes/update/${recipe.id}" method="post">
        <input type="hidden" name="id" value="${recipe.id}">

        <label for="name">Name:</label>
        <input type="text" name="name" value="${recipe.name}" required>

        <label for="ingredients">Ingredients:</label>
        <textarea name="ingredients" required>${recipe.ingredients}</textarea>

        <label for="instructions">Instructions:</label>
        <textarea name="instructions" required>${recipe.instructions}</textarea>

        <button type="submit">Update Recipe</button>
    </form>
</div>
</body>
</html>
