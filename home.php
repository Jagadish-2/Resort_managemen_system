
<div class="container"> 
	
	 <div class="col-xs-12 col-sm-9">
			<!--<div class="jumbotron">-->
				<div class="">
					<div class="panel panel-default">
				
							<div class="panel-body">	
								<div class="col-xs-12 col-sm-12">

								<fieldset>
								<fieldset>
										<legend><h2 class="text-left">About</h2></legend>
										<?php 
										$setting = New Setting();
										$result = $setting->single_setting(1);

										echo '<p>'.$result->DESCRIPTION.' </p>';

										?>
										 

									</fieldset>
									<hr/>
									<fieldset>

										<legend><h2 class="text-left">Company Mission</h2></legend>
										<?php 
										$setting = New Setting();
										$result = $setting->single_setting(2);

										echo '<p>'.$result->DESCRIPTION.' </p>';

										?>
										 
									</fieldset>	

									<fieldset>
										<legend><h2 class="text-left">Company Vision</h2></legend>
										<?php 
										$setting = New Setting();
										$result = $setting->single_setting(3);

										echo '<p>'.$result->DESCRIPTION.' </p>';

										?> 
									</fieldset>
									
									 </fieldset>

								</div>
							</div>
						</div>		
				
					
				</div>
		<!--	</div>-->
		</div>
			<?php include'sidebar.php';?>
	 
  

</div>
