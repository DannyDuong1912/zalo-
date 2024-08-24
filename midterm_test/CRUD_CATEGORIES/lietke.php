<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liệt Kê Danh Mục Sản Phẩm</title>
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
    <h1>Danh sách danh mục sản phẩm  </h1>
    <br>
    <!-- Button to Open the Modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
  Thêm Danh Mục
</button>
<a href="../CRUD_LOG_IN_OUT/home.php"><button type="button" class="btn btn-warning">Trở Về</button></a>
<br>
<br>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Danh Mục Sản Phẩm</th>
      <th scope="col">Mô Tả</th>
      <th>Thao Tác</th>
    </tr>
  </thead>
  <tbody>
<?php
require_once '../php/config.php';
// câu lệnh
$lietke_sql = "SELECT * FROM categories order by category_name,mota";
// Thực thi câu lệnh
$result = mysqli_query($conn, $lietke_sql);
// duyệt qua result và in ra 
while ($r = mysqli_fetch_assoc($result)){
    ?>
    <tr>
      <td><?php echo $r['category_id'];?></td>
      <td><?php echo $r['category_name'];?></td>
      <td><?php echo $r['mota'];?></td>
      <td><a href="edit.php?sid=<?php echo $r['category_id'];?>" class="btn btn-success">Sửa</a> 
      <a onclick="return confirm('Bạn có muốn xóa danh mục này không')" href="xoa.php?sid=<?php echo $r['category_id'];?>" class="btn btn-danger">Xóa</a></td>
    </tr>
    <?php
}
?>
  </tbody>
</table>
  
  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thêm danh mục sản phẩm</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
        <form action="them.php" method="post">
            <div class="form-group">
              <label for="category_id">ID </label>
              <input type="text" class="form-control" id="category_id" name="category_id">
            </div>
            <div class="form-group">
                <label for="category_name"> Danh Mục Sản Phẩm </label>
                <input type="text" class="form-control" id="category_name" name="category_name">
              </div>
              <div class="form-group">
                <label for="mota">Mô Tả </label>
                <input type="text" class="form-control" id="mota" name="mota">
              </div>
            
            <!-- <div class="form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div> -->
            <br>
            <button type="submit" class="btn btn-danger">Thêm Loại SP</button>
          </form>
        </div>

        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>

    </div>
  </div>
</div>
</body>
</html>
