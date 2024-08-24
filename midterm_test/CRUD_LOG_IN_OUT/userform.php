<?php 
  session_start();
  include ("../php/config.php");
  if (!isset($_SESSION['valid'])){
    header("Location: index.php");
  }
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../style/style.css" />
  </head>
  <body>
    <div class="nav">
      <div class="logo">
        <p>Kiểm Tra Giữa Kỳ</p>
      </div>

      <div class="right-link">

        <?php 
          $id = $_SESSION['id'];
          $query = mysqli_query($conn, "SELECT * FROM users WHERE Id = $id");

          while ($result = mysqli_fetch_assoc($query)){
                $res_Uname = $result['Username'];
                $res_Email = $result['Email'];
                $res_Age = $result['Age'];
                $res_id = $result['Id'];
          }

          echo "<a href='edit.php?Id=$res_id'> <button class='btn btn-danger' disabled = true>Thay Đổi Thông Tin</button></a>";
        ?>

        
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" >Xem Danh Mục</button>
        <a href="../php/logout.php"> <button class="btn btn-primary">Đăng Xuất</button></a>
      </div>
    </div>
    <main>
      <div class="main-box top">
        <div>
          <h1>Đây là trang dành cho user</h1>
        </div>
        <div class="top">
          <div class="box">
            <p>
              Xin chào
              <b> <?php echo $res_Uname ?> </b>
            </p>
          </div>

          <div class="box">
            Email bạn là: <b><?php echo $res_Email ?></b>
          </div>

          <div class="bottom">
            <div class="box">
              <p>Và năm nay bạn <b><?php echo $res_Age ?></b> tuổi. Bạn chỉ có quyền xem danh mục.</p>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Tất Cả Danh Mục Sản Phẩm</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Danh Mục Sản Phẩm</th>
      <th scope="col">Mô Tả</th>
      <th>Nhóm 1 Xin Chào</th>
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
      <!-- <td><a href="edit.php?sid=<?php //echo $r['category_id'];?>" class="btn btn-success">Sửa</a> 
      <a onclick="return confirm('Bạn có muốn xóa danh mục này không')" href="xoa.php?sid=<?php //echo $r['category_id'];?>" class="btn btn-danger">Xóa</a></td> -->
    </tr>
    <?php
}
?>
  </tbody>
</table>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Thoát</button>
      </div>

    </div>
  </div>
</div>
  </body>
</html>
