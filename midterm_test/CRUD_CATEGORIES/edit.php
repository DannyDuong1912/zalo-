<?php
//lấy giá trị của edit
$id = $_GET['sid'];
// kết nối 
require_once '../php/config.php';

// câu lệch lấy thông tin về sinh viên $id = id
$edit_sql = "SELECT * FROM categories WHERE category_id=$id";
$result = mysqli_query($conn, $edit_sql);
$row = mysqli_fetch_assoc($result);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>From Sửa Danh Mục</h1>
        <form action="update.php" method="post">
            <input type="hidden" name="sid" value="<?php echo $id; ?>" id="">
            <div class="form-group">
              <label for="category_id">ID </label>
              <input type="text" class="form-control" id="category_id" 
              name="category_id" value= "<?php echo $row['category_id']?>">
            </div>
            <div class="form-group">
                <label for="category_name">Dạnh Mục Sản Phẩm </label>
                <input type="text" class="form-control" id="category_name" 
                name="category_name" value= "<?php echo $row['category_name']?>">
              </div>
              <div class="form-group">
                <label for="mota">Mô Tả  </label>
                <input type="text" class="form-control" id="mota" 
                name="mota" value= "<?php echo $row['mota']?>">
              </div>
            
            <!-- <div class="form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div> -->
            <br>
            <button type="submit" class="btn btn-danger">Cập Nhập Thông Tin </button>
          </form>
    </div>
</body>
</html>