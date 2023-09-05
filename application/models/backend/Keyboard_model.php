<?php
class Keyboard_model extends CI_Model
{

	function get_keyboard()
	{
		$hsl = $this->db->query("SELECT id_keyboard,assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_keyboard JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_keyboard($assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_keyboard(assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$md','$brn','$sn','$rm','$jenis')");
		return $hsl;
	}

	function update_keyboard($idprd, $assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_keyboard SET assets_number='$assnumb',assets_name='$assnam',model='$md',brand='$brn',serial_number='$sn',room='$rm',jenis_aktivasi='$jenis' WHERE id_keyboard='$idprd'");
		return $hsl;
	}

	function delete_keyboard($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_keyboard WHERE id_keyboard='$idprd'");
		return $hsl;
	}
}
