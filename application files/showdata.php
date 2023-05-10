<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,
        initial-scale=1.0">
        <title>show data</title>
        <style>
            body{
                background-color:bisque;
                font-family:sans-serif;
            }
            table, th, td{
                border: 1px solid;
                border-color:black;
                font-size: medium;
            }
        </style>
    </head>
    <body>
        <h1>Fleet Management System (Table)</h1>
        <br>
        <table>
            <thead>
            <tr>
            <th>registration</th>
            <th>make</th>
            <th>model</th>
            <th>fuel type</th>
            <th>tank capacity</th>
            <th>previous owner</th>
            <th>designated branch</th>
            <th>department</th>
            <th>driver</th>
            </tr>
            </thead>
            <tbody>
                <?php
                $servername = 'localhost';
                $user = 'root';
                $pass = 'mysql';
                $data = 'fleetmanage';
            
                //create connection
                $con = mysqli_connect($servername, $user, $pass, $data);

                $sql = "SELECT * FROM ftable";
                $result = mysqli_query($con,$sql);
                if ($result){
                    while($row= mysqli_fetch_assoc($result)){
                        $reg=$row["registration"];
                        $make=$row["make"];
                        $model=$row["model"];
                        $ft=$row["fueltype"];
                        $tc=$row["tankcapacity"];
                        $pv=$row["previousowner"];
                        $db=$row["designatedbranch"];
                        $dep=$row["department"];
                        $dr=$row["driver"];
                    echo "<tr>
                        <td>" .$reg. "</td>
                        <td>" .$make. "</td>
                        <td>" .$model. "</td>
                        <td>" .$ft. "</td>
                        <td>" .$tc. "</td>
                        <td>" .$pv. "</td>
                        <td>" .$db. "</td>
                        <td>" .$dep. "</td>
                        <td>" .$dr. "</td>
                        <td>
                        <button><a href='update.html?updateid=".$reg."'>Update</a></button>
                        </td>
                            </tr>";
                }
                }
                ?>
            </tbody>
        </table>
        <br>
        Click Here to <a href="fleethome.html">Add Vehicle</a>
        <br>
        <br>
        Click here to <a href="logout.php">Logout</a>
    </body>
    </html>