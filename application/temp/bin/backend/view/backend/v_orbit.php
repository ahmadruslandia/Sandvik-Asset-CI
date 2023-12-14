<!DOCTYPE html>
<html>

<head>

    <!-- Title -->
    <title>Orbit</title>

    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta charset="UTF-8">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="Ahmad Ruslandia Papua" />
    <link rel="shortcut icon" href="<?php echo base_url() . 'assets/images/favicon.png' ?>">
    <!-- Styles -->
    <link href="<?php echo base_url() . 'assets/plugins/pace-master/themes/blue/pace-theme-flash.css' ?>" rel="stylesheet" />
    <link href="<?php echo base_url() . 'assets/plugins/uniform/css/uniform.default.min.css' ?>" rel="stylesheet" />
    <link href="<?php echo base_url() . 'assets/plugins/bootstrap/css/bootstrap.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/fontawesome/css/font-awesome.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/line-icons/simple-line-icons.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/offcanvasmenueffects/css/menu_cornerbox.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/waves/waves.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/switchery/switchery.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/3d-bold-navigation/css/style.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/slidepushmenus/css/component.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/datatables/css/jquery.datatables.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/datatables/css/jquery.datatables_themeroller.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/bootstrap-datepicker/css/datepicker3.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/select2/css/select2.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/plugins/toastr/jquery.toast.min.css' ?>" rel="stylesheet" type="text/css" />
    <!-- Theme Styles -->
    <link href="<?php echo base_url() . 'assets/css/modern.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/css/themes/blue.css' ?>" class="theme-color" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/css/custom.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/css/dropify.min.css' ?>" rel="stylesheet" type="text/css">

    <script src="<?php echo base_url() . 'assets/plugins/3d-bold-navigation/js/modernizr.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/offcanvasmenueffects/js/snap.svg-min.js' ?>"></script>


</head>

