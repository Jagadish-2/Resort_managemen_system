<?php
 
 
 
		if(isset($_GET['id'])) {
		removetocart($_GET['id']);
		unset($_SESSION['pay']);

		}else{
		unset($_SESSION['magbanua_cart']);
		}
			
		if (count($_SESSION['magbanua_cart'])==0){
			message("The cart is empty.","success");
			unset($_SESSION['magbanua_cart']);
				redirect(WEB_ROOT. 'booking/');
		}else{
		message("1 item has been removed in the cart.","success");
		 redirect(WEB_ROOT. 'booking/');
		}
	
		 

 
?>