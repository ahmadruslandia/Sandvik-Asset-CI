<?php
class Tv_model extends CI_Model
{

	function get_tv()
	{
		$hsl = $this->db->query("SELECT id_tv,assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_tv JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_tv($assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_tv(assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$md','$brn','$sn','$rm','$jenis')");
		return $hsl;
	}

	function update_tv($idprd, $assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_tv SET assets_number='$assnumb',assets_name='$assnam',model='$md',brand='$brn',serial_number='$sn',room='$rm',jenis_aktivasi='$jenis' WHERE id_tv='$idprd'");
		return $hsl;
	}

	function delete_tv($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_tv WHERE id_tv='$idprd'");
		return $hsl;
	}
}
