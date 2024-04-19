<?php
include 'databasecon.php';
$_REQUEST['foo'];
?>
<table border="1px" style="width: 500px; height: 30px; text-align: center; margin-top: 20px">
<tr>
<th style="padding:8px">User Name</th>
<th>Email</th>
<th>Phone No</th>
<th>Current Credit</th> 
</tr>
<?php 
$query2="select * from user where Id='".$_REQUEST['foo']."'";
$result3= mysqli_query($con, $query2);
while ($rows = mysqli_fetch_assoc($result3)) {
?>
<tr>
 
<td><?php echo $rows['Name'];?></td>
<td><?php echo $rows['Email'];?></td>
<td><?php echo $rows['Phoneno'];?></td>
<td><?php echo $rows['Current_Credit'];?></td>
</tr>
<?php
}
?>
</table>
