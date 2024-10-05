<?php
require 'connection.php';
session_start();
$sql = "select * from completion";
$result = mysqli_query($conn, $sql);
$disp = mysqli_fetch_array($result);
if ($disp['start'] != 2 and $disp['start'] != 4) {
    header("location:intermediate.php");
}
$temp = "p" . $_SESSION['id'];
if ($disp[$temp] == 2)
{
    header("location:done.php");
}
    $sql3 = "select * from candidates where pannel = '" . $_SESSION['id'] . "' and interviewstatus = 'i' or interviewstatus = 's';";
$result = mysqli_query($conn, $sql3);
$num = mysqli_num_rows($result);
if ($num == 0) {
    $sql3 = "update completion set p" . $_SESSION['id'] . " = 2;";
    $result = mysqli_query($conn, $sql3);
    header("location:done.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" type="text/css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>Interview</title>
</head>

<body style="background-color: #AEE5D8;">
    <header>
        <div>
            <span>
                <
            </span>
        </div>
    </header>
    <div class="container-fluid" style="margin-top: 3vh;margin-bottom: 3vh;">
        <div style="display: flex; justify-content:center ;">
            <div class="card" style="width: 18rem;">
                <?php
                require 'connection.php';
                $sql = "select * from candidates where pannel = '" . $_SESSION['id'] . "' and interviewstatus = 'i' limit 1;";
                $result = mysqli_query($conn, $sql);
                if (mysqli_num_rows($result) > 0) {
                    $disp = mysqli_fetch_array($result);
                } else {
                    $sql = "select * from candidates where pannel = '" . $_SESSION['id'] . "' and interviewstatus = 's' limit 1;";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) {
                        $disp = mysqli_fetch_array($result);
                    } else {
                        $sql = "update completion set p" . $_SESSION['id'] . " = '2';";
                        $result = mysqli_query($conn, $sql);
                        header("location:done.php");
                    }
                }
                echo "
                <img class='card-img-top' src='assets/images/candidates/candidate" . $_SESSION['id'] . $disp['photo'] . ".png' alt='Card image cap'>
                <div class='card-body'>
                    <h5 class='card-title'>" . $disp['name'] . "</h5>
                    <p class='card-text'>" . $disp['year'] . ", " . $disp['branch'] . "</p>";
                $_SESSION['candidate'] = $disp['candidate_srno'];
                ?>
                <a href='responses.php' class='btn btn-primary'>See form</a>
            </div>
        </div>
    </div>
    <div style="margin-top: 3vh;">
        <div class="row justify-content-center">
            <a href="skip.php" class="btn btn-warning" style="width:25vh;margin-bottom: 2vh;margin-right: 2vh;">Skip</a>
            <a href="completed.php" class="btn btn-success" style="width:25vh;margin-bottom: 2vh; margin-right: 2vh;">Completed</a>
        </div>
        <div class="row justify-content-center">
            <a href="fullpannel.php" class="btn btn-primary" style="width:25vh;margin-bottom: 2vh;margin-right: 2vh;">Full panel</a>
            <a href="delayed.php" class="btn btn-danger" style="width:25vh;margin-bottom: 2vh; margin-right: 2vh;">Delayed</a>
        </div>
    </div>
    </div>
</body>

</html>