<?php
//Nhận dữ liệu từ from 
$id = $_POST['category_id'];
$tensp = $_POST['category_name'];
$mota = $_POST['mota'];


// kết nối cơ sở dữ liệu 
require_once '../php/config.php';

// viết lệnh sql để thêm dữ liệu
$updatesql = "UPDATE categories SET
            category_name ='$tensp',mota='$mota' WHERE category_id=$id ";
    //echo $updatesql; exit;
    
// thực thi câu lệnh
if (mysqli_query($conn,$updatesql)
){
    //in thông báo thành công 
// echo "<h1>thêm thanh công</h1>";
header("Location: lietke.php");

}

?>