<body class="page-header-fixed  compact-menu  pace-done page-sidebar-fixed">
    <div class="overlay"></div>

    <main class="page-content content-wrap">
        <div class="navbar">
            <div class="navbar-inner">
                <div class="sidebar-pusher">
                    <a href="javascript:void(0);" class="waves-effect waves-button waves-classic push-sidebar">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>
                <div class="logo-box">
                    <a href="<?php echo site_url('backend/dashboard'); ?>" class="logo-text"><span>SANDVIK</span></a>
                </div><!-- Logo Box -->
                <div class="search-button">
                    <a href="javascript:void(0);" class="waves-effect waves-button waves-classic show-search"><i class="fa fa-search"></i></a>
                </div>
                <div class="topmenu-outer">
                    <div class="top-menu">
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <a href="javascript:void(0);" class="waves-effect waves-button waves-classic sidebar-toggle"><i class="fa fa-bars"></i></a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">

                            <?php
                            $count_comment = $this->db->get_where('tbl_comment', array('comment_status' => '0'));
                            ?>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle waves-effect waves-button waves-classic" data-toggle="dropdown"><i class="fa fa-comment"></i><span class="badge badge-success pull-right"><?php echo $count_comment->num_rows(); ?></span></a>
                                <ul class="dropdown-menu title-caret dropdown-lg" role="menu">
                                    <li>
                                        <p class="drop-title">Anda memiliki <?php echo $count_comment->num_rows(); ?> komentar baru !</p>
                                    </li>
                                    <li class="dropdown-menu-list slimscroll messages">
                                        <ul class="list-unstyled">
                                            <?php
                                            $query_cmt = $this->db->get_where('tbl_comment', array('comment_status' => '0'), 6);
                                            foreach ($query_cmt->result() as $row) :
                                            ?>
                                                <li>
                                                    <a href="<?php echo site_url('backend/comment/unpublish'); ?>">
                                                        <div class="msg-img">
                                                            <div class="online on"></div><img class="img-circle" src="<?php echo base_url() . 'assets/images/user_blank.png'; ?>" alt="">
                                                        </div>
                                                        <p class="msg-name"><?php echo $row->comment_name; ?></p>
                                                        <p class="msg-text"><?php echo word_limiter($row->comment_message, 5); ?></p>
                                                        <p class="msg-time"><?php echo date('d-m-Y H:i:s', strtotime($row->comment_date)); ?></p>
                                                    </a>
                                                </li>
                                            <?php endforeach; ?>

                                        </ul>
                                    </li>
                                    <li class="drop-all"><a href="<?php echo site_url('backend/comment/unpublish'); ?>" class="text-center">All Comments</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle waves-effect waves-button waves-classic" data-toggle="dropdown">
                                    <span class="user-name"><?php echo $this->session->userdata('name'); ?><i class="fa fa-angle-down"></i></span>
                                    <?php
                                    $user_id = $this->session->userdata('id');
                                    $query = $this->db->get_where('tbl_user', array('user_id' => $user_id));
                                    if ($query->num_rows() > 0) :
                                        $row = $query->row_array();
                                    ?>
                                        <img class="img-circle avatar" src="<?php echo base_url() . 'assets/images/' . $row['user_photo']; ?>" width="40" height="40" alt="">
                                    <?php else : ?>
                                        <img class="img-circle avatar" src="<?php echo base_url() . 'assets/images/user_blank.png'; ?>" width="40" height="40" alt="">
                                    <?php endif; ?>
                                </a>
                                <ul class="dropdown-menu dropdown-list" role="menu">
                                    <li role="presentation"><a href="<?php echo site_url('backend/change_pass'); ?>"><i class="fa fa-key"></i>Change Password</a></li>
                                    <li role="presentation"><a href="<?php echo site_url('backend/comment/unpublish'); ?>"><i class="fa fa-comment"></i>Comments<span class="badge badge-success pull-right"><?php echo $count_comment->num_rows(); ?></span></a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a href="<?php echo site_url('logout'); ?>"><i class="fa fa-sign-out m-r-xs"></i>Log out</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="<?php echo site_url('logout'); ?>" class="log-out waves-effect waves-button waves-classic">
                                    <span><i class="fa fa-sign-out m-r-xs"></i>Log out</span>
                                </a>
                            </li>
                        </ul><!-- Nav -->
                    </div><!-- Top Menu -->
                </div>
            </div>
        </div><!-- Navbar -->
        <div class="page-sidebar sidebar">
            <div class="page-sidebar-inner slimscroll">
                <div class="sidebar-header">
                    <div class="sidebar-profile">
                        <?php
                        $user_id = $this->session->userdata('id');
                        $query = $this->db->get_where('tbl_user', array('user_id' => $user_id));
                        if ($query->num_rows() > 0) :
                            $row = $query->row_array();
                        ?>
                            <a href="javascript:void(0);">
                                <div class="sidebar-profile-image">
                                    <img src="<?php echo base_url() . 'assets/images/' . $row['user_photo']; ?>" class="img-circle img-responsive" alt="">
                                </div>
                                <div class="sidebar-profile-details">
                                    <span><?php echo $this->session->userdata('name'); ?><br>
                                        <?php if ($row['user_level'] == '1') : ?>
                                            <small>Administrator</small>
                                        <?php else : ?>
                                            <small>Employe</small>
                                        <?php endif; ?>
                                    </span>
                                </div>
                            </a>
                        <?php else : ?>
                            <a href="javascript:void(0);">
                                <div class="sidebar-profile-image">
                                    <img src="<?php echo base_url() . 'assets/images/user_blank.png'; ?>" class="img-circle img-responsive" alt="">
                                </div>
                                <div class="sidebar-profile-details">
                                    <span><?php echo $this->session->userdata('name'); ?><br>
                                        <?php if ($row['user_level'] == '1') : ?>
                                            <small>Administrator</small>
                                        <?php else : ?>
                                            <small>Employe</small>
                                        <?php endif; ?>
                                    </span>
                                </div>
                            </a>
                        <?php endif; ?>
                    </div>
                </div>
                <ul class="menu accordion-menu">
                    <li><a href="<?php echo site_url('backend/dashboard'); ?>" class="waves-effect waves-button"><span class="menu-icon icon-home"></span>
                            <p>Dashboard</p>
                        </a></li>
                    <li class="droplink"><a href="#" class="waves-effect waves-button"><span class="menu-icon icon-pin"></span>
                            <p>Post</p><span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li><a href="<?php echo site_url('backend/post/add_new'); ?>">Add New</a></li>
                            <li><a href="<?php echo site_url('backend/post'); ?>">Post List</a></li>
                            <li><a href="<?php echo site_url('backend/category'); ?>">Category</a></li>
                            <li><a href="<?php echo site_url('backend/tag'); ?>">Tag</a></li>
                        </ul>
                    </li>
                    <li><a href="<?php echo site_url('backend/comment'); ?>" class="waves-effect waves-button"><span class="menu-icon icon-bubbles"></span>
                            <p>Comments</p>
                        </a></li>
                    <li class="droplink active open"><a href=" #" class="waves-effect waves-button"><span class="menu-icon fa fa-file-o"></span>
                            <p>Assets</p><span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li><a href="<?php echo site_url('backend/laptop'); ?>">Laptop</a></li>
                            <li><a href="<?php echo site_url('backend/pc'); ?>">PC</a></li>
                            <li><a href="<?php echo site_url('backend/monitor'); ?>">Monitor</a></li>
                            <li><a href=" <?php echo site_url('backend/keyboard'); ?>">Keyboard</a></li>
                            <li><a href="<?php echo site_url('backend/docking'); ?>">Docking</a></li>
                            <li><a href="<?php echo site_url('backend/printer'); ?>">Printer</a></li>
                            <li><a href="<?php echo site_url('backend/scanner'); ?>">Scanner</a></li>
                            <li><a href="<?php echo site_url('backend/handphone'); ?>">Handphone</a></li>
                            <li><a href="<?php echo site_url('backend/tablet'); ?>">Tablet</a></li>
                            <li><a href="<?php echo site_url('backend/headset'); ?>">Headset</a></li>
                            <li><a href="<?php echo site_url('backend/network'); ?>">Network</a></li>
                            <li><a href="<?php echo site_url('backend/wifi'); ?>">Wi-Fi</a></li>
                            <li><a href="<?php echo site_url('backend/ups'); ?>">UPS</a></li>
                            <li><a href="<?php echo site_url('backend/ht'); ?>">HT</a></li>
                            <li><a href="<?php echo site_url('backend/tv'); ?>">TV</a></li>
                            <li><a href="<?php echo site_url('backend/hdd'); ?>">HDD</a></li>
                            <li><a href="<?php echo site_url('backend/lcdprojector'); ?>">LCD Projector</a></li>
                            <li class="active"><a href="<?php echo site_url('backend/orbit'); ?>">Orbit</a></li>
                            <li><a href="<?php echo site_url('backend/ipclock'); ?>">IP Clock</a></li>
                            <li><a href="<?php echo site_url('backend/jenis'); ?>">Status</a></li>
                        </ul>
                    </li>
                    <?php if ($this->session->userdata('access') == '1') : ?>
                        <li><a href="<?php echo site_url('backend/users'); ?>" class="waves-effect waves-button"><span class="menu-icon icon-user"></span>
                                <p>Users</p>
                            </a></li>
                        <li class="droplink"><a href="<?php echo site_url('backend/settings'); ?>" class="waves-effect waves-button"><span class="menu-icon icon-settings"></span>
                                <p>Settings</p><span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li><a href="<?php echo site_url('backend/settings'); ?>">Basic</a></li>
                                <li><a href="<?php echo site_url('backend/home_setting'); ?>">Home</a></li>
                                <li><a href="<?php echo site_url('backend/about_setting'); ?>">About</a></li>
                                <li><a href="<?php echo site_url('backend/navbar'); ?>">Navbar</a></li>
                            </ul>
                        </li>
                    <?php else : ?>
                    <?php endif; ?>
                    <li><a href="<?php echo site_url('logout'); ?>" class="waves-effect waves-button"><span class="menu-icon icon-logout"></span>
                            <p>Log Out</p>
                        </a></li>

                </ul>
            </div><!-- Page Sidebar Inner -->
        </div><!-- Page Sidebar -->
        <div class="page-inner">

            <div id="main-wrapper">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-white">

                            <div class="panel-body">
                                <button type="button" class="btn btn-success m-b-sm" data-toggle="modal" data-target="#myModal">Add New Data</button>

                                <table id="mytable" class="display table" style="width: 100%; cellspacing: 0;">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Asset Number</th>
                                            <th>Asset Name</th>
                                            <th>Model</th>
                                            <th>Brand</th>
                                            <th>PO</th>
                                            <th>S/N</th>
                                            <th>Imei</th>
                                            <th>Locations</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $total = 1;
                                        $no = 0;
                                        foreach ($data->result() as $row) :

                                            $no++;
                                            $total++;
                                        ?>
                                            <tr>
                                                <td style="vertical-align: middle;"><?php echo $no; ?></td>
                                                <td style="vertical-align: middle;"><?php echo $row->assets_number; ?></td>
                                                <td style="vertical-align: middle;"><?php echo $row->assets_name; ?></td>
                                                <td style="vertical-align: middle;"><?php echo $row->model; ?></td>
                                                <td style="vertical-align: middle;"><?php echo $row->brand; ?></td>
                                                <td style="vertical-align: middle;"><?php echo $row->po; ?></td>
                                                <td style="vertical-align: middle;"><?php echo $row->serial_number; ?></td>
                                                <td style="vertical-align: middle;"><?php echo $row->imei; ?></td>
                                                <td style="vertical-align: middle;"><?php echo $row->locations; ?></td>
                                                <td style="vertical-align: middle;"><?php echo $row->nama_jenis; ?></td>
                                                <td style="vertical-align: middle;">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                            Action <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                                            <li><a href="javascript:void(0);" data-toggle="modal" data-target="#ModalEdit<?php echo $row->id_orbit ?>"><span class="icon-pencil"></span> Edit</a></li>
                                                            <li><a href="javascript:void(0);" class="delete" data-prdid="<?php echo $row->id_orbit ?>"><span class="icon-trash"></span> Delete</a></li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                        <tr>
                                            <td class="hide"><?php echo $total; ?></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                        </tr>
                                        <tr>
                                            <td class="hide"><?php echo $total; ?></td>
                                            <td>#</td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td><br></td>
                                            <td style="vertical-align: middle;">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                        Export <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                                        <li><a href="<?php echo site_url('backend/orbit/pdf'); ?>"> Pdf</a></li>
                                                        <li><a href="<?php echo site_url('backend/orbit/excel'); ?>"> Excel</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                    </div>
                </div><!-- Row -->
            </div><!-- Main Wrapper -->
            <div class="page-footer">
                <p class="no-s"><?php echo date('Y'); ?> &copy; Powered by FIKOM.UMI</p>
            </div>
        </div><!-- Page Inner -->
    </main><!-- Page Content -->

    <div class="cd-overlay"></div>

    <!-- Modal -->
    <form id="add-row-form" action="<?php echo base_url() . 'backend/orbit/insert' ?>" method="post" enctype="multipart/form-data">
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Add New Data</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" name="assnumb" class="form-control" placeholder="Asset Number" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="assnam" class="form-control" placeholder="Asset Name" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="md" class="form-control" placeholder="Model" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="brn" class="form-control" placeholder="Brand" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="po" class="form-control" placeholder="PO" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="sn" class="form-control" placeholder="Serial Number" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="im" class="form-control" placeholder="Imei" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="lc" class="form-control" placeholder="Location" required>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" name="jenis" required>
                                        <option value="">-Select Option-</option>
                                        <?php foreach ($jenis->result() as $row) : ?>
                                            <option value="<?php echo $row->id_jenis; ?>"><?php echo $row->nama_jenis; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-success">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <?php
    foreach ($data->result() as $row) :
    ?>

        <!-- Modal -->
        <form id="add-row-form" action="<?php echo base_url() . 'backend/orbit/update' ?>" method="post" enctype="multipart/form-data">
            <div class="modal fade" id="ModalEdit<?php echo $row->id_orbit ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Edit Data</h4>
                        </div>
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" name="assnumb" value="<?php echo $row->assets_number; ?>" class="form-control" placeholder="Asset Number" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="assnam" value="<?php echo $row->assets_name; ?>" class="form-control" placeholder="Asset Name" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="md" value="<?php echo $row->model; ?>" class="form-control" placeholder="Model" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="brn" value="<?php echo $row->brand; ?>" class="form-control" placeholder="Brand" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="po" value="<?php echo $row->po; ?>" class="form-control" placeholder="PO" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="sn" value="<?php echo $row->serial_number; ?>" class="form-control" placeholder="Serial Number" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="im" value="<?php echo $row->imei; ?>" class="form-control" placeholder="Imei" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="lc" value="<?php echo $row->locations; ?>" class="form-control" placeholder="Location" required>
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control" name="jenis" required>
                                            <option value="">-Select Option-</option>
                                            <?php
                                            foreach ($jenis->result() as $jns) :
                                            ?>
                                                <option value="<?php echo $jns->id_jenis; ?>"><?php echo $jns->nama_jenis; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="hidden" name="idprd" value="<?php echo $row->id_orbit ?>" required>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-success">Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    <?php endforeach; ?>

    <!-- Modal hapus-->
    <form id="add-row-form" action="<?php echo base_url() . 'backend/orbit/delete' ?>" method="post" enctype="multipart/form-data">
        <div class="modal fade" id="ModalDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Delete Data</h4>
                    </div>
                    <div class="modal-body">
                        <strong>Anda yakin mau menghapus data ini?</strong>
                        <div class="form-group">
                            <input type="hidden" id="txt_kode" name="kode" class="form-control" placeholder="Name" required>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="submit" id="add-row" class="btn btn-danger">Delete</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Javascripts -->
    <script src="<?php echo base_url() . 'assets/plugins/jquery/jquery-2.1.4.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/jquery-ui/jquery-ui.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/select2/js/select2.min.js' ?>" type="text/javascript"></script>
    <script src="<?php echo base_url() . 'assets/plugins/pace-master/pace.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/jquery-blockui/jquery.blockui.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/bootstrap/js/bootstrap.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/switchery/switchery.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/uniform/jquery.uniform.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/offcanvasmenueffects/js/classie.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/offcanvasmenueffects/js/main.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/waves/waves.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/3d-bold-navigation/js/main.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/jquery-mockjax-master/jquery.mockjax.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/moment/moment.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/datatables/js/jquery.datatables.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/modern.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/dropify.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/plugins/toastr/jquery.toast.min.js' ?>"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#mytable').DataTable();
            $('.delete').on('click', function() {
                var prdid = $(this).data('prdid');
                $('#ModalDelete').modal('show');
                $('[name="kode"]').val(prdid);
            });
        });
    </script>


    <!--Toast Message-->
    <?php if ($this->session->flashdata('msg') == 'success') : ?>
        <script type="text/javascript">
            $.toast({
                heading: 'Success',
                text: "New Data Saved!",
                showHideTransition: 'slide',
                icon: 'success',
                hideAfter: false,
                position: 'bottom-right',
                bgColor: '#7EC857'
            });
        </script>
    <?php elseif ($this->session->flashdata('msg') == 'info') : ?>
        <script type="text/javascript">
            $.toast({
                heading: 'Info',
                text: "Data updated!",
                showHideTransition: 'slide',
                icon: 'info',
                hideAfter: false,
                position: 'bottom-right',
                bgColor: '#00C9E6'
            });
        </script>
    <?php elseif ($this->session->flashdata('msg') == 'success-hapus') : ?>
        <script type="text/javascript">
            $.toast({
                heading: 'Success',
                text: "Data Deleted!.",
                showHideTransition: 'slide',
                icon: 'success',
                hideAfter: false,
                position: 'bottom-right',
                bgColor: '#7EC857'
            });
        </script>
    <?php else : ?>

    <?php endif; ?>

</body>

</html>