<?php 
require_once("../../includes/initialize.php");
$action = (isset($_GET['action']) && $_GET['action'] != '') ? $_GET['action'] : '';

switch ($action) {
	case 'add' :
	doInsert();
	break;
	
	case 'edit' :
	doEdit();
	break;

	case 'editimage' :
	editImg();
	break;
	
	case 'delete' :
	doDelete();
	break;


	}
function doInsert(){
		if (!isset($_FILES['image']['tmp_name'])) {
			message("No Image Selected!", "error");
			redirect("index.php?view=add");
		    	}else{
				$file=$_FILES['image']['tmp_name'];
				$image= addslashes(file_get_contents($_FILES['image']['tmp_name']));
				$image_name= addslashes($_FILES['image']['name']);
				$image_size= getimagesize($_FILES['image']['tmp_name']);
				if ($image_size==FALSE) {
					message("That's not an image!", "error");
					redirect("index.php?view=add");
				}else{
			$location="rooms/".(time()).'_'.$_FILES["image"]["name"];
			if(file_exists($location)){
			
		    	message("There is such an image. Please select another one!", "error");
				redirect("index.php?view=add");	
			}
			else{
			move_uploaded_file($_FILES["image"]["tmp_name"],$location);
			
			if ($_POST['name'] == "" OR $_POST['rmtype'] == "" OR $_POST['price'] == "") {
				$messageStats = false;
					message("All fields required!", "error");
					redirect("index.php?view=add");
				
			}else{
				$room = new Room();
				       
				$rm_name		= $_POST['name'];
				$rm_type	    = $_POST['rmtype'];
				$rm_price 		= $_POST['price'];
				$rm_adult 		= $_POST['adult'];
				$rm_children 	= $_POST['children'];
				$rm_image 		= $location;

				$res = $room->find_all_room($rm_name);
				
				
				if ($res >=1) {
					message("Room name already exist!", "error");
					redirect("index.php?view=add");
				}else{
				
					$room->typeID = $rm_type;
					$room->roomName = $rm_name;
					$room->price = $rm_price;
					$room->Adults = $rm_adult;
					$room->Children = $rm_children;
					$room->roomImage = $rm_image;
					
					 $istrue = $room->create(); 
					 if ($istrue == 1){
					 	message("New [". $rm_name ."] created successfully!", "success");
					 	redirect('index.php');
					 	
					 }
				}	 

		
			}	



		}
	}
  }
}
//function to modify rooms

 function doEdit(){
           $room = new Room();
          		$rm_no			= $_POST['rmNo'];
				$rm_name		= $_POST['name'];
				$rm_type	    = $_POST['rmtype'];
				$rm_price 		= $_POST['price'];
				$rm_adult 		= $_POST['adult'];
				$rm_children 	= $_POST['children'];
				
				$room->typeID = $rm_type;
				$room->roomName = $rm_name;
				$room->price = $rm_price;
				$room->Adults = $rm_adult;
				$room->Children = $rm_children;
				
				$room->update($rm_no); 
				
			 	message("New [". $rm_name ."] Upadated successfully!", "success");
			 	unset($_SESSION['id']);
			 	redirect('index.php');
				 
}

function doDelete(){
@$id=$_POST['selector'];
		  $key = count($id);
		//multi delete using checkbox as a selector
		
	for($i=0;$i<$key;$i++){
	 
		$rm = new Room();
		$rm->delete($id[$i]);
	}

		message("Room already Deleted!","info");
		redirect('index.php');
 }
 
 //function to modify picture
 
function editImg (){
		if (!isset($_FILES['image']['tmp_name'])) {
			message("No Image Selected!", "error");
			redirect("index.php?view=list");
		}else{
			$file=$_FILES['image']['tmp_name'];
			$image= addslashes(file_get_contents($_FILES['image']['tmp_name']));
			$image_name= addslashes($_FILES['image']['name']);
			$image_size= getimagesize($_FILES['image']['tmp_name']);
			
			if ($image_size==FALSE) {
				message("That's not an image!");
				redirect("index.php?view=list");
		   }else{
			
		
				$location="rooms/".$_FILES["image"]["name"];
				

	 				$rm = new Room();
	          		$rm_id		= $_POST['id'];
				
			    	move_uploaded_file($_FILES["image"]["tmp_name"],"rooms/".$_FILES["image"]["name"]);
					
					$rm->roomImage = $location;
					$rm->update($rm_id); 
					
				 	message("Room Image Upadated successfully!", "success");
				 	unset($_SESSION['id']);
				 	 redirect("index.php");
 			}
 		}
 }			 

function _deleteImage($catId)
{
    // we will return the status
    // whether the image deleted successfully
    $deleted = false;

	// get the image(s)
    $sql = "SELECT * 
            FROM room
            WHERE roomNo ";
	
	if (is_array($catId)) {
		$sql .= " IN (" . implode(',', $catId) . ")";
	} else {
		$sql .= " = {$catId}";
	}	

    $result = dbQuery($sql);
    
    if (dbNumRows($result)) {
        while ($row = dbFetchAssoc($result)) {
		extract($row);
	        // delete the image file
    	    $deleted = @unlink($roomImage);
		}	
    }
    
return $deleted;
}



?>
