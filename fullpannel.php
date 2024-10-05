<?php
    require 'connection.php';
    session_start();
    if($_SESSION['id'] == 1 || $_SESSION['id'] == 4)
    {
    $sql = "update candidates set pannel = '6' where candidate_srno = ".$_SESSION['candidate'].";";
    $result = mysqli_query($conn, $sql);
    }
    else{
        $sql = "update candidates set pannel = '7' where candidate_srno = ".$_SESSION['candidate'].";";
    $result = mysqli_query($conn, $sql);
    }
    header("location:interview.php");
?>