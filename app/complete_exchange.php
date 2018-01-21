<!DOCTYPE html>
<html lang="en">
    

<?php include('includes/head.php');?>

<?php


       $rate = null;
        $address = null ;
        $symbol = null ;
        $limit = null;
        $minimum = null ;
        $maxLimit = null;
        $minerFee = null;
        $pair = null;
        $amount = null;
        $x=null;
        $return_address = null;
        $symbol = null;
        $Deposit=null;

      if(isset($_GET['r']))
      {
        $Deposit=$_GET['dp'] ;
        $rate = $_GET['r'];
        $address =  $_GET['a'];
        $symbol =  $_GET['s'] ;
        $limit =  $_GET['l'];
        $minimum =  $_GET['mn'];
        $maxLimit =  $_GET['mx'];
        $minerFee =  $_GET['mf'];
         $pair =  $_GET['pair'];
        $amount =  $_GET['amount'];
         $x=$_GET['x'];
         $return_address =  $_GET['return_address'];
       }

?>


	
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


                      <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Transactions</h4>
                        <h6 class="card-subtitle"></h6>
                    <?php
         error_reporting(0);
        //confirm trnx
        if(!isset($_POST['confirm_exchange'])){
          
        
        
?>
                <div class="alert alert-info" role="alert"><i class="glyphicon glyphicon-exclamation-sign"></i>
                   <h3> Check the amounts and have a look at the transfer details</h3>
                  </div>

                             <form action="" name="transfer" method="POST" >
                            <div class="card">
                            <div class="card-body">
                            


                            
                            <div class="form-group">
                            <h5><b>Your Pair: <b></h5>
                 <textarea class="form-control" name="pair" disabled required ><?php echo $pair;?></textarea>
                                
                            </div>

                            
                            <br>
                           
                            <div class="form-group">
                            <h5><b>Amount Deopostited <b></h5>
            <textarea  disabled class="form-control" name="amount" textarea-autosize required ><?php echo $amount;?></textarea>
                                
                            </div>

                            <br>

                            <div class="form-group">
                           <h5> <b>Receive  Amount <b></h5>
 <textarea disabled  class="form-control" name="x" textarea-autosize required ><?php echo $x;?></textarea>
                                
                            </div>



                            <br>
                                  
                             <div class="form-group">
                            <b> Withrawal address address </b></h5>
        <textarea disabled  class="form-control" name="withrawal_address" textarea-autosize required ><?php echo $address;?></textarea>
                          
                            </div>
                                   
                             <br>

                            <div class="form-group">
                            

                              <h5><b>Return Address<b></h5>
  <textarea disabled class="form-control"  name="return_address" textarea-autosize required ><?php echo $return_address;?></textarea>
                               
                                
                            </div>
                             

                            
                           <button  type="submit" name="confirm_exchange" class="btn btn-success" >Confirm Exchange</button>
                          </div>
                    
                
                 </form>

                    
                            


                        </div>
                    </div>
                </div>
                <?php
                     }else


                         {

                         
                               
                                $symbol =$_GET['s'] ;
                               $Deposit=$_GET['dp'] ;
                               $amount = $_GET['amount'];//input amount
                               $x= $_GET['x'];   //output amount
                               $address = $_GET['a']; // output amount address
                               $data = array("$Deposit","$amount"); // combine outputCoinaddress
                               $implode=implode("",$data);
                               $amount_depostied_coin=$implode;
                               $pair = $_GET['pair'];//pair
                               $returnAddress = $_GET['return_address'];//input return address
                               $apikey = '6eb365aff1dcdbc2ad83e9dfcf2ed876e57bc9dfd591934b6e83bad662af0b65ad480828b8e048214f91e3a76bdbc0cd56a47f83d9bb13528213388fa39b33b0';

                              $url = 'https://shapeshift.io/sendamount';
                              $data = json_encode(array( 
                                         "amount"=>$x, 
                                         "withdrawal"=>$address, 
                                         "pair"=> $pair, 
                                       "returnAddress"=> $returnAddress ,
                                      "apikey"=> $apikey
                                     ));
                              $options = array( 
                             'http' => array(
                             'header'  => "Content-Type: application/json",
                             'method'  => "POST",
                             'content' => $data
                                  )
                                 );
                            $context  = stream_context_create($options);
                            $result = file_get_contents($url, false, $context);
                            $getresult_json = json_decode($result ,true);
                            //print_r($getresult_json);

                            //get the results

                       echo "<p><h5>Transfer excact amount into <b style=color:#00000;>depost address</b> provided to enable Exchange</h5></p>";


                            foreach($getresult_json['success'] as $key => $value) 

                            
                       {
                                  
                                  
                                  echo  '<p>'  .'<b>'.  $key .'</b>'. ' ;  ' . $value .'</p>' ;
                                  
                                  


                       }
                    
                    
                    }


                        

                       



                        
                                 
               


                ?>  



                <?php include('includes/footer.php');?>

    </body>

<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1/form-components.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 15 Dec 2017 16:42:25 GMT -->
</html>
