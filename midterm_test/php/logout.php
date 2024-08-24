<?php
      session_start();
      session_destroy();
      header("Location: ../CRUD_LOG_IN_OUT/index.php");
?>