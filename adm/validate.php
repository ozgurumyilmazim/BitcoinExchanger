<?php
require('includes/core.php');
       
		error_reporting(0);
		//url: shapeshift.io/validateAddress/[address]/[coinSymbol]
		 $address = $_GET['withrawal_address'] ;
		
		
		 $symbol =$_GET['symbol'] ;
		
	  $Deposit=$_GET['symbol2'] ;
		
		$rate =$_GET['rate'] ;
		$limit =$_GET['limit'] ;
		$minimum =$_GET['minimum'] ;
		$maxLimit =$_GET['maxLimit'] ;
		$minerFee =$_GET['minerFee'] ;
		$amount =$_GET['amount'] ;
		$x=$_GET['x'];
		$pair =$_GET['pair'] ;
		$return_address =$_GET['return_address'] ;


		//take user back if the min and max limits are offended
		if($amount < $minimum){
			 $url="https://shapeshift.io/marketinfo/$pair";
             $getpair = file_get_contents($url);
             $getpair_json = json_decode($getpair,true);
			 $pair = null;
			 $minerFee = null;
			 $limit = null;
			 $minimum = null;
			 $maxLimit = null;
			 foreach ($getpair_json as $key => $value){
				if($key =='rate'){$rate= $value;}
				  if($key =='pair'){$pair= $value;}
				  if($key =='minerFee'){$minerFee=$value;}
				  if($key =='limit'){$limit=$value;}
				  if($key =='minimum'){$minimum=$value;}
				  if($key =='maxLimit'){$maxLimit=$value;}
			 }
			 $keys = '&return_address='.$return_address.'&pair='.$pair.'&minerFee='.$minerFee.'&limit='.$limit.'&minimum='.$minimum.'&maxLimit='.$maxLimit.'&rate='.$rate.'&x='.$x;
			
			 header('location:exchange.php?error=minimum&change=true&change2=true'.$keys);
			 exit;
		}
		if($amount > $maxLimit){
			$url="https://shapeshift.io/marketinfo/$pair";
             $getpair = file_get_contents($url);
             $getpair_json = json_decode($getpair,true);
			 $pair = null;
			 $minerFee = null;
			 $limit = null;
			 $minimum = null;
			 $maxLimit = null;
			 foreach ($getpair_json as $key => $value){
				if($key =='rate'){$rate= $value;}
				  if($key =='pair'){$pair= $value;}
				  if($key =='minerFee'){$minerFee=$value;}
				  if($key =='limit'){$limit=$value;}
				  if($key =='minimum'){$minimum=$value;}
				  if($key =='maxLimit'){$maxLimit=$value;}
			 }
			 $keys = '&return_address='.$return_address.
			         '&pair='.$pair.'&minerFee='.$minerFee.
			         '&limit='.$limit.'&minimum='.$minimum.
			         '&maxLimit='.$maxLimit.
			         '&rate='.$rate.
			         '&dp='.$Deposit.
			         '&x='.$x;
			
			header('location:exchange.php?error=maximum&change=true&change2=true'.$keys);
			exit;
		}

		
        



		//confirm withrawal address
		$url = 'https://shapeshift.io/validateAddress/'.$address.'/'.$symbol;
		$get_boolean = file_get_contents($url);
		$get_json_boolean = json_decode($get_boolean,true);
		//print_r($get_json_boolean);
    //print_r($get_json_boolean);
        foreach($get_json_boolean as $key => $value) 
	             {
                   
	             
	             	if ($key=='isvalid' && ($value==true || $value=='true'))
	             	 {
	             		logToDB("your Deposit address validaion was successful ", $connection);
	             		
	                     header('location:complete_exchange.php?pair='.$pair.'
	            	         &amount='.$amount.'&x='.$x.
	            	         '&return_address='.$return_address.'&r='.$rate.
	            	         '&a='.$address.'&s='.$symbol.'&l='.$limit.'&dp='.$Deposit.
	            	         '&mn='.$minimun.'&mx='.$maxLimit.'&mf='.$minerFee  
	            	      );
	             	
	             	}

       
                   elseif($key=='isvalid' && ($value==false || $value=='false'))
                         { 
                   	       logToDB("Entred  invalid address  ", $connection); 
                   	        header('location:activities.php');
                   	         }


                   }


	             	
	             	/**
                   if($value){

                    logToDB("your address validated was successful ", $connection);
                   	header('location:complete_exchange.php');
                      }

		           else{

                    logToDB("your address validated was not successful ", $connection);
		           	header('location:exchange.php');
		           }
		           **/




		           //confim return address

        $url = 'https://shapeshift.io/validateAddress/'.$return_address.'/'.$Deposit;
		$get_boolean = file_get_contents($url);
		$get_json_boolean = json_decode($get_boolean,true);
		//print_r($get_json_boolean);
    //print_r($get_json_boolean);
        foreach($get_json_boolean as $key => $value) 
	             {
                   
	             
	             	if ($key=='isvalid' && ($value==true || $value=='true'))
	             	 {
	             		logToDB("your return address validaion was successful ", $connection);
	             		
	                       /*header('location:complete_exchange.php?pair='.$pair.'
	            	         &amount='.$amount.'&x='.$x.
	            	         '&return_address='.$return_address.'&r='.$rate.
	            	         '&a='.$address.'&s='.$symbol.'&l='.$limit.'&dp='.$Deposit.
	            	         '&mn='.$minimun.'&mx='.$maxLimit.'&mf='.$minerFee  
	            	         );*/
	             	

	             	 }

       
                   elseif($key=='isvalid' && ($value==false || $value=='false'))
                         { 
                   	       logToDB("Entred invalid return address  ", $connection); 
                   	  
                   	       header('location:activities.php');
                   	       }

                  
		    
         
		
	

}

?>