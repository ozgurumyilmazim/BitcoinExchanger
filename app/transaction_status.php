<!DOCTYPE html>
<html lang="en">
    

<?php include('includes/head.php');?>



	
    <body data-sa-theme="1">
        <main class="main">
           <!-- <div class="page-loader">
                <div class="page-loader__spinner">
                    <svg viewBox="25 25 50 50">
                        <circle cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
                    </svg>
                </div>
            </div>
			-->
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

                 <?php

             if(!isset($_GET['Deposit_status']))
             {
                
        ?>
                     <form action="" method="GET">
                      <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">This returns the status of the most recent deposit transaction to the address.</h4>
                        <h6 class="card-subtitle"></h6>
                    
                <div class="alert alert-info" role="alert"><i class="glyphicon glyphicon-exclamation-sign"></i>
                   <h3> Check Status of deposit to address</h3>
                  </div>

                             <form action=""  method="GET" >
                            <div class="card">
                            <div class="card-body">
                            


                            
                            <div class="form-group">
                            <h5><b>Enter the deposit address to look up: <b></h5>
                      

                      <textarea class="form-control" name="deposit_address" textarea-autosize required ></textarea>
                                <i class="form-group__bar"></i>
                                
                            </div>

                            
                            <br>
                           
                          

                            
                           <button  type="submit" name="Deposit_status" class="btn btn-success" >Deposit status</button>
                          </div>
                    
                
                 
                        </div>
                    </div>
                </div>
                </form>
            <?php
                

                }else



                     {


                        $deposit_address=$_GET['deposit_address'];

                       $mainurl="https://shapeshift.io/txStat/$deposit_address";
                       $get_deposit_address= file_get_contents($mainurl);
                       $get_deposit_addresss_json=json_decode($get_deposit_address,true);

                       var_dump($get_deposit_addresss_json);







                      }





              ?>


                <?php include('includes/footer.php');?>

    </body>

<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1/form-components.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 15 Dec 2017 16:42:25 GMT -->
</html>