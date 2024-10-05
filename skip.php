<?php
    require 'connection.php';
    session_start();
    $sql = "select * from candidates where candidate_srno = ".$_SESSION['candidate'].";";
    $result = mysqli_query($conn, $sql);
    $disp = mysqli_fetch_array($result);
    if($disp['interviewstatus'] == 's' || $disp['interviewstatus'] == 'd')
    {
        $sql = "update candidates set interviewstatus = 'r' where candidate_srno = ".$_SESSION['candidate'].";";
        $result = mysqli_query($conn, $sql);
    }
    else
    {
        $sql = "update candidates set interviewstatus = 's' where candidate_srno = ".$_SESSION['candidate'].";";
        $result = mysqli_query($conn, $sql);
    }
    header("location:interview.php");
?>