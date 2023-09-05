<div class="footer-polygon">
	<footer class="bg-191">

		<div class="container">
			<div class="pt-50 pb-20 pos-relative">
				<div class="row">
					<?php
					$query = $this->db->get('tbl_site', 1);
					$data = $query->row_array();
					?>
					<div class="col-sm-4">
						<div class="mb-30">
						</div>
						<div class="mb-30">
							<a href=""><img src="<?php echo base_url() . 'theme/images/' . $data['site_logo_footer'] ?>" width="145" height="40" alt=""></a>
							<div class="mb-20">
							</div>
							<p class="font-face1 heading0 mb-20"><?php echo $data['site_description']; ?></p>
						</div><!-- mb-30 -->
					</div><!-- col-md-4 -->

					<?php
					$sqf = $this->db->query("SELECT * from tbl_about");
					$data = $sqf->row_array();
					?>
					<div class="col-sm-4">
						<div class="mb-30">
							<div class="mb-60"></div>
							<h5 class="font-face1 heading9 fw500 color-primary2 mb-20">Address</h5>
							<ul class="font-11 list-relative list-li-pl-30 list-block list-li-mb-15">
								<li class="font-face1 heading0"><i class="mb-20 abs-tl ion-ios-location"></i><?php echo $data['about_address']; ?></li>
							</ul>
						</div><!-- mb-30 -->
					</div><!-- col-md-4 -->

					<div class="col-sm-4">
						<div class="mb-30">
							<div class="mb-60"></div>
							<h5 class="font-face1 heading9 fw500 color-primary2 mb-20">Contact</h5>
							<ul class="font-11 list-relative list-li-pl-30 list-block list-li-mb-15">
								<li class="font-face1 heading0"><i class="mb-20 abs-tl ion-android-mail"></i><?php echo $data['about_email']; ?></li>
								<li class="font-face1 heading0"><i class="mb-20 abs-tl ion-android-call"></i><?php echo $data['about_telephone']; ?></li>
							</ul>
						</div><!-- mb-30 -->
					</div><!-- col-md-4 -->

				</div><!-- row -->
			</div><!-- ptb-50 -->


			<div class="oflow-hidden color-ash font-9 text-sm-center ptb-sm-5">

				<ul class="float-left float-sm-none list-a-plr-5 list-a-plr-sm-5 list-a-ptb-15 list-a-ptb-sm-10">
					<li>Copyright &copy; <?php echo date('Y'); ?> All rights reserved by FIKOM.UMI</li>
				</ul>


			</div><!-- oflow-hidden -->
		</div><!-- container -->
	</footer>
</div>