<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Recipes</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
<div class="container">
    <h2>Recipe List</h2>
    <a href="/recipes/add-recipe" class="btn">Add New Recipe</a>
    <div style="background-color: #f0f0f0; padding: 10px; margin: 10px 0;">
        <p>Number of recipes: ${recipes.size()}</p>
    </div>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Ingredients</th>
                <th>Instructions</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${recipes}" var="recipe">
                <tr>
                    <td>${recipe.name}</td>
                    <td>${recipe.ingredients}</td>
                    <td>${recipe.instructions}</td>
                    <td>
                        <a href="/recipes/edit/${recipe.id}" class="btn">Edit</a>
                        <a href="/recipes/delete/${recipe.id}" class="btn">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>