<?php 
  session_start();
?>

<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng Nhập</title>
    <link rel="stylesheet" href="../style/style.css" />
  </head>
  <body>
    <div class="container">
      <div class="box form-box">
        <?php 
          include ("../php/config.php");
          if (isset($_POST['submit'])){
            $email = mysqli_real_escape_string($conn, $_POST['email']);
            $password = mysqli_real_escape_string($conn, $_POST['password']);

            $result = mysqli_query($conn, "SELECT * FROM users WHERE Email='$email' AND Password='$password' ") or die ("Mật khẩu và tài khoản không khớp");
            $rows = mysqli_fetch_assoc($result);

            if(is_array($rows) && !empty($rows)){
              $_SESSION['valid'] = $rows['Email'];
              $_SESSION['username'] = $rows['Username'];
              $_SESSION['age'] = $rows['Age'];
              $_SESSION['id'] = $rows['Id'];

              // Kiểm tra vai trò của người dùng
              $role = $rows['role'];
              if ($role == 'admin') {
                  header("Location: ./home.php"); // Chuyển hướng admin đến trang quản trị
                  exit(); //khi xác định 1 người là user hay admin thì ta không cần phải tiếp tục kiểm tra các điều kiện khác nữa. Đặt exit() để dừng luôn câu lệnh tại đây.
              } else {
                  header("Location: userform.php"); // Chuyển hướng user đến trang người dùng
                  exit();
              }
            } else {
              // Xử lý khi thông tin đăng nhập không chính xác
              echo "<div class='message'>
                  <p>Sai tên đăng nhập hoặc mật khẩu. Hãy thử lại</p>
                  </div> <br>";
              echo "<a href='index.php'> <button class='btn'>Go Back</button> </a>";
            }
          } else {

        ?>
        <header>Đăng Nhập</header>
        <form action="" method="post">
            <div class="field input">
                <label for="email">Email</label>
                <input type="text" name="email" id="email" autocomplete="off" required>
            </div>

            <div class="field input">
                <label for="password">Mật Khẩu</label>
                <input type="password" name="password" id="password" required>
            </div>

            <div class="field">
                <input type="submit" class="btn" name="submit" value="Đăng Nhập" required>
            </div>

            <div class="links">
                Người anh em chưa có tài khoản? <a href="register.php">Đăng Ký Ngay</a>
            </div>
        </form>
        <?php } ?>
      </div>
    </div>
  </body>
</html>
