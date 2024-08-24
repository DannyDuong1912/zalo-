<?php
//Nhận dữ liệu từ from 
$id = $_POST['category_id'];
$ten = $_POST['category_name'];
$mota = $_POST['mota'];

// kết nối cơ sở dữ liệu 
require_once '../php/config.php';

// viết lệnh sql để thêm dữ liệu
$themsql = "INSERT INTO categories
            (category_id,category_name,mota) VALUES
            ('$id','$ten','$mota')";
    //echo $themsql; exit;
    
// thực thi câu lệnh
if (mysqli_query($conn,$themsql)
){
    //in thông báo thành công 
// echo "<h1>thêm thanh công</h1>";
header("Location: lietke.php");

}

?>