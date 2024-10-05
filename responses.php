<?php
require 'connection.php';
        session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <title>Document</title>
    <style>
        .card{
         margin-top:3vh; 
        }
        .card-text{
            font-family: 'Open Sans', sans-serif;
            font-size: 18px;
        }
    </style>
</head>

<body style="background-color: #AEE5D8;">
    <div class="container" style="margin-bottom:3vh">
        <?php
        $sql = "select * from candidates inner join responses on candidates.response_srno = responses.response_srno where candidates.candidate_srno = '".$_SESSION['candidate']."';";
        $result = mysqli_query($conn, $sql);
        $disp = mysqli_fetch_array($result);
        echo"
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>Name</h5>
                <p class='card-text'>".$disp['name']."</p>
            </div>
        </div>
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>Year</h5>
                <p class='card-text'>".$disp['year']."</p>
            </div>
        </div>
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>Branch</h5>
                <p class='card-text'>".$disp['branch']."</p>
            </div>
        </div>
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>Which work do you find most appealing to do?</h5>
                <p class='card-text'>".$disp['q2']."</p>
            </div>
        </div>
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>Describe one word for yourself by which people should remember you.</h5>
                <p class='card-text'>".$disp['q1']."</p>
            </div>
        </div>
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>What type of skills do you want to learn with the help of our team members and what you would like to contribute to the team?</h5>
                <pre class='card-text'>".$disp['q3']."</pre>
            </div>
        </div>
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>Given a chance, which skill/technology/software would you be able to teach to a 9-year-old?</h5>
                <pre class='card-text'>".$disp['q4']."</pre>
            </div>
        </div>
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>Choose: Pen or Paper. Elaborate your answer in 5-6 lines.</h5>
                <pre class='card-text'>".$disp['q5']."</pre>
            </div>
        </div>
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>Do you have any experience of working in a team/organization/event?</h5>
                <p class='card-text'>".$disp['q6']."</p>
            </div>
        </div>
        <div class='card'>
            <div class='card-body'>
                <h5 class='card-title'>Your Achievements</h5>
                <pre class='card-text'>".$disp['q7']."</pre>
            </div>
        </div>";
        ?>
    </div>
</body>

</html>