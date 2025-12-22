<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
    <title>Manage Refunds</title>

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
       

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            border: 1px solid #000;
            padding: auto;
            text-align: center;
        }

        th {
            background-color: #eaeaea;
        }
    </style>
</head>

<body>

<h2 style="margin-left:40px;">
    Manage Refunds 
</h2>

<div class="container">

    <table>
        <tr>
            <th>ID</th>
            <th>User</th>
            <th>Booking</th>
            <th>Amount</th>
            <th>Status</th>
            <th>Refund Txn ID</th>
            <th>Created</th>
            <th>Processed</th>
        </tr>

       
        <tr>
            <td>1</td>
            <td>User1</td>
            <td>BKG101</td>
            <td>450</td>
            <td>Completed</td>
            <td>REF789</td>
            <td>10-06-2025</td>
            <td>11-06-2025</td>
        </tr>
    </table>

</div>

</body>
</html>
    


    