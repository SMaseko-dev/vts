<?php // login.php
    $servername = 'localhost';
    $user = 'root';
    $pass = 'mysql';
    $data = 'fleetmanage';

    //create connection
    $con = mysqli_connect($servername, $user, $pass, $data);
    
    if(isset($_POST['Update'])){
        $reg = $_POST['reg'];
        $make = $_POST['make'];
        $model = $_POST['model'];
        $ft = $_POST['ft'];
        $tc = $_POST['tc'];
        $po = $_POST['po'];
        $db = $_POST['db'];
        $dep = $_POST['dep'];
        $driver = $_POST['driver'];

        $sql = "update ftable set registration = '$reg',make = '$make', model = '$model', fueltype = '$ft',tankcapacity = '$tc',previousowner = '$po' ,designatedbranch = '$db',department = '$dep', driver = '$driver' where registration = '$reg'";
        $result=mysqli_query($con,$sql);
        if($result){
            echo "updated successfully";
            //header("location:showdata.php");
        }else{
            die(mysqli_error($con));
        }
    }
    
?>