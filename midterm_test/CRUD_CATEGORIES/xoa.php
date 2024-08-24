<?php
    // Kiểm tra nếu 'maDM' tồn tại trong URL
    if(isset($_GET['sid'])) {
        //lấy dữ liệu id cần xóa 
        $id = $_GET['sid'];

        // kết nối 
        require_once '../php/config.php';
        
        // Câu lệnh xóa một danh mục
        $xoa_sql = "DELETE FROM categories WHERE category_id='$id'";

        // Thực thi câu lệnh SQL
        if(mysqli_query($conn , $xoa_sql)) {
            // Chuyển hướng về trang liệt kê sau khi xóa thành công
            header("Location: ./lietke.php");
            exit(); // Dừng kịch bản khi đã chuyển hướng
        } else {
            // Xử lý lỗi SQL
            echo "Lỗi SQL: " . mysqli_error($conn);
        }
    } else {
        // Nếu 'sid' không tồn tại trong URL, hiển thị thông báo lỗi
        echo "Lỗi: ID không được cung cấp.";
    }
?>
