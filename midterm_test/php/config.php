<?php 
    if(session_status() !== PHP_SESSION_ACTIVE) {
        session_start();
    }    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $db = "midterm_test";
    global $conn;
    $conn = mysqli_connect($servername,$username, $password);

    if (!$conn){
        die ('Không thể kết nối: ' . mysqli_connect_error());
    }
    mysqli_select_db($conn, $db);
?>