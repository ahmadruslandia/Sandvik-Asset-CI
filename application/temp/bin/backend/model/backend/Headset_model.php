<?php
class Headset_model extends CI_Model
{

	function get_headset()
	{
		$hsl = $this->db->query("SELECT id_headset,assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_headset JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_headset($assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_headset(assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$md','$brn','$sn','$rm','$jenis')");
		return $hsl;
	}

	function update_headset($idprd, $assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_headset SET assets_number='$assnumb',assets_name='$assnam',model='$md',brand='$brn',serial_number='$sn',room='$rm',jenis_aktivasi='$jenis' WHERE id_headset='$idprd'");
		return $hsl;
	}

	function delete_headset($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_headset WHERE id_headset='$idprd'");
		return $hsl;
	}
}
