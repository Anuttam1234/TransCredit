<?php
include 'databasecon.php';
$query="select * from user;";
$result=  mysqli_query($con, $query);
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
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >


        <!--j Query library--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


        <!--Latest compiled and minified Java Script--> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <style>
            button{
                width: 100px;
                top: 50%;
                left:50%;
                
            }
            p{
                font-size: 20px;
            }
        </style>
    </head>
    <body>
      <?php 
       include 'header.php';
       ?>
        <br><br><br><br><br>
        <div>
            <p>Welcome to our site. Here you can Transfer credit amount to any user.</p><br>
            <p>If you want to transfer credit now, you can click the below button. </p>
        </div>
        
    <center>
        <a href="userdetail.php"><button type="button">Transfer!</button></a> 
    <br>
    <br>
    <br>
    <div >
        <img style="height: 200px; width: 500px" src="photos/giphy.gif">
    </div>
    </center>
      
    
    </body>
</html>
