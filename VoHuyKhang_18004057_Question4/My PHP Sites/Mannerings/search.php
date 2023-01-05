<?php include "connection.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Question 4</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="main">
        <form action="" method="POST">
            <h1>Mannerings Estate Agency</h1>
            <h2>Search for Properties by Town</h2>
            <a href="">Enter</a> a Town <input type="text" name="txtTown" id="txtTown"></br>
            <input style="margin: 10px;" type="submit" name="Search" id="query" value="Search">
        </form>
        <?php
        if (isset($_POST['Search'])) {
            $search = $_POST["txtTown"];

            if ($search == "") {
                echo "Vui lòng nhập thông tin tìm kiếm";
            } else {
        ?>
                <table border="1">
                    <tr>
                        <td>Ref No</td>
                        <td>Town</td>
                        <td>Type</td>
                        <td>Bedrooms</td>
                        <td>Price</td>
                        <td>Heating</td>
                        <td>Garage</td>
                    </tr>
                    <?php
                    if ($conn) {
                        $sql = "SELECT * FROM houses WHERE town like '%$search%'";
                        $query = mysqli_query($conn, $sql);
                        if (mysqli_num_rows($query) > 0) {
                            $tam = 0;
                            while ($row = mysqli_fetch_assoc($query)) {
                    ?>
                                <tr>
                                    <td><?= $row['REFNO']; ?></td>
                                    <td><?= $row['TOWN']; ?></td>
                                    <td><?= $row['TYPE']; ?></td>
                                    <td><?= $row['REDROOMS']; ?></td>
                                    <td><?= $row['PRICE']; ?></td>
                                    <td><?= $row['HEATING']; ?></td>
                                    <td><?= $row['GARAGE']; ?></td>
                                </tr>
            <?php
                            }
                        } else {
                            echo "Table không có dữ liệu";
                        }
                    } else {
                        echo "Không kết nối đến CSDL được";
                    }
                }
            }
            ?>
            </table>
    </div>

</body>

</html>