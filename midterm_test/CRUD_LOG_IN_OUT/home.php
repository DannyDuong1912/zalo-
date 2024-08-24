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

          echo "<a href='edit.php?Id=$res_id'> <button class='btn'>Thay Đổi Thông Tin</button></a>";
        ?>

        <a href="../CRUD_CATEGORIES/index.php"> <button class="btn">Quản Lý Danh Mục</button></a>
        <a href="../php/logout.php"> <button class="btn">Đăng Xuất</button></a>
      </div>
    </div>
    <main>
      <div class="main-box top">
        <div>
          <h1>Đây là trang dành cho người quản trị</h1>
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
              <p>Và năm nay bạn <b><?php echo $res_Age ?></b> tuổi.</p>
            </div>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
