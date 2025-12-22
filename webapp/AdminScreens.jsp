<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Screens</title>

    <style>
         body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
        }

        .container {
            width: 500px;
            margin: 40px auto;
            background: #ffffff;
            padding: 20px;
            border: 1px solid #ccc;
        }

        h2 {
            text-align: center;
            color:white;
            margin: 20px 0;
        }

        label {
            font-weight: bold;
        }

        input[type="text"] {
            width: 200px;
            padding: 5px;
            margin-top: 5px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #eaeaea;
        }

        .btn {
            padding: 8px 20px;
            background-color: #2c5364;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #203a43;
        }

        .action {
            color: blue;
            text-decoration: underline;
            cursor: pointer;
        }
    </style>
</head>

<body>

<h2 style="margin-left:40px;">
   Manage Screens
</h2>

<div class="container">

    <label>ADD SCREEN:</label><br>
    <input type="text" placeholder="Screen Name">
    <input type="text" placeholder="Description">
    <button class="btn">Add</button>

    <br><br>

    <label>SCREENS LIST Table:</label>

    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>DESC</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>

       
        <tr>
            <td>1</td>
            <td>Screen 1</td>
            <td>Dolby Atmos</td>
            <td class="action">Edit</td>
            <td class="action">Delete</td>
        </tr>
    </table>

</div>

</body>
</html>
    