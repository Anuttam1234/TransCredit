<?php

include 'databasecon.php';
$query="select * from user;";
$result= mysqli_query($con, $query);
$result1= mysqli_query($con, $query);
$result2= mysqli_query($con, $query);


if(isset($_REQUEST["submit"])){
    
    $user1=$_REQUEST["user1"];
    $user2=$_REQUEST["user2"];
    $credit=$_REQUEST["credit"];
    
    
    $send_credit= mysqli_query($con,"select * from user where Id='$user1'");
   
    $fetch_row = mysqli_fetch_array($send_credit);
    $fetch_row['Current_Credit'];
    $user1name =  $fetch_row['Name'];
    
    $send_credit2= mysqli_query($con,"select * from user where Id='$user2'");
    $fetch_row2 = mysqli_fetch_array($send_credit2);
    $user2name =  $fetch_row2['Name'];
    
    if(($fetch_row['Current_Credit']>=$credit) && ($user1!=$user2)){
    mysqli_query($con,"insert into transfer_table(Transfer_from,Transfer_to,Transfer_amount)values('$user1name','$user2name','$credit')");
    mysqli_query($con, "update user set Current_Credit=Current_Credit+'$credit' where Id='$user2'");
    $sub=mysqli_query($con, "update user set Current_Credit=Current_Credit-'$credit' where Id='$user1'"); 
    $message="Transfer Succeed";
    echo "<script type='text/javascript'>alert('$message');</script>";
       
}
 else {
    $message2="Transfer Failed";
    echo "<script type='text/javascript'>alert('$message2');</script>";
}
}
?>
<!Doctype html>
<html>
    <head>
        <title>The Sparks Foundation</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


        <!--j Query library--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


        <!--Latest compiled and minified Java Script--> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        
        <?php
        include 'header.php';
        ?>
        <br> <br> <br>
        <h1>Welcome to Transfer Area</h1>
        <br> <br> <br><br>
        <br>
        <br>
        <br>
        <br>
    <center>
        <form method="POST" class="box">
            <select name="user1" id='user1' onchange="getuserdet()">
                <option value="" selected hidden>Select an user</option>
            <?php
            //$options="";
                while($rows1= mysqli_fetch_array($result1))
                {?>
                   <option value="<?php  echo $rows1['Id'] ?>"><?php echo $rows1['Name'] ?></option>
                <?php }
                //echo $options;
                ?>
            </select>
            
            <div id="userdetails"></div>
        
            
        <br><br> 
        <select name="user2">
            <?php
            $options1="";
                while($rows2= mysqli_fetch_array($result2))
                { ?>
                     <option value="<?php  echo $rows2['Id'] ?>"><?php echo $rows2['Name'] ?></option>
                <?php }
           
                ?>
        </select><br><br>
        Transfer amount:<br><Input type="text" name="credit" class="textbox"><br><br>
        <a href="user_table.php"><input type="submit" value="insert" name="submit" class="btn btn-primary"></a>
        </form>
    </center>
    <script>
       function  getuserdet(){
            var uid = $('#user1 :selected').val();
           
              $.ajax({
                url:"getuserdetails.php",
                method:"POST",
                data: { foo : uid } ,
        success:function(f)
        {
            //alert(f);
            $('#userdetails').html(f); 
            //$("#loadingdiv").hide();
        }
      });
       }
    </script>
</body>
</html>

