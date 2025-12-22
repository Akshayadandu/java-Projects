<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Seat Template</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
        }

        h2 {
            text-align: center;
            color: white;
            margin: 20px 0;
        }

      
        .movie-card {
            max-width: 600px;
            margin: 30px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.4);
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
            color: #333;
        }

        input[type="text"],
        textarea {
            width: 100% !important;   /* OVERRIDES PROJECT CSS */
            max-width: 100% !important;
            padding: 10px;
            margin-top: 6px;
            border-radius: 5px;
            border: 1px solid #aaa;
            font-size: 14px;
        }

        textarea {
            resize: none;
        }

        .btn {
            margin-top: 20px;
            width: 100% !important;
            padding: 12px;
            background: #2c5364;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
        }

        .btn:hover {
            background: #203a43;
        }
    </style>
</head>

<body>

<h2>Add Seat Templates</h2>

<div class="movie-card">

    <form action="AddSeatsTemplateServlet" method="post">

        <label>Template ID</label>
        <input type="text" name="templateId">

        <label>Screen ID</label>
        <input type="text" name="screenId">

        <label>Rows</label>
        <input type="text" name="rows">

        <label>Columns</label>
        <input type="text" name="columns">

        <input type="submit" value="SAVE" class="btn">

    </form>

</div>

</body>
</html>
    