<?php
	//before we store information of our member, we need to start first the session
	
	session_start();
	
	//create a new function to check if the session variable member_id is on set
	function logged_in() {
		return isset($_SESSION['ACCOUNT_ID']);
        
	}
	//this function if session member is not set then it will be redirected to index.php
	function confirm_logged_in() {
		if (!logged_in()) {?>
			<script type="text/javascript">
				window.location = "index.php";
			</script>

		<?php
		}
	}
	function admin_logged_in() {
		return isset($_SESSION['justadmin_ID']);
        
	}
	//this function if session member is not set then it will be redirected to index.php
	function admin_confirm_logged_in() {
		if (!admin_logged_in()) {?>
			<script type="text/javascript">
				window.location = "index.php";
			</script>

		<?php
		}
	}
	
	function message($msg="", $msgtype="") {
	  if(!empty($msg)) {
	    // then this is "set message"
	    // make sure you understand why $this->message=$msg wouldn't work
	    $_SESSION['message'] = $msg;
	    $_SESSION['msgtype'] = $msgtype;
	  } else {
	    // then this is "get message"
			return $message;
	  }
	}
	function check_message(){
	
		if(isset($_SESSION['message'])){
			if(isset($_SESSION['msgtype'])){
				if ($_SESSION['msgtype']=="info"){
	 				echo  '<div class="alert alert-info">'. $_SESSION['message'] . '</div>';
	 				 
				}elseif($_SESSION['msgtype']=="error"){
					echo  '<div class="alert alert-danger">' . $_SESSION['message'] . '</div>';
									
				}elseif($_SESSION['msgtype']=="success"){
					echo  '<div class="alert alert-success">' . $_SESSION['message'] . '</div>';
				}	
				unset($_SESSION['message']);
	 			unset($_SESSION['msgtype']);
	   		}
  
		}	

	}
function product_exists($pid){
    $pid=intval($pid);
    $max=count($_SESSION['magbanua_cart']);
    $flag=0;
    for($i=0;$i<$max;$i++){
      if($pid==$_SESSION['magbanua_cart'][$i]['magbanuaroomid']){
        $flag=1;
        
      	message("Item is already in the cart.","success");
        break;
      }
    }
    return $flag;
  }
 function addtocart($pid,$day, $price,$checkin,$checkout){
    if($pid<1 or $day<1) return;
    if (!empty($_SESSION['magbanua_cart'])){


    if(is_array($_SESSION['magbanua_cart'])){
      if(product_exists($pid)) return;
      $max=count($_SESSION['magbanua_cart']);
      $_SESSION['magbanua_cart'][$max]['magbanuaroomid']=$pid; 
       $_SESSION['magbanua_cart'][$max]['magbanuaday']=$day; 
      $_SESSION['magbanua_cart'][$max]['magbanuaroomprice']=$price;
      $_SESSION['magbanua_cart'][$max]['magbanuacheckin']=$checkin;
      $_SESSION['magbanua_cart'][$max]['magbanuacheckout']=$checkout;
    }
    else{
     $_SESSION['magbanua_cart']=array();
      $_SESSION['magbanua_cart'][0]['magbanuaroomid']=$pid; 
       $_SESSION['magbanua_cart'][0]['magbanuaday']=$day; 
      $_SESSION['magbanua_cart'][0]['magbanuaroomprice']=$price;
      $_SESSION['magbanua_cart'][0]['magbanuacheckin']=$checkin;
      $_SESSION['magbanua_cart'][0]['magbanuacheckout']=$checkout;
    }
}else{
     $_SESSION['magbanua_cart']=array();
      $_SESSION['magbanua_cart'][0]['magbanuaroomid']=$pid; 
       $_SESSION['magbanua_cart'][0]['magbanuaday']=$day; 
      $_SESSION['magbanua_cart'][0]['magbanuaroomprice']=$price;
      $_SESSION['magbanua_cart'][0]['magbanuacheckin']=$checkin;
      $_SESSION['magbanua_cart'][0]['magbanuacheckout']=$checkout;
}
}
  function removetocart($pid){
		$pid=intval($pid);
		$max=count($_SESSION['magbanua_cart']);
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['magbanua_cart'][$i]['magbanuaroomid']){
				unset($_SESSION['magbanua_cart'][$i]);
				break;
			}
		}
		$_SESSION['magbanua_cart']=array_values($_SESSION['magbanua_cart']);
	}

?>
