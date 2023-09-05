<!DOCTYPE html>
<html lang="en">

<head>

	<!-- Page Title -->
	<title><?php echo $title; ?></title>

	<!-- Page header -->
	<meta charset="utf-8" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
	<meta name="viewport" content="width=device-width" />
	<!-- CSS -->
	<link rel="stylesheet" href="<?php echo base_url('theme/css/bootstrap.min.css') ?>" />
	<link rel="stylesheet" href="<?php echo base_url('theme/css/style.css') ?>" />
	<link rel="stylesheet" href="<?php echo base_url('theme/css/padding-margin.css') ?>" />
	<link rel="stylesheet" href="<?php echo base_url('theme/common/styles.css') ?> ">
	<link href="<?php echo base_url() . 'theme/fonts/ion/ionicons.css' ?>" rel="stylesheet">

	<!-- Favicons -->
	<link rel="shortcut icon" href="<?php echo base_url('theme/images/' . $icon); ?>">
	<link href="<?php echo base_url() . 'theme/css/jssocials.css' ?>" rel="stylesheet">
	<link href="<?php echo base_url() . 'theme/css/jssocials-theme-flat.css' ?>" rel="stylesheet">
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/font-awesome.min.css' ?>" />
	<!-- SEO Tags -->
	<meta name="description" content="<?php echo $description; ?>" />
	<link rel="canonical" href="<?php echo site_url('blog/' . $slug); ?>" />
	<meta property="og:locale" content="id_ID" />
	<meta property="og:type" content="article" />
	<meta property="og:title" content="<?php echo $title; ?>" />
	<meta property="og:description" content="<?php echo $description; ?>" />
	<meta property="og:url" content="<?php echo site_url('blog/' . $slug); ?>" />
	<meta property="og:site_name" content="<?php echo $site_name; ?>" />
	<meta property="article:publisher" content="<?php echo $site_facebook; ?>" />
	<meta property="article:section" content="<?php echo $category; ?>" />
	<meta property="og:image" content="<?php echo base_url() . 'assets/images/' . $image; ?>" />
	<meta property="og:image:secure_url" content="<?php echo base_url() . 'assets/images/' . $image; ?>" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:description" content="<?php echo $description; ?>" />
	<meta name="twitter:title" content="<?php echo $title; ?>" />
	<meta name="twitter:site" content="<?php echo $site_twitter; ?>" />
	<meta name="twitter:image" content="<?php echo base_url() . 'assets/images/' . $image; ?>" />
	<!-- / End SEO Tags. -->
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
		<main class="cd-main-content mt-10">



			<!-- SECTION ABOUT
				================================================== 	-->
			<section class="page-section small-section">
				<div class="container relative">

					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<!-- SECTION BLOG ITEM
								================================================== -->
							<div class="blog-item clearfix">

								<!--POST TITLE-->
								<h2 class="color-primary2 heading5 mt-0 font-face1 "><?php echo $title; ?></h2>

								<!--POST META-->
								<div class="blog-item-meta font-face1">
									<span><a href="javascript:void(0)"><i class="fa fa-calendar-o"></i> <?php echo date('d M Y', strtotime($date)); ?></a></span>
									<span class="separator">&vert;</span>
									<span><a href="javascript:void(0)"><i class="fa fa-user"></i> <?php echo $author; ?></a></span>
									<span class="separator">&vert;</span>
									<span><a href="<?php echo site_url('category/' . $category_slug); ?>"><i class="fa fa-folder-open"></i> <?php echo $category; ?></a></span>
									<span class="separator">&vert;</span>
									<span><a href="javascript:void(0)"><i class="fa fa-eye"></i> <?php echo number_format($views) . ' views'; ?></a></span>
									<span class="separator">&vert;</span>
									<span><a href="javascript:void(0)"><i class="fa fa-comments"></i> <?php echo number_format($comment); ?> Comments</a></span>
								</div>

								<!--POST BODY-->
								<div class="blog-item-body heading11 light-text clearfix">
									<?php echo $content; ?>
								</div>

								<!--POST TAG-->
								<div class="post-meta-section clearfix">

									<div class="float-left font-face1 post-meta-holder nomargin">TAGS &mdash;
										<?php
										$split_tag = explode(",", $tags);
										foreach ($split_tag as $tag) :
										?>
											<a href="<?php echo site_url('tag/' . $tag); ?>"><?php echo $tag; ?></a> &vert;
										<?php endforeach; ?>
									</div>



								</div>


								<!--POST COMMENT-->
								<div class="comments-heading text-center mb-30 mt-60">
									<hgroup>
										<h2 class="font-face1 section-heading"><?php echo $comment; ?> Comments</h2>

									</hgroup>
								</div>

								<!-- Comment First level -->
								<ul class="comments-list mb-100 mb-md-80 mb-sm-60 clearfix">
									<?php foreach ($show_comments->result() as $row) : ?>
										<li class="comment">
											<div class="comment-body clearfix">
												<div class="lp1 font-face1">
													<span class="user-avatar float-left hidden-xs">
														<img alt="" src="<?php echo base_url() . 'assets/images/' . $row->comment_image; ?>">
													</span>
													<div class="comment-user">
														<a href="javascript:void(0)"><?php echo $row->comment_name; ?></a>
													</div>
													<div class="comment-date">
														<span><?php echo date('d M Y H:i:s', strtotime($row->comment_date)); ?></span>
													</div>
												</div>
												<div class="comment-inner light-text">
													<p><?php echo $row->comment_message; ?></p>
												</div>
											</div>
											<!-- Comment children second level -->
											<?php
											$comment_id = $row->comment_id;
											$query = $this->db->query("SELECT * FROM tbl_comment WHERE comment_status='1' AND comment_parent='$comment_id'");
											foreach ($query->result() as $i) :
											?>
												<ul class="children">
													<li class="comment">
														<div class="comment-body clearfix">
															<div class="lp1 font-face1">
																<span class="user-avatar float-left hidden-xs">
																	<img alt="" src="<?php echo base_url() . 'assets/images/' . $i->comment_image; ?>">
																</span>
																<div class="comment-user">
																	<a href="javascript:void(0)"><?php echo $i->comment_name; ?></a>
																</div>
																<div class="comment-date">
																	<span><?php echo date('d M Y H:i:s', strtotime($i->comment_date)); ?></span>
																</div>
															</div>
															<div class="comment-inner light-text">
																<p><?php echo $i->comment_message; ?></p>
															</div>
														</div>
													</li>
												</ul>
												<!-- Comment children second level -->
											<?php endforeach; ?>

										</li>
									<?php endforeach; ?>

								</ul>
								<!-- End Comment First level -->

								<!--POST LEAVE COMMENT-->
								<div class="comments-heading text-center mb-30">
									<hgroup>
										<h2 class="font-face1 section-heading">Leave a comment</h2>
									</hgroup>
								</div>
								<h4 class="p-title mt-20"><b></b></h4>
								<?php echo $this->session->flashdata('msg'); ?>
								<form class="form-block form-plr-15 form-h-45 form-mb-20 form-brdr-lite-white mb-md-50" method="post" action="<?php echo site_url('send_comment'); ?>">
									<input type="hidden" name="post_id" value="<?php echo $post_id; ?>" required>
									<input type="hidden" name="slug" value="<?php echo $slug; ?>" required>
									<input type="text" name="name" placeholder="Name*:" required>
									<input type="text" name="email" placeholder="Email*:" required>
									<textarea class="ptb-10" name="comment" placeholder="Comment*" required></textarea>
									<button class="btn-fill-primary plr-30" rows="4" cols="50" type="submit"><b class="font-face1">SEND</b></button>
								</form>
								<!--END POST LEAVE COMMENT-->

							</div>

						</div>
					</div>
				</div>
			</section>



			<hr class="nomargin nopadding" />

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

	<!-- JAVASCRIPT
		==================================================-->
	<script src="<?php echo base_url('theme/js/jquery-2.2.4.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jquery.easing.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/bootstrap.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/waypoints.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jquery.scrollTo.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jquery.localScroll.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jquery.viewport.mini.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jquery.sticky.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jquery.fitvids.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jquery.parallax-1.1.3.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/isotope.pkgd.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/imagesloaded.pkgd.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/masonry.pkgd.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jquery.magnific-popup.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jquery.counterup.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/slick.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/wow.min.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/script.js') ?>"></script>
	<script src="<?php echo base_url('theme/js/jssocials.min.js') ?>"></script>

</body>

</html>