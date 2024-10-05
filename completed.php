<?php
    require 'connection.php';
    session_start();
    $sql = "update candidates set interviewstatus = 'c' where candidate_srno = ".$_SESSION['candidate'].";";
    $result = mysqli_query($conn, $sql);
    header("location:interview.php");
    echo "demo";
?>