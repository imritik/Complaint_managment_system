<?php
$_SESSION["userId"] = "24";
//$conn = mysql_connect("localhost","root","root","complaint_KIET14");
include('connection.php');
mysql_select_db("complaint_KIET14",$conn);
if(count($_POST)>0) {
$result = mysql_query("SELECT *from student WHERE rollno='" . $_SESSION["rollno"] . "'");
$row=mysql_fetch_array($result);
if($_POST["currentPassword"] == $row["password"]) {
mysql_query("UPDATE student set password='" . $_POST["newPassword"] . "' WHERE userId='" . $_SESSION["userId"] . "'");
$message = "Password Changed";
} else $message = "Current Password is not correct";
}
?>