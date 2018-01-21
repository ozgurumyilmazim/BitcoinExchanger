<!DOCTYPE html>
<html lang="en">

    
<?php include('includes/head.php');
error_reporting(0);



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
                        <h1>Exchange Crypto</h1>

                        <div class="actions">
                            <a href="index.php" class="actions__item zmdi zmdi-trending-up"></a>
                            <a href="Logout.php" class="actions__item zmdi zmdi-check-all"></a>

                            <div class="dropdown actions__item">
                                <i data-toggle="dropdown" class="zmdi zmdi-more-vert"></i>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="#" class="dropdown-item">Activities</a>
                                    <a href="#" class="dropdown-item">Transactions</a>
                                    <a href="#" class="dropdown-item">Settings</a>
                                </div>
                            </div>
                        </div>
                    </header>

                 <!--   <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">xxx</h4>
                            <h6 class="card-subtitle">xxx</h6>
                        </div>
                    </div>-->
                         
                    <?php

                    $em=array();

                     

                    if( $_GET['change2']=="Recieve") {
                   $em[] = "Select a coin for exchange";
                          }

                    if ( $_GET['change']=="Deposit") {
                     $em[] = "Select an input coin";
                       }

                     elseif( $_GET['change']===$_GET['change2'] ) {
                   $em[] = " Select coin for exchange";
                          }
                         


                        if($em) {

                foreach ($em as $key => $value) {
                  echo '<div class="alert alert-danger" role="alert">
                  <i class="glyphicon glyphicon-exclamation-sign"></i>
                  <h3>'.$value.'<h3></div>';                 
                  }
                }
 

                   if ( !isset($_GET["exchange"])   && !isset($_GET["select"]) && !isset($_GET["change"]) && !isset($_GET["change2"]) )
					{
					?>
                     <form action="" name="select" method="GET">
                        <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Select Crypto for exchange</h4>
                            <h6 class="card-subtitle"></h6>
							
                            <div class="row">
                                <div class="col-lg-4">
                                    <h3 class="card-body__title"></h3>
                                    <div class="form-group">
                                        <div class="select">
                                             <select name="change" class="select2" data-minimum-results-for-search="Infinity" required >
                                                 <option value="Deposit">Deposit COIN</option>
                                                <?php

                                                 $mainurl='https://shapeshift.io/getcoins';
                                               $getcoins = file_get_contents($mainurl);
                                                $getcoins_json = json_decode($getcoins,true);

                                              foreach($getcoins_json as $key => $value):
                                               echo '<option value="'.$value['symbol'].'">'.$key.'</option>'; 
                                                   
                                                    endforeach;
                                               
                                             ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>



                                <div class="col-lg-4">
                                    <h3 class="card-body__title"></h3>
                                                   
                                   <div class="form-group">
                                        <div class="select">
                                             <select name="change2" class="select2" data-minimum-results-for-search="Infinity" required >
                                        
                                                <option value="Recieve">Recieve coin</option>
                                                 <?php

                                              foreach($getcoins_json as $key => $value):
                                               echo '<option value="'.$value['symbol'].'">'.$key.'</option>'; 
                                                    
                                                 
                                                    endforeach;


                                             ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                            <button  type="submit" name="exchange" class="btn btn-success">Exchange</button>
                        </div>   
                    </div>
                 </form>
                  <?php
                     }else{
                            
                      
                              $Deposit=$_GET["change"] ;
                             $Recieve=$_GET["change2"] ;
                             
                     logToDB("you submitted $Deposit for $Recieve exchange", $connection);
                            //creatte pair to get values
                            $data = array("$Deposit","$Recieve");
                            $implode=implode("_",$data);
                            $encodee=urlencode($implode);
                            $url="https://shapeshift.io/marketinfo/$encodee";
                            $getpair = file_get_contents($url);
                            $getpair_json = json_decode($getpair,true);
                        //    var_dump($getpair_json);
                         //    print_r($getpair_json);
							 foreach ($getpair_json as $key => $value) 
                             {
                              if($key =='rate'){$rate= $value;}
		                      if($key =='pair'){$pair= $value;}
		                      if($key =='minerFee'){$minerFee=$value;}
                              if($key =='limit'){$limit=$value;}
                              if($key =='minimum'){$minimum=$value;}
                              if($key =='maxLimit'){$maxLimit=$value;}
                             } 
                             
							//display errors when the min and max limit are offended
							$error = null;
							if(isset($_GET['error'])){
								$error = '<div class="row">';
									if($_GET['error']=='minimum'){
										$error .= '<h3 style="color:red;">The amount entered is less than the  minimum value '.$minimum.' </h3>';
									}
									if($_GET['error']=='maximum'){
								$error .= '<h3 style="color:red;">The amount entered is greater than the  maximum value '.$maxLimit.' </h3>';
									}
								$error .= '</div>';
							}
							
							//load the get variable from the redirected script
							if(isset($_GET['pair'])){
								$pair = $_GET['pair'];
								$minerFee = $_GET['minerFee'];
								$limit = $_GET['limit'];
								$minimum = $_GET['minimum'];
								$maxLimit = $_GET['maxLimit'];
								$rate = $_GET['rate'];
							}
							 
							 
							 
							 echo '
							 <script>
							 function check_rate(){
								var min_value = '.$minimum.';
								var max_value = '.$maxLimit.';
								amount = document.getElementById("amount").value; 
								
								if(amount > max_value){
								//	alert("The amount you input greater than the maximum value of '.$maxLimit.'");
									document.getElementById("output").innerHTML = "The amount you input is less than the minimum value of '.$maxLimit.' , re-enter to prevent coin loss ";
									
								}else if(isNaN(amount)){
									document.getElementById("output").innerHTML = "Please input a figure";
								}else{
									document.getElementById("output").innerHTML = "";
								}
								
								if(amount < min_value){
								//	alert("Input amount is less than minimum value of '.$minimum.'");
									document.getElementById("output").innerHTML = "Input amount is less than minimum value of '.$minimum.' , re-enter to prevent coin loss";
									
								}else if(isNaN(amount)){
									document.getElementById("output").innerHTML = "Please input a figure";
								}else{
									document.getElementById("output").innerHTML = "";
								}
								
							 }
							 
							 </script>

		<form oninput="x.value= Number(a.value)* Number(b.value)" action="validate.php" name="transfer" method="GET" >
                            <div class="card">
                            <div class="card-body">
                            <h5 class="card-title">Your Pair is:  '. $pair.'</h5> 
                            <h5 style="text-align:left;" >Your Rate is :  '. $rate .' </h5>
                            <h5 style="text-align:left;" >limit :  '.$limit .' </h5>
                            <h5 style="text-align:left;" >Minimum Deposit:  '.$minimum .' </h5>
                            <h5 style="text-align:left;" >Maximum Deposit :  '. $maxLimit.' </h5>
                            <h5 style="text-align:left;" >Miner Fee :  '. $minerFee .' </h5>
							<h1 style="color:red;" id="output"></h1>

                            <br>
                           <input type="hidden" name="symbol" value="'.$Recieve.'">
                           <input type="hidden" name="symbol2" value="'.$Deposit.'">
                           <input type="hidden" id="b" name="rate" value="'.$rate.'">
                           <input type="hidden" name="limit" value="'.$limit.'">
                           <input type="hidden" name="minimum" value="'.$minimum.'">
                           <input type="hidden" name="maxLimit" value="'.$maxLimit.'">
                           <input type="hidden" name="minerFee" value="'.$minerFee.'">
                           <input type="hidden" name="pair" value="'.$pair.'">
                            
                            '.$error.'

							
                            <br>


                            <div class="form-group">
                           <h5><b>Deposit this '.$Deposit.' amount  <b></h5>
                        <input class="form-control" onkeyup="check_rate();" id="a" id="amount" name="amount" required >
                                <i class="form-group__bar"></i>
                            </div>

                            <br>


                              <b>You will Recieve this amount of  '.$Recieve.'  <b>
                            <input  name="x" for="a b"></output>

                            
                            <br>

                            <div class="form-group">
                            <h5><b>Enter your '.$Recieve.' address   <b></h5>
                            <textarea class="form-control" name="withrawal_address" textarea-autosize required ></textarea>
                                <i class="form-group__bar"></i>
                            </div>

                             <br>

                             <div class="form-group">
                            <h5><b>Enter your '.$Deposit.'   address (retrun to '.$Deposit.' wallet if transaction fails)<b></h5>
                             <textarea class="form-control" name="return_address" textarea-autosize required ></textarea>
                                <i class="form-group__bar"></i>
                            </div>
                             <br>
                           <button  type="submit" name="validate" class="btn btn-success" >Start Transaction</button>
                          </div>
                 </form>';
                        } 
                                 
                ?>  




     <?php include('includes/footer.php');?>
    </body>

</html>