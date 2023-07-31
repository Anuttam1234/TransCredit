<?php 
include 'databasecon.php';
$query2="select * from user;";
$result3= mysqli_query($con, $query2);
?>



<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>The Sparks Foundation</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <?php include 'header.php'?>
       <center>
            <h1>User Details</h1>
            <table border="1px" style="width: 400px; height: 30px; text-align: center">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone No</th>
                <th>Current Credit</th> 
            </tr>
            <?php 
            

                while ($rows = mysqli_fetch_assoc($result3)) {
                    ?>
            <tr>
                <td><?php echo $rows['Id'];?></td>
                <td><?php echo $rows['Name'];?></td>
                <td><?php echo $rows['Email'];?></td>
                <td><?php echo $rows['Phoneno'];?></td>
                <td><?php echo $rows['Current_Credit'];?></td>
                
            </tr>
            <?php
                
                }
            
                ?>
            </table>
            <br>
            <br>
            <br>
        </center>
      
    </body>
</html>

