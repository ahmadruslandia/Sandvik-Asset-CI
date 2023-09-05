<!DOCTYPE html>
<html lang="en">

<head>
	<title><?php echo $judul; ?></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="<?php echo base_url('theme/images/' . $icon); ?>">
	<!-- SEO Tags -->
	<meta name="description" content="Notes <?php echo $meta_description; ?>" />
	<link rel="canonical" href="<?php echo $canonical; ?>" />
	<?php error_reporting(0);
	if (empty($url_prev)) : ?>
	<?php else : ?>
		<link rel="prev" href="<?php echo $url_prev; ?>" />
	<?php endif; ?>
	<link rel="next" href="<?php echo $url_next; ?>" />
	<meta property="og:locale" content="id_ID" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="<?php echo $judul; ?>" />
	<meta property="og:description" content="Notes <?php echo $meta_description; ?>" />
	<meta property="og:url" content="<?php echo $canonical; ?>" />
	<meta property="og:site_name" content="<?php echo $site_name; ?>" />
	<meta property="og:image" content="<?php echo base_url() . 'theme/images/' . $site_image ?>" />
	<meta property="og:image:secure_url" content="<?php echo base_url() . 'theme/images/' . $site_image ?>" />
	<meta property="og:image:width" content="560" />
	<meta property="og:image:height" content="315" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:description" content="Notes <?php echo $meta_description; ?>" />
	<meta name="twitter:title" content="<?php echo $judul; ?>" />
	<meta name="twitter:site" content="<?php echo $site_twitter; ?>" />
	<meta name="twitter:image" content="<?php echo base_url() . 'theme/images/' . $site_image ?>" />
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/font-awesome.min.css' ?>" />

	<!-- / SEO plugin. -->
	<!-- CSS -->
	<link rel="stylesheet" href="<?php echo base_url('theme/css/bootstrap.min.css') ?>" />
	<link rel="stylesheet" href="<?php echo base_url('theme/css/style.css') ?>" />
	<link rel="stylesheet" href="<?php echo base_url('theme/css/padding-margin.css') ?>" />
	<link rel="stylesheet" href="<?php echo base_url('theme/common/styles.css') ?> ">
	<link href="<?php echo base_url() . 'theme/fonts/ion/ionicons.css' ?>" rel="stylesheet">


	<!-- Favicons -->
</head>

<body class="content-animate">

	<!-- PRELOADER
		==================================================-->
	<div class="page-loader">
		<div class="loader-area"></div>
		<div class="loader font-face1">All Asset
		</div>
	</div>

	<!-- PAGE
		==================================================-->
	<div id="top" class="page">

		<!-- Navigation panel
			================================================== -->
		<?php echo $header; ?>
		<!-- End Navigation panel -->

		<!-- Main Content
			==================================================-->
		<main class="cd-main-content mt-100">


			<!-- SECTION ABOUT
				================================================== 	-->
			<section class="page-section small-section">
				<div class="container relative">

					<div class="row multi-columns-row">

						<?php foreach ($data->result() as $row) : ?>
							<div class="col-md-4 col-sm-6 mb-30 wow fadeIn">
								<article>
									<a class="articles-card" href="<?php echo site_url('blog/' . $row->post_slug); ?>" title="">
										<div class="card-wrap">
											<div class="card-image">
												<div class="article-thumbnail" data-background="<?php echo base_url() . 'assets/images/thumb/' . $row->post_image; ?>"></div>
											</div>
											<div class="card-body text-right">
												<h2 class="heading6 lp-0 mt-0 font-face1 text-right"><?php echo $row->post_title; ?></h2>
											</div>
											<div class="card-footer">
												<div class="article_author">
													<div class="portrait" data-background="<?php echo base_url() . 'assets/images/' . $row->user_photo; ?>"></div>
													<div class="author light-text"><?php echo $row->user_name; ?></div>
													<div class="date"><?php echo date('d M Y', strtotime($row->post_date)); ?></div>
												</div>
											</div>
										</div>
									</a>
									<div class="like light-text"><a href="javascript:void(0)"></a> <?php echo $row->post_views . ' views'; ?></div>
								</article>
							</div>
						<?php endforeach; ?>

					</div>
					<!--pagination-->
					<?php echo $page; ?>
				</div>
			</section>

			<!-- FOOTER
				================================================== -->
			<?php echo $footer; ?>

		</main>

	</div>


	<!-- Modal Login-->
	<div class="modal fade" id="ModalLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="z-index: 10000;">
		<div class="modal-dialog" role="document">
			<div class="col-md-10 col-md-offset-1">
				<div class="modal-content">
					<div class="modal-body">
						<form action="<?php echo site_url('backend/login/auth'); ?>" method="post">
							<div class="form-group">
								<input type="email" class="form-control" name="username" placeholder="Email" required>
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password" placeholder="Password" required>
							</div>
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit" style="height: 40px;background-color: #ccc;">Login</button>
							</span>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<?php echo base_url() . 'theme/js/jquery-2.2.4.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/jquery.easing.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/bootstrap.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/waypoints.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/jquery.scrollTo.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/jquery.localScroll.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/jquery.viewport.mini.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/jquery.sticky.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/jquery.fitvids.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/jquery.parallax-1.1.3.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/isotope.pkgd.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/imagesloaded.pkgd.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/masonry.pkgd.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/jquery.magnific-popup.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/jquery.counterup.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/slick.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/wow.min.js' ?>"></script>
	<script src="<?php echo base_url() . 'theme/js/script.js' ?>"></script>
</body>

</html>