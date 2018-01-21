
<?php 

session_start();

require_once 'includes/db.php';

// echo $_SESSION['userId'];

if(!$_SESSION['admin_id'] || !$_SESSION['username'] ) {
	header('location: http://www.bitcoinzengini.com/oneadmin/app/index.php');	
	
} 



?>
