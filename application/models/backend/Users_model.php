<?php
class Users_model extends CI_Model
{

	function get_users()
	{
		$hsl = $this->db->query("SELECT * FROM tbl_user");
		return $hsl;
	}

	function insert_user($di, $nama, $number, $email, $pass, $area, $division, $room, $level, $gambar)
	{
		$hsl = $this->db->query("INSERT INTO tbl_user(user_di,user_name,user_number,user_email,user_password,user_area,user_room,user_level,user_status,user_photo) VALUES ('$di','$nama','$number','$email',MD5('$pass'),'$area','$division',$room','$level','1','$gambar')");
		return $hsl;
	}

	function insert_user_noimg($di, $nama, $number, $email, $pass, $area, $division, $room, $level)
	{
		$hsl = $this->db->query("INSERT INTO tbl_user(user_di,user_name,user_number,user_email,user_password,user_area,user_room,user_level,user_status) VALUES ('$di','$nama','$number','$email',MD5('$pass'),'$area','$division',$room','$level','1')");
		return $hsl;
	}

	function update_user_nopass($userid, $di, $nama, $number, $email, $area, $division, $room, $level, $gambar)
	{
		$hsl = $this->db->query("UPDATE tbl_user SET user_di='$di',user_name='$nama',user_number='$number',user_email='$email',user_area='$area',user_division='$division',user_room='$room',user_level='$level',user_photo='$gambar' WHERE user_id='$userid'");
		return $hsl;
	}

	function update_user_nopassimg($userid, $di, $nama, $number, $email, $area, $division, $room, $level)
	{
		$hsl = $this->db->query("UPDATE tbl_user SET user_di='$di',user_name='$nama',user_number='$number',user_email='$email',user_area='$area',user_division='$division',user_room='$room',user_level='$level' WHERE user_id='$userid'");
		return $hsl;
	}

	function update_user($userid, $di, $nama, $number, $email, $pass, $area, $division, $room, $level, $gambar)
	{
		$hsl = $this->db->query("UPDATE tbl_user SET user_di='$di',user_name='$nama',user_number='$number',user_email='$email',user_password=MD5('$pass'),user_area='$area',user_division='$division',user_room='$room',user_level='$level',user_photo='$gambar' WHERE user_id='$userid'");
		return $hsl;
	}

	function update_user_noimg($userid, $di, $nama, $number, $email, $pass, $area, $division, $room, $level)
	{
		$hsl = $this->db->query("UPDATE tbl_user SET user_di='$di',user_name='$nama',user_number='$number',user_email='$email',user_password=MD5('$pass'),user_area='$area',user_division='$division',user_room='$room',user_level='$level' WHERE user_id='$userid'");
		return $hsl;
	}

	function lock_user($user_id)
	{
		$hsl = $this->db->query("UPDATE tbl_user SET user_status='0' WHERE user_id='$user_id'");
		return $hsl;
	}

	function unlock_user($user_id)
	{
		$hsl = $this->db->query("UPDATE tbl_user SET user_status='1' WHERE user_id='$user_id'");
		return $hsl;
	}

	function delete_user($userid)
	{
		$hsl = $this->db->query("DELETE FROM tbl_user WHERE user_id='$userid'");
		return $hsl;
	}

	function validasi_email($email)
	{
		$hsl = $this->db->query("SELECT * FROM tbl_user WHERE user_email='$email'");
		return $hsl;
	}
}
