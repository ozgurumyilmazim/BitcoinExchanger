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
                        <h1>Available Coins</h1>

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

                  <!--  <div class="toolbar">
                        <div class="toolbar__label"><span class="hidden-xs-down">Total</span> 543 Photos</div>

                        <div class="actions">
                            <i class="actions__item zmdi zmdi-search" data-sa-action="toolbar-search-open"></i>
                            <a href="#" class="actions__item zmdi zmdi-time"></a>
                            <div class="dropdown actions__item">
                                <i class="zmdi zmdi-sort" data-toggle="dropdown"></i>

                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="#" class="dropdown-item">Last Modified</a>
                                    <a href="#" class="dropdown-item">Name</a>
                                    <a href="#" class="dropdown-item">Size</a>
                                </div>
                            </div>
                            <a href="#" class="actions__item zmdi zmdi-help-outline"></a>
                        </div>-->

                        <div class="toolbar__search">
                            <input type="text" placeholder="Search...">
                            <i class="toolbar__search__close zmdi zmdi-long-arrow-left" data-sa-action="toolbar-search-close"></i>
                        </div>
                    </div>

                    <div class="row lightbox photos">

                        <?php



                                 $url='https://shapeshift.io/getcoins';
                                 $result_array = file_get_contents($url);
                                 $result_json = json_decode($result_array , true);

                                foreach($result_json as $key => $value):
                                              // echo '<option value="'.$value['symbol'].'">'.$key.'</option>'; 

                                echo '

                                        <a href="'.$value['image'].'" class="col-md-2 col-4">
                                                    <div class="lightbox__item photos__item">
                                       <img src="'.$value['image'].' " alt="" />
                                       <h4 style="text-align:center;">'.$value['name'].'</h4>
                                            </div>
                                   </a>

                                        
                                  ';
                                                   
                             endforeach;


                             ?>

                        
                    </div>
                </div>

                    <?php include('includes/footer.php');?>

    </body>

<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1/form-components.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 15 Dec 2017 16:42:25 GMT -->
</html>