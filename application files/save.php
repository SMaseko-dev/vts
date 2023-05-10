<?php // login.php
    $servername = 'localhost';
    $user = 'root';
    $pass = 'mysql';
    $data = 'fleetmanage';

    //create connection
    $con = mysqli_connect($servername, $user, $pass, $data);

    if(isset($_POST['submit'])){

        $reg = $_POST['reg'];
        $make = $_POST['make'];
        $model = $_POST['model'];
        $ft = $_POST['ft'];
        $tc = $_POST['tc'];
        $po = $_POST['po'];
        $db = $_POST['db'];
        $dep = $_POST['dep'];
        $driver = $_POST['driver'];

        $stmt = $con->prepare("insert into ftable (registration, make, model, fueltype, tankcapacity, previousowner, designatedbranch, department, driver) values (?,?,?,?,?,?,?,?,?)");
        $stmt->bind_param("sssssssss", $reg,$make,$model,$ft,$tc,$po,$db,$dep,$driver);
        $stmt->execute();
        //echo("Registration Successful");
        header("location:showdata.php");
        $stmt->close();
        $con->close();
    }
    
?>