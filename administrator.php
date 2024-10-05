<?php
require 'connection.php';
session_start();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($_POST['num'] == 2) {
        $sql1 = "select * from candidates where interviewstatus ='i';";
        $result = mysqli_query($conn, $sql1);
        $num = mysqli_num_rows($result);
        if ($num == 68) {
            $sql2 = "update completion set p1='1', p2='1', p3='1', p4='1', p5='1';";
            $result = mysqli_query($conn, $sql2);
        }
    }
    if($_POST['num'] == 4)
    {
        $sql1 = "select * from candidates where interviewstatus ='i' and pannel = '6' or pannel = '7';";
        $result = mysqli_query($conn, $sql1);
        $num = mysqli_num_rows($result);
        if ($num >= 8) {
            $sql2 = "update completion set p6='1', p7='1';";
            $result = mysqli_query($conn, $sql2);
        }
    }
    $sql = "update completion set start = '" . $_POST['num'] . "';";
    $result = mysqli_query($conn, $sql);
    if ($_SESSION['id'] != 8) {
        //header("location:index.php");
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Admin pannel</title>
</head>

<body>
    <div class="container">

        <div class="jumbotron">
            <hr>
            <div style="display:flex;justify-content:center">
                <form action="administrator.php" method="POST">
                    <div class="row">
                        <h3> Change interview status</h3>
                    </div>
                    <div class="row" style="display: block; width: max-content; margin-top:2vh">
                        <input class="form-control" type="number" name="num" placeholder="Enter status">
                    </div>
                    <div class="row" style="display: block; width: max-content; margin-top:2vh">
                        <button class="btn btn-success">Submit</button>
                    </div>
                </form>
            </div>
            <hr>
        </div>

    </div>

</body>

</html>