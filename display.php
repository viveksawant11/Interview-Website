<?php
require 'connection.php';
session_start();
if ($_SESSION['id'] != 8 || !isset($_SESSION['id'])) {
  header("location:index.php");
}
$sql3 = "select * from completion;";
$result3 = mysqli_query($conn, $sql3);
$disp3 = mysqli_fetch_array($result3);
if ($disp3['start'] != 2) {
  header("location:intermediate.php");
}

?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="refresh" content="10">
  <title>Waiting room</title>
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
      font-size:20px;
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
        <p class="text-center">Interviews have started please await your turn</p>
      </div>
      <div class="row people">
        <div class="col-md-6 col-lg-4 item">
          <div class="box">
            <h4 style="margin-bottom:30px">Pannel 1 : CSCR01<h4>
                <p class="title">ONGOING</p>
                <?php
                require 'connection.php';
                $sql3 = "select * from completion;";
                $result3 = mysqli_query($conn, $sql3);
                $disp3 = mysqli_fetch_array($result3);
                if ($disp3['p1'] == 2 && $disp3['start'] == 2) {
                  echo "<h3 class='name' style='background-color:#15C818'>ALL INTERVIEWS COMPLETED</h3>";
                } else {
                  $sql = "select * from candidates where pannel = '1' and interviewstatus = 'i'";
                  $result = mysqli_query($conn, $sql);
                  $num = mysqli_num_rows($result);
                  if ($num == 0) {
                    $sql1 = "select * from candidates where pannel = '1' and interviewstatus = 's' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '1' and interviewstatus = 's' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else if ($num == 1) {
                    $sql1 = "select * from candidates where pannel = '1' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '1' and interviewstatus = 's' limit 1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else {
                    $sql1 = "select * from candidates where pannel = '1' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '1' and interviewstatus = 'i' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  }
                }
                ?>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 item">
          <div class="box">
            <h4 style="margin-bottom:30px">Pannel 2 : CSCR02<h4>
                <p class="title">ONGOING</p>
                <?php
                require 'connection.php';
                $sql3 = "select * from completion;";
                $result3 = mysqli_query($conn, $sql3);
                $disp3 = mysqli_fetch_array($result3);
                if ($disp3['p2'] == 2 && $disp3['start'] == 2) {
                  echo "<h3 class='name' style='background-color:#15C818'>ALL INTERVIEWS COMPLETED</h3>";
                } else {
                  $sql = "select * from candidates where pannel = '2' and interviewstatus = 'i'";
                  $result = mysqli_query($conn, $sql);
                  $num = mysqli_num_rows($result);
                  if ($num == 0) {
                    $sql1 = "select * from candidates where pannel = '2' and interviewstatus = 's' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '2' and interviewstatus = 's' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else if ($num == 1) {
                    $sql1 = "select * from candidates where pannel = '2' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '2' and interviewstatus = 's' limit 1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else {
                    $sql1 = "select * from candidates where pannel = '2' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '2' and interviewstatus = 'i' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  }
                }
                ?>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 item">
          <div class="box">
            <h4 style="margin-bottom:30px;color:red">Pannel 3 : Interviews rerouted to CSCR01<h4>
                <p class="title">ONGOING</p>
                <?php
                require 'connection.php';
                $sql3 = "select * from completion;";
                $result3 = mysqli_query($conn, $sql3);
                $disp3 = mysqli_fetch_array($result3);
                if ($disp3['p3'] == 2 && $disp3['start'] == 2) {
                  echo "<h3 class='name' style='background-color:#15C818'>ALL INTERVIEWS COMPLETED</h3>";
                } else {
                  $sql = "select * from candidates where pannel = '3' and interviewstatus = 'i'";
                  $result = mysqli_query($conn, $sql);
                  $num = mysqli_num_rows($result);
                  if ($num == 0) {
                    $sql1 = "select * from candidates where pannel = '3' and interviewstatus = 's' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '3' and interviewstatus = 's' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else if ($num == 1) {
                    $sql1 = "select * from candidates where pannel = '3' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '3' and interviewstatus = 's' limit 1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else {
                    $sql1 = "select * from candidates where pannel = '3' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '3' and interviewstatus = 'i' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  }
                }
                ?>
          </div>
        </div>
        <div class="col-md-1 col-lg-2 item">
        </div>
        <div class="col-md-6 col-lg-4 item">
          <div class="box">
            <h4 style="margin-bottom:30px">Pannel 4 : CSCR04<h4>
                <p class="title">ONGOING</p>
                <?php
                require 'connection.php';
                $sql3 = "select * from completion;";
                $result3 = mysqli_query($conn, $sql3);
                $disp3 = mysqli_fetch_array($result3);
                if ($disp3['p4'] == 2 && $disp3['start'] == 2) {
                  echo "<h3 class='name' style='background-color:#15C818'>ALL INTERVIEWS COMPLETED</h3>";
                } else {
                  $sql = "select * from candidates where pannel = '4' and interviewstatus = 'i'";
                  $result = mysqli_query($conn, $sql);
                  $num = mysqli_num_rows($result);
                  if ($num == 0) {
                    $sql1 = "select * from candidates where pannel = '4' and interviewstatus = 's' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '4' and interviewstatus = 's' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else if ($num == 1) {
                    $sql1 = "select * from candidates where pannel = '4' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '4' and interviewstatus = 's' limit 1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else {
                    $sql1 = "select * from candidates where pannel = '4' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '4' and interviewstatus = 'i' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  }
                }
                ?>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 item">
          <div class="box">
            <h4 style="margin-bottom:30px">Pannel 5 : FECR10<h4>
                <p class="title">ONGOING</p>
                <?php
                require 'connection.php';
                $sql3 = "select * from completion;";
                $result3 = mysqli_query($conn, $sql3);
                $disp3 = mysqli_fetch_array($result3);
                if ($disp3['p5'] == 2 && $disp3['start'] == 2) {
                  echo "<h3 class='name' style='background-color:#15C818'>ALL INTERVIEWS COMPLETED</h3>";
                } else {
                  $sql = "select * from candidates where pannel = '5' and interviewstatus = 'i'";
                  $result = mysqli_query($conn, $sql);
                  $num = mysqli_num_rows($result);
                  if ($num == 0) {
                    $sql1 = "select * from candidates where pannel = '5' and interviewstatus = 's' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '5' and interviewstatus = 's' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else if ($num == 1) {
                    $sql1 = "select * from candidates where pannel = '5' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '5' and interviewstatus = 's' limit 1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  } else {
                    $sql1 = "select * from candidates where pannel = '5' and interviewstatus = 'i' limit 1";
                    $result1 = mysqli_query($conn, $sql1);
                    $disp1 = mysqli_fetch_array($result1);
                    echo "<h3 class='name'>" . $disp1['name'] . "</h3><p class='description'>" . $disp1['year'] . "," . $disp1['branch'] . "</p>";
                    $sql2 = "select * from candidates where pannel = '5' and interviewstatus = 'i' limit 1,1";
                    $result2 = mysqli_query($conn, $sql2);
                    $disp2 = mysqli_fetch_array($result2);
                    echo "<br><p class='title'>UP NEXT</p><h3 class='name'>" . $disp2['name'] . "</h3><p class='description'>" . $disp2['year'] . "," . $disp2['branch'] . "</p>";
                  }
                }
                ?>
          </div>
        </div>

      </div>

      <div class="row people">

      </div>

    </div>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>