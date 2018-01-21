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
                <div class="content__inner">
                    <header class="content__title">
                        <h1></h1>

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


                      <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Activity Log</h4>
                        <h6 class="card-subtitle"></h6>

                        <div class="table-responsive">

                            <table id="data-table" class="table" >
                                <thead class="">
                                    <tr>
                                        

                                        <th>User</th>
                                        <th>activity</th>
                                        <th>date</th>
                                       
                                        
                                    </tr>
                                </thead>
                         <?php
                        $sql= "SELECT * FROM user_log 
                               ORDER BY date 
                               DESC LIMIT 10
                               ";
                        $query= mysqli_query($connection,$sql);
                       while($row = mysqli_fetch_assoc($query)){

                        ?>
                                <tbody>
                                    <tr>
                                      

                                        <td><?php echo $row["username"];?></td>
                                        <td><?php echo $row["activity"];?></td>
                                        <td><?php echo $row["date"];?></td>
                                      
                                    </tr>
                                    
                                </tbody>
                                 <?php 
                            } 
                         ?>
                      
                            </table>
                        </div>
                    </div>
                </div>

                <?php include('includes/footer.php');?>

    </body>

<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1/form-components.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 15 Dec 2017 16:42:25 GMT -->
</html>