<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng Ký</title>
    <link rel="stylesheet" href="../style/style.css" />
  </head>
  <body>
    <div class="container">
      <div class="box form-box">

      <?php 
        include ("../php/config.php");
        if(isset($_POST['submit'])){
          $username = $_POST['username'];
          $email = $_POST['email'];
          $age = $_POST['age'];
          $password = $_POST['password'];

          // Xác minh địa chỉ email
          $verify_query = mysqli_query($conn, "SELECT Email FROM users WHERE Email='$email'");

          if (mysqli_num_rows($verify_query) !=0 ){
            echo "<div class='message'>
                  <p>Email này đã tồn tại, hãy thử dùng một email khác</p>
                  </div> <br>";
            echo "<a href='javascript:self.history.back()'> <button class='btn'>Go Back</button> </a>";
          } else {
            mysqli_query($conn, "INSERT INTO users(Username, Email, Age, Password) VALUES ('$username', '$email', '$age', '$password')") or die ("Đã có lỗi xảy ra");
            
            echo "<div class='message'>
                  <p>Đăng ký thành công</p>
                  </div> <br>";
            echo "<a href='../CRUD_LOG_IN_OUT/index.php'> <button class='btn'>Đăng Nhập Ngay</button> </a>";
          }
        } else {
      ?>

        <header>Đăng Ký</header>
        <form action="" method="post">
          <div class="field input">
            <label for="username">Tên Tài Khoản</label>
            <input
              type="text"
              name="username"
              id="username"
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
              autocomplete="off"
              required
            />
          </div>

          <div class="field input">
            <label for="password">Mật Khẩu</label>
            <input
              type="password"
              name="password"
              id="password"
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
              value="Đăng Ký"
              required
            />
          </div>

          <div class="links">
            Người anh em đã có tài khoản ?
            <a href="../CRUD_LOG_IN_OUT/index.php">Đăng Nhập Ngay</a>
          </div>
        </form>
      </div>
      <?php } ?>
    </div>
  </body>
</html>