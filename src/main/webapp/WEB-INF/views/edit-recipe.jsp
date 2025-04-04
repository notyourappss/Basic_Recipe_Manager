<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Recipe</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background-color: #333;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        h2 {
            margin-bottom: 20px;
            color: #e91e63;
        }
        label {
            margin: 10px 0 5px;
            color: #fff;
            font-weight: bold;
        }
        textarea, input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #555;
            border-radius: 8px;
            background-color: #222;
            color: #fff;
            transition: border-color 0.3s;
        }
        textarea:focus, input[type="text"]:focus {
            border-color: #e91e63;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #e91e63;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }
        button:hover {
            background-color: #d81b60;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Edit Recipe</h2>
    <form action="/recipes/update/${recipe.id}" method="post">
        <input type="hidden" name="id" value="${recipe.id}">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" name="name" value="${recipe.name}" required class="form-control">
        </div>
        <div class="form-group">
            <label for="ingredients">Ingredients:</label>
            <textarea name="ingredients" required class="form-control">${recipe.ingredients}</textarea>
        </div>
        <div class="form-group">
            <label for="instructions">Instructions:</label>
            <textarea name="instructions" required class="form-control">${recipe.instructions}</textarea>
        </div>
        <button type="submit" class="btn btn-custom mt-3">Update Recipe</button>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
