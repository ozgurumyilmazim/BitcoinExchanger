<?php

session_start();


include('includes/db.php');

$em=array();

if(isset($_POST['submit'])){

$_SESSION['fname']=$_POST['fname'];
$_SESSION['lname']=$_POST['lname'];
$_SESSION['email']=$_POST['email'];
$_SESSION['password']=$_POST['password'];
$_SESSION['c_password']=$_POST['c_password'];

   

   

    if(strlen($_POST['fname'])<3) {
     $em[] = "First name must be more than three characters";
    } 

    if(strlen($_POST['lname'])<3) {
      $em[] = "Last name must be more than three characters";
    }

    elseif( $_POST['password'] != $_POST['c_password'] ) {
      $em[] = "Password & Confirm passowrd Does not Match";
    }

    elseif(strlen($_POST['password'])<6 ) {
      $em[] = "Password characters must be greater than 6";
    }
    elseif(strlen($_POST['c_password'])<6 ) {
      $em[] = "confirm Password characters must be greater than 6";
    }
    elseif(!isUnique($_POST['email'])) {
      $em[] = "Email already exist";
    }

   
   else  {

               $sql2 = "INSERT INTO user (username, email, password, com_code) VALUES ('$username', '$email', '$password', '$com_code')";
             $result2 = mysqli_query($mysqli,$sql2) or die(mysqli_error());

          if($result2)
            {
         $to = $email;
         $subject = "Confirmation from TutsforWeb to $username";
         $header = "TutsforWeb: Confirmation from TutsforWeb";
         $message = "Please click the link below to verify and activate your account. rn";
         $message .= "http://www.exampleDomain.com/confirm.php?passkey=$com_code";

          $sentmail = mail($to,$subject,$message,$header);

         if($sentmail)
        {
        echo "Your Confirmation link Has Been Sent To Your Email Address.";
        }
      else
       {
      echo "Cannot send Confirmation link to your e-mail address";
         }
     

         








       }

    
/*if(strlen($_POST['fname'])<3) {
   header("location:signup.php?em=".urlencode("First name must be more than three characters"));
   exit();
    } */
    


}

?>

<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 15 Dec 2017 16:46:03 GMT -->
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Vendor styles -->
        <link rel="stylesheet" href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="vendors/bower_components/animate.css/animate.min.css">

        <!-- App styles -->
        <link rel="stylesheet" href="css/app.min.css">
    </head>

    <body data-sa-theme="1">
        <div class="login">

            <!-- Login -->
            <div class="login__block active" id="l-login">
                <div class="login__block__header">
               
                    <i class="zmdi zmdi-account-circle"></i>
                     <?php if($em) {

                foreach ($em as $key => $value) {
                  echo '<div class="alert alert-danger" role="alert">
                  <i class="glyphicon glyphicon-exclamation-sign"></i>
                  '.$value.'</div>';                 
                  }
                } ?>


                    <div class="actions actions--inverse login__block__actions">
                        <div class="dropdown">
                            <i data-toggle="dropdown" class="zmdi zmdi-more-vert actions__item"></i>

                           <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" data-sa-action="login-switch" data-sa-target="" href="index.php">Already have an account?</a>
                                <a class="dropdown-item" data-sa-action="login-switch" data-sa-target="" href="forget_password.php">Forgot password?</a>
                            </div>
                        </div>
                    </div>
                </div>
                   <form method="POST" action="<?php echo $_SERVER['PHP_SELF'] ?>">
                <div class="login__block__body">
                    <div class="form-group">
                        <input type="text" class="form-control text-center" name="fname" value="<?php echo @$_SESSION['fname']; ?>" placeholder="First Name" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control text-center" name="lname" value="<?php echo @$_SESSION['lname']; ?>" placeholder="Last Name" required >
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control text-center" name="email" value="<?php echo @$_SESSION['email']; ?>" placeholder="Email Address" required >
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control text-center" name="password" value="<?php echo @$_SESSION['password']; ?>" placeholder="Password" required >
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control text-center" name="c_password" value="<?php echo @$_SESSION['c_password']; ?>" placeholder="Confirm" required  >
                    </div>

                    <button  type="submit" name="submit" class="btn btn--icon login__block__btn"><i class="zmdi zmdi-long-arrow-right"></i></button>
                </div>
            </div>
              </form>
            <!-- Register -->
            <div class="login__block" id="l-register">
                <div class="login__block__header">
                    <i class="zmdi zmdi-account-circle"></i>
                    Create an account

                    <div class="actions actions--inverse login__block__actions">
                        <div class="dropdown">
                            <i data-toggle="dropdown" class="zmdi zmdi-more-vert actions__item"></i>

                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" data-sa-action="login-switch" data-sa-target="#l-login" href="#">Already have an account?</a>
                                <a class="dropdown-item" data-sa-action="login-switch" data-sa-target="#l-forget-password" href="#">Forgot password?</a>
                            </div>
                        </div>
                    </div>
                </div>
                 
                <div class="login__block__body">
                    <div class="form-group">
                        <input type="text" class="form-control text-center" placeholder="Name">
                    </div>

                    <div class="form-group form-group--centered">
                        <input type="text" class="form-control text-center" placeholder="Email Address">
                    </div>

                    <div class="form-group form-group--centered">
                        <input type="password" class="form-control text-center" placeholder="Password">
                    </div>

                    <div class="form-group">
                        <label class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-indicator"></span>
                            <span class="custom-control-description">Accept the license agreement</span>
                        </label>
                    </div>

                    <a href="index-2.html" class="btn btn--icon login__block__btn"><i class="zmdi zmdi-plus"></i></a>
                </div>
            </div>
              
            <!-- Forgot Password -->
            <div class="login__block" id="l-forget-password">
                <div class="login__block__header">
                    <i class="zmdi zmdi-account-circle"></i>
                    Forgot Password?

                    <div class="actions actions--inverse login__block__actions">
                        <div class="dropdown">
                            <i data-toggle="dropdown" class="zmdi zmdi-more-vert actions__item"></i>

                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" data-sa-action="login-switch" data-sa-target="#l-login" href="#">Already have an account?</a>
                                <a class="dropdown-item" data-sa-action="login-switch" data-sa-target="#l-register" href="#">Create an account</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="login__block__body">
                    <p class="mb-5">Lorem ipsum dolor fringilla enim feugiat commodo sed ac lacus.</p>

                    <div class="form-group">
                        <input type="text" class="form-control text-center" placeholder="Email Address">
                    </div>

                    <a href="index-2.html" class="btn btn--icon login__block__btn"><i class="zmdi zmdi-check"></i></a>
                </div>
            </div>
        </div>

        <!-- Older IE warning message -->
            <!--[if IE]>
                <div class="ie-warning">
                    <h1>Warning!!</h1>
                    <p>You are using an outdated version of Internet Explorer, please upgrade to any of the following web browsers to access this website.</p>

                    <div class="ie-warning__downloads">
                        <a href="http://www.google.com/chrome">
                            <img src="img/browsers/chrome.png" alt="">
                        </a>

                        <a href="https://www.mozilla.org/en-US/firefox/new">
                            <img src="img/browsers/firefox.png" alt="">
                        </a>

                        <a href="http://www.opera.com">
                            <img src="img/browsers/opera.png" alt="">
                        </a>

                        <a href="https://support.apple.com/downloads/safari">
                            <img src="img/browsers/safari.png" alt="">
                        </a>

                        <a href="https://www.microsoft.com/en-us/windows/microsoft-edge">
                            <img src="img/browsers/edge.png" alt="">
                        </a>

                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="img/browsers/ie.png" alt="">
                        </a>
                    </div>
                    <p>Sorry for the inconvenience!</p>
                </div>
            <![endif]-->

        <!-- Javascript -->
        <!-- Vendors -->
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/popper.js/dist/umd/popper.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- App functions and actions -->
        <script src="js/app.min.js"></script>
    </body>

<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 15 Dec 2017 16:46:03 GMT -->
</html>