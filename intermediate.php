<?php
require 'connection.php';
$sql = "select * from completion";
        $result = mysqli_query($conn, $sql);
        $disp = mysqli_fetch_array($result);
if($disp['start'] == 2)
        {
          header("location:display.php");
        }
        else if($disp['start'] == 4)
        {
          header("location:display2.php");
        }
?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- <meta http-equiv="refresh" content="10"> -->
  <title>Untitled</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    .team-boxed {
      color: #313437;
      background-color: #eef4f7;
      margin: 0;
    }

    .team-boxed p {
      color: #7d8285;
    }

    .team-boxed h2 {
      font-weight: bold;
      padding-top: 20px;
      color: inherit;
    }

    @media (max-width:767px) {
      .team-boxed h2 {
        margin-bottom: 25px;
        padding-top: 25px;
        font-size: 24px;
      }
    }

    .team-boxed .intro {
      font-size: 16px;
      max-width: 500px;
      margin: 0 auto;
    }

    .team-boxed .intro p {
      margin-bottom: 0;
    }

    .team-boxed .people {
      padding: 30px 0;
    }

    .team-boxed .item {
      text-align: center;
    }

    .team-boxed .item .box {
      text-align: center;
      padding: 20px;
      background-color: #fff;
      margin-bottom: 20px;
    }

    .team-boxed .item .name {
      font-weight: bold;
      color: inherit;
    }

    .team-boxed .item .title {
      text-transform: uppercase;
      font-weight: bold;
      color: #0034B6;
      font-size: 13px;
    }

    .team-boxed .item .description {
      font-size: 15px;
      margin-bottom: 20px;
    }
  </style>


</head>

<body style="background-color: #eef4f7;">
  <div class="team-boxed">
    <div class="container">
      <div class="intro">
        <div style="display:flex;justify-content: center; padding-top:20px"><img src="assets/images/logo.png" style="height:20vh; width:20vh;"></div>
        <h2 class="text-center">Team Mavericks Interviews</h2>
        <p class="text-center">Interviews will begin in few minutes</p>
        <?php
        
        $sql = "select * from completion";
        $result = mysqli_query($conn, $sql);
        $disp = mysqli_fetch_array($result);
        if ($disp['start'] == 1 || $disp['start'] == 3) {
          echo"<div style='text-align: center;margin-top:20vh;color:red'><h1> TECHNICAL TIMEOUT</h1><div>";
        } 
        ?>

          

      </div>


    </div>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>