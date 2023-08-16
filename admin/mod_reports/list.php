
<div class="container">
	<div class="panel panel-primary">
		<div class="panel-body">
		     
		<form class="form-inline" action="" method="post" autocomplete="off">
		<strong>Date Filter : </strong>
		  <div class="form-group">
		 <input class="form-control date start input-sm" size="20" type="text" value="<?php echo (isset($_SESSION['start'])) ? $_SESSION['start'] : ''; ?>" Placeholder="Check In" name="start" id="from" data-date="" data-date-format="yyyy-mm-dd" data-link-field="any" data-link-format="yyyy-mm-dd" autocomplete="off">
		 </div>
		  <div class="form-group">
		    <label class="sr-only" for="exampleInputPassword2">Check Out:</label>
		      <input class="form-control date end input-sm" size="20" type="text" value="<?php echo (isset($_SESSION['end'])) ? $_SESSION['end'] : ''; ?>"  name="end" id="end" data-date="" data-date-format="yyyy-mm-dd" data-link-field="any" data-link-format="yyyy-mm-dd" autocomplete="off">
		  </div>
		  
		  <button type="submit" name="submit" class="btn btn-primary btn-sm">Submit</button>
		</form>
	


<form  method="post" action="<?php echo $_SERVER['PHP_SELF'] ?>">
<span id="printout">
<table  class="table table-bordered" cellspacing="0">
<thead>
<tr bgcolor="#999999">
<td ><strong>Name</strong></td>
<td ><strong>Arrival</strong></td>
<td ><strong>Departure</strong></td>
<td ><strong>Room Name</strong></td>
<td ><strong>Nights</strong></td>
<td ><strong>Status</strong></td>
</tr>
</thead>
<tbody>		
<?php
if(isset($_POST['submit'])){
	$_SESSION['start']=$_POST['start'];
	$_SESSION['end']=$_POST['end'];	
	$mydb->setQuery("SELECT * , roomName, firstname, lastname
	FROM reservation re, room ro, guest gu
	WHERE arrival >=  '".$_SESSION['start']."'
	AND departure <=  '".$_SESSION['end']."'
	AND re.roomNo = ro.roomNo
	AND re.guest_id = gu.guest_id");
	$res = $mydb->executeQuery();
	$row_count = $mydb->num_rows($res);
	$cur = $mydb->loadResultList();

		if ($row_count >1){
			foreach ($cur as $result) {
			?>

				<tr >
				<td><?php echo $result->firstname." ".$result->lastname; ?></td>
				<td><?php echo $result->arrival; ?></td>
				<td><?php echo $result->departure; ?></td>
				<td><?php echo $result->roomName; ?></td>
				<td><?php echo dateDiff($result->arrival,$result->departure); ?></td>
				<td><?php echo $result->status; ?></td>
				</tr>

			<?php }
			
		}else{

		echo '<tr><td colspan="7" align="center"><h2>Please Enter Then Dates</h2></td></tr>';

		}

	}
?>
</tbody>
</table>
</span>
<input type="button" value="Print Report" onclick="tablePrint();">
</form>
</div>
</div> 

<script>
function tablePrint(){  
    var display_setting="toolbar=no,location=no,directories=no,menubar=no,";  
    display_setting+="scrollbars=no,width=500, height=500, left=100, top=25";  
    var content_innerhtml = document.getElementById("printout").innerHTML;  
    var document_print=window.open("","",display_setting);  
    document_print.document.open();  
    document_print.document.write('<body style="font-family:verdana; font-size:12px;" onLoad="self.print();self.close();" >');  
    document_print.document.write(content_innerhtml);  
    document_print.document.write('</body></html>');  
    document_print.print();  
    document_print.document.close();  
    return false;  
    } 
	$(document).ready(function() {
		oTable = jQuery('#list').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers"
		} );
	});		
</script>