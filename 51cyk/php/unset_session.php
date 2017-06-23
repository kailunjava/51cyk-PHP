<?php
session_start();
unset($_SESSION['user']);
unset($_SESSION['pkUser']);
header("location:../index.php");
/*echo"<script>history.go(-1);</script>"; */ 
?>