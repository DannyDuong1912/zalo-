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
    <title>Sửa Tài Khoản</title>
    <link rel="stylesheet" href="../style/style.css" />
  </head>
  <body>
    <div class="nav">
      <div class="logo">
        <p><a href="home.html">Kiểm Tra Giữa Kỳ</a></p>
      </div>

      <div class="right-link">
        <a href="../CRUD_LOG_IN_OUT/home.php">Trở Về</a>
        <a href="../php/logout.php"> <button class="btn">Đăng Xuất</button></a>
      </div>
    </div>

    <div class="container">
      <div class="box form-box">

        <?php 
          if (isset($_POST['submit'])){
            $username = $_POST['username'];
            $email = $_POST['email'];
            $age = $_POST['age'];

            $id = $_SESSION['id'];
            $edit_query = mysqli_query($conn, "UPDATE users SET Username='$username', Email='$email', Age='$age' WHERE Id=$id") or die ("Lỗi cập nhật");
            
            if ($edit_query){
              echo "<div class='message'>
                  <p>Cập nhật thông tin thành công</p>
                  </div> <br>";
            echo "<a href='home.php'> <button class='btn'>Trở Về</button> </a>";
            }
          } else {

            $id = $_SESSION['id'];
            $query = mysqli_query($conn, "SELECT * FROM users WHERE Id=$id");

            while ($result = mysqli_fetch_assoc($query)){
              $res_Uname = $result['Username'];
              $res_Email = $result['Email'];
              $res_Age = $result['Age'];
            }
        ?>

        <header>Sửa Người Dùng</header>
        <form action="" method="post">
          <div class="field input">
            <label for="username">Tên Tài Khoản</label>
            <input
              type="text"
              name="username"
              id="username"
              value="<?php echo $res_Uname; ?>"
              autocomplete="off"
              required
            />
          </div>

          <div class="field input">
            <label for="email">Email</label>
            <input
              type="text"
              name="email"
              id="email"
              value="<?php echo $res_Email; ?>"
              autocomplete="off"
              required
            />
          </div>

          <div class="field input">
            <label for="age">Tuổi</label>
            <input
              type="number"
              name="age"
              id="age"
              value="<?php echo $res_Age; ?>"
              autocomplete="off"
              required
            />
            <!--autocomplete="off" nghĩa là báo cho browser biết rằng không nên gợi ý hoặc tự điền hộ người dùng vì đây là đăng ký-->
          </div>

          <div class="field">
            <input
              type="submit"
              class="btn"
              name="submit"
              value="Cập Nhật"
              required
            />
          </div>
        </form>
      </div>
      <?php } ?>
    </div>
  </body>
</html>
