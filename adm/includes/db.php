<?php

define('server','localhost');
define('user', 'promise');
define('password', 'point066');
define('database', 'oneexchange');

  
$connection = new mysqli( server, user,password,database);









function post_api($url, $postfields) { // bitcoin API protocol

       $ch = curl_init();

       curl_setopt($ch, CURLOPT_URL, $url);

       curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

       curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);

       curl_setopt($ch, CURLOPT_POST, 1);

       curl_setopt($ch, CURLOPT_POSTFIELDS, $postfields);

       curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

       $result = curl_exec($ch);

       return $result;

 }


function isUnique($email,$connection)
{  


$sql ="SELECT * FROM users WHERE email = '$email'";
global $connection;
$result = mysqli_query($sql,$connection);
if($result->num_rows>0){
 return false ;
}
else return true ;

  
}



function logToDB($message,$connection)
{  



  // Get id
  if( ($user_id = $_SESSION['userId']) == '') {
    $user_id  = "UNKNOWN";
  }

   // Get username
  if( ($username = $_SESSION['username']) == '') {
    $username = "UNKNOWN";
  }

  // Get IP address
  if( ($remote_addr = $_SERVER['REMOTE_ADDR']) == '') {
    $remote_addr = "REMOTE_ADDR_UNKNOWN";
  }

// Get browser
if( ($browser = $_SERVER['HTTP_USER_AGENT']) == '') {
    $browser = "UNKNOWN";
  }

  // formulate and execute query
  $query = "INSERT INTO user_log (user_id,username,activity,IP,browser,date)
   VALUES('$user_id','$username','$message','$remote_addr','$browser',NOW())";
   $q =mysqli_query($connection,$query);
   

  
 
}




function count_table($table,$dbvar,$data,$connection){

        $sql = "SELECT count(id) FROM `$table` WHERE `$dbvar`='$data'";

         $query= mysqli_query($connection,$sql);

        while($row = mysqli_fetch_assoc($query)){
        return $row['count(id)'];

            } 
        
    return 0;

    }

function get_sum($table,$sum_var,$db_var,$var,$connection){

        $sum = 0;
        $sql = "select SUM($sum_var) from `$table` where `$db_var`=$var";
        $query= mysqli_query($connection,$sql);
        while($row = mysqli_fetch_assoc($query)){
      $sum += $row["SUM($sum_var)"];
    }
    return $sum;

} // get sum for investemtnts


function checkDays($db_date,$time_frame){

    $db_date = strtotime($db_date);

   $cur_time   = time();

    $time_elapsed   = $cur_time - $db_date;

    $days       = round($time_elapsed / 86400 );

    if($time_frame > $days){

        return ($time_frame - $days). ' Days';

    }else if($time_frame == $days){

        return 'One Day remaining';

    }

    return 'Project Expired';

}//check days for expiration




function formatDate($time_ago){

    

    $time_ago = strtotime($time_ago);

   $cur_time   = time();

   $time_elapsed   = $cur_time - $time_ago;

   $seconds    = $time_elapsed ;

   $minutes    = round($time_elapsed / 60 );

   $hours      = round($time_elapsed / 3600);

   $days       = round($time_elapsed / 86400 );

   $weeks      = round($time_elapsed / 604800);

   $months     = round($time_elapsed / 2600640 );

   $years      = round($time_elapsed / 31207680 );

   // Seconds

   if($seconds <= 60){

       return "just now";

   }

   //Minutes

   else if($minutes <=60){

       if($minutes==1){

           return "one minute ago";

       }

       else{

           return "$minutes minutes ago";

       }

   }

   //Hours

   else if($hours <=24){

       if($hours==1){

           return "an hour ago";

       }else{

           return "$hours hrs ago";

       }

   }

   //Days

   else if($days <= 7){

       if($days==1){

           return "yesterday";

       }else{

           return "$days days ago";

       }

   }

   //Weeks

   else if($weeks <= 4.3){

       if($weeks==1){

           return "a week ago";

       }else{

           return "$weeks weeks ago";

       }

   }

   //Months

   else if($months <=12){

       if($months==1){

           return "a month ago";

       }else{

           return "$months months ago";

       }

   }

   //Years

   else{

       if($years==1){

           return "one year ago";

       }else{

           return "$years years ago";

       }

   }



}// date lunch


?>
