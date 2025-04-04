<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Recipes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000;
            color: #fff;
            margin: 0;
            padding: 20px;
        }
        .container {
            margin: auto;
            max-width: 800px;
            background-color: #333;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
        }
        h2 {
            color: #e91e63;
            text-align: center;
            margin-bottom: 20px;
        }
        .btn-custom {
            background-color: #e91e63;
            color: white;
            margin: 5px;
            border-radius: 8px;
            transition: background-color 0.3s;
        }
        .btn-custom:hover {
            background-color: #d81b60;
        }
        table {
            width: 100%;
            margin: 20px 0;
            color: #fff;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #fff;
        }
        th {
            background-color: #444;
        }
        tr:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Recipe List</h2>
    <a href="/recipes/add-recipe" class="btn btn-custom">Add New Recipe</a>
    <div class="alert alert-dark mt-3" role="alert">
        <p>Number of recipes: ${recipes.size()}</p>
    </div>
    <table class="table table-dark table-striped">
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
                        <a href="/recipes/edit/${recipe.id}" class="btn btn-custom">Edit</a>
                        <a href="/recipes/delete/${recipe.id}" class="btn btn-custom">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
