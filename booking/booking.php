
<?php

if (@$_SESSION['from']==""){
  message("Please Choose check in Date and Check out Out date to continue reservation!", "error");
  redirect(WEB_ROOT.'index.php?page=5');
 
}
if (@$_SESSION['to']==""){
  message("Please Choose check in Date and Check out Out date to continue reservation!", "error");
  redirect(WEB_ROOT.'index.php?page=5');
}


  $arrival = $_SESSION['from']; 
 $departure = $_SESSION['to'];


 /*if(!isset($_POST['adults'])){
    message("Choose from Adults!", "error");  
    redirect(".WEB_ROOT. 'booking/");
    //exit;
 }*/
 /* if(isset($_POST['adults'])&&isset($_POST['child'])){
    $_SESSION['roomid']=$_POST['roomid'];
  $_SESSION['adults'] = $_POST['adults'];
  $_SESSION['child']  = $_POST['child'];
   */


 
 if (isset($_POST['clear'])){
   unset($_SESSION['pay']);
   unset($_SESSION['magbanua_cart']);
   message("The cart is empty.","success");
  redirect(WEB_ROOT."booking/");

 }
 
?>


<!--End of Header-->
<div class="container">
  <?php include'../sidebar.php';?>

    <div class="col-xs-12 col-sm-9">
      <!--<div class="jumbotron">-->
        <div class="">
          <div class="panel panel-default">
            <div class="panel-body">  
             <form action="" method="POST">
                 <?php //include'navigator.php';?>
                  <h3 align="center">Your Booking Cart</h3>
                  <table class="table table-hover">
                  <thead>
              <tr  bgcolor="#999999">
              <th width="10">#</th>
              <th align="center" width="120">Room Type</th>
              <th align="center" width="120">Check In</th>
              <th align="center" width="120">Check Out</th>
              <th align="center" width="120">Nights</th>
              <th  width="120">Price</th>
               <th align="center" width="120">Room</th>
              <th align="center" width="90">Amount</th>
                <th align="center" width="90">Action</th>
               
 
              
         
            </tr> 
          </thead>
          <tbody>
              
            <?php
             $arival   = $_SESSION['from']; 
              $departure = $_SESSION['to']; 
              $days = dateDiff($arival,$departure);

            if (isset( $_SESSION['magbanua_cart'])){


             $count_cart = count($_SESSION['magbanua_cart']);

                for ($i=0; $i < $count_cart  ; $i++) {           

              $mydb->setQuery("SELECT *,typeName FROM room ro, roomtype rt WHERE ro.typeID = rt.typeID and roomNo =". $_SESSION['magbanua_cart'][$i]['magbanuaroomid']);
              $cur = $mydb->loadResultList();

            foreach ($cur as $result) {
                echo '<tr>'; 
                echo '<td></td>';
                echo '<td>'. $result->typeName.'</td>';
                echo '<td>'.$_SESSION['magbanua_cart'][$i]['magbanuacheckin'].'</td>';
                echo '<td>'.$_SESSION['magbanua_cart'][$i]['magbanuacheckout'].'</td>';
                echo '<td>'.$_SESSION['magbanua_cart'][$i]['magbanuaday'].'</td>';
                echo '<td > &#8369 '. $result->price.'</td>';
                echo '<td >1</td>';
                echo '<td > &#8369 '. $_SESSION['magbanua_cart'][$i]['magbanuaroomprice'].'</td>';
                echo '<td ><a href="index.php?view=processcart&id='.$result->roomNo.'">Remove</td>';
                

              
              echo '</tr>';


            @$payable +=  $result->price   ;
     
             $_SESSION['pay'] = $payable * $days ;
          
             } 
          
          }
              } 
            ?>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="4"><h5><b> <?php  echo isset($_SESSION['pay']) ? 'Order Total: &#8369 '. $_SESSION['pay'] :'Your booking cart is empty.';?></b></h5></td><td colspan="5"> 
                            <div class="col-xs-12 col-sm-12" align="right">
                               <?php
                               if (isset($_SESSION['magbanua_cart'])){
                                ?>
                                  <a  href="../index.php?page=5" class="btn btn-inverse" align="right"name="clear">Add Another Room</a>
                               <button type="submit" class="btn btn-inverse" align="right"name="clear">Clear Cart</button>
                               <?php
                               
                                if (isset($_SESSION['guest_id'])){
                                  ?>
                                  <a href="<?php echo WEB_ROOT; ?>booking/index.php?view=payment" class="btn btn-inverse" align="right"name="continue">Continue Booking</a>
                                 <?php 
                                }else{ ?>
                                   <a href="<?php echo WEB_ROOT; ?>booking/index.php?view=info"class="btn btn-inverse" align="right"name="continue">Continue Booking</a>
                               <?php
                                }
                              }else{


                              }

                               ?>
                       
                                 
                            </div>
                   
            </td>
            </tr>
          </tfoot>  
        </table>
      </form>
            </div>
          </div>  
          
        </div>
    <!--  </div>-->
    </div>
    <!--/span--> 
    <!--Sidebar-->

  </div>
  <!--/row-->
</div>