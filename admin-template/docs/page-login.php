<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Login - Vali ngo</title>
</head>

<body>
  <section class="material-half-bg">
    <div class="cover" style="background-color: #28642b;"></div>
  </section>
  <section class="login-content ">
    <div class="login-box col-md-4">
      <form class="login-form " method="post" action="login-process.php">
        <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>ADMIN SIGN IN</h3>
        <div class="form-group">
          <label class="control-label">E-MAIL</label>
          <input class="form-control" type="email" placeholder="Email" autofocus name="email" required>
        </div>
        <div class="form-group">
          <label class="control-label">PASSWORD</label>
          <input class="form-control" type="password" placeholder="Password" name="password" required>
        </div>
        <div class="form-group">
          <div class="utility">
            <!-- <div class="animated-checkbox">
              <label>
                <input type="checkbox"><span class="label-text">Stay Signed in</span>
              </label>
            </div>
            <p class="semibold-text mb-2"><a href="forget-password.php">Forget Password ?</a> -->
          </div>
        </div>
        <div class="form-group btn-container">
          <!--<input type="submit" name="change-password" value="Change Password" class="btn btn-primary btn-block">-->
          <input type="submit" name="submit" value="Sign In" class="btn btn-primary btn-block" style="background-color: #28642b;border:2px solid #28642b">
        </div>
      </form>
    </div>
  </section>
  <!-- Essential javascripts for application to work-->
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  <!-- The javascript plugin to display page loading on top-->
  <script src="js/plugins/pace.min.js"></script>
  <script type="text/javascript">
    // Login Page Flipbox control
    $('.login-content [data-toggle="flip"]').click(function() {
      $('.login-box').toggleClass('flipped');
      return false;
    });
  </script>
</body>

</html>