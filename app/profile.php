<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1/empty.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 15 Dec 2017 16:46:03 GMT -->
<?php include('includes/head.php');?>

    <body data-sa-theme="1">
        <main class="main">
           <!-- <div class="page-loader">
                <div class="page-loader__spinner">
                    <svg viewBox="25 25 50 50">
                        <circle cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
                    </svg>
                </div>-->
            </div>

<?php include('includes/header.php');?>


<?php include('includes/menu.php');?>


            <section class="content">
                <div class="content__inner content__inner--sm">
                    <header class="content__title">
                        <h1>Username : <?php echo $_SESSION ['username'];?></h1>
                     
                        <div class="actions">
                            <a href="#" class="actions__item zmdi zmdi-trending-up"></a>
                            <a href="#" class="actions__item zmdi zmdi-check-all"></a>

                            <div class="dropdown actions__item">
                                <i data-toggle="dropdown" class="zmdi zmdi-more-vert"></i>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="#" class="dropdown-item">Refresh</a>
                                    <a href="#" class="dropdown-item">Manage Widgets</a>
                                    <a href="#" class="dropdown-item">Settings</a>
                                </div>
                            </div>
                        </div>
                    </header>

                <!--    <div class="card profile">
                        <div class="profile__img">
                            <img src="demo/img/contacts/2.jpg" alt="">

                            <a href="#" class="zmdi zmdi-camera profile__img__edit"></a>
                        </div>

                        <div class="profile__info">
                            <p></p>

                            <ul class="icon-list">
                                <li><i class="zmdi zmdi-phone"></i> 308-360-8938</li>
                                <li><i class="zmdi zmdi-email"></i> malinda@inbound.plus</li>
                                <li><i class="zmdi zmdi-twitter"></i> @mallinda-hollaway</li>
                            </ul>
                        </div>
                    </div>-->

                   
                              <div class="card">
                        <div class="card-body">
                           
    

                                <br>

                               <?php

                               $username = mysql_real_escape_string($_SESSION['username']);
                               $user_id = $_SESSION['user_id'];


                              $sql="SELECT * FROM users WHERE username = '$username' AND user_id = '$user_id' ";
                              $query= mysqli_query($connection,$sql);
                              $row = mysqli_fetch_assoc($query);

                             
                              $errors = array();

                              if(isset($_POST['submit']))
                              {

                                $submit=$_POST['submit'];
                                $username =mysql_real_escape_string($_POST['username']);
                                $password    =($_POST['password']);
                                $password = md5($password);

                                $sql = "UPDATE  user SET username = '$username', 
                                 password = '$password' WHERE  user_id = '$user_id'";
                                  $query=mysqli_query($connection,$sql);

                                 if($query === TRUE) {

                                   $em[] = "Update Succesfull";

                                  } else {
                                     $em[] = "invalid : retry";
                                  }


                              }
                            

                            ?>

                                <div class="col-sm-6">
                                    <form action="profile.php" method="POST">
                                    <div class="form-group">
                                        <label>Change username</label>
                                        <input type="text" name="username" value="<?php echo $row["username"];?>" class="form-control is-valid" >
                                        <i class="form-group__bar"></i>
                                    </div>

                                    <div class="form-group">
                                        <label>Change password</label>
                                        <input type="password" name="password" value="<?php echo $row["password"];?>" class="form-control is-valid" >
                                        <i class="form-group__bar"></i>
                                    </div>
                                    <button  type="submit" name="submit" class="btn btn-success">Update</button>
                                </form>

                                </div>
                            </div>

                            </div>
                        </div>
                    </div>
                </div>

              
     <?php include('includes/footer.php');?>

    </body>

<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1/form-components.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 15 Dec 2017 16:42:25 GMT -->
</html>