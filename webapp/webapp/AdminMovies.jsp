<!DOCTYPE html>
<html>
<head>
    <title>Manage Movies</title>

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
        
    </style>
</head>

<body>

    <h2>Manage Movies</h2>

    <div class="container">

        <!-- Search Movies -->
        <label>SEARCH MOVIES:</label><br>
        <input type="text" placeholder="Enter movie name">
        <button class="btn">Search</button>

        <br><br>

        <!-- Add Movie -->
        <label>ADD MOVIE:</label><br>
        <button class="btn">Add Movie</button>

        <br><br>

        <!-- Movies List -->
        <label>MOVIES LIST in Tabular form:</label>

        <table>
            <tr>
                <th>ID</th>
                <th>TITLE</th>
                <th>LANGUAGE</th>
                <th>GENRE</th>
                <th>DURATION</th>
                <th>EDIT</th>
                <th>DELETE</th>
            </tr>

            <!-- Sample Data -->
            <tr>
                <td>1</td>
                <td>Avatar</td>
                <td>English</td>
                <td>Sci-Fi</td>
                <td>2h 42m</td>
                <td class="action">Edit</td>
                <td class="action">Delete</td>
            </tr>

            <tr>
                <td>2</td>
                <td>RRR</td>
                <td>Telugu</td>
                <td>Action</td>
                <td>3h</td>
                <td class="action">Edit</td>
                <td class="action">Delete</td>
            </tr>

        </table>

    </div>

</body>
</html>
