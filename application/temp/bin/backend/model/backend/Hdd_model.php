<?php
class Hdd_model extends CI_Model
{

	function get_hdd()
	{
		$hsl = $this->db->query("SELECT id_hdd,assets_number,assets_name,capacity,model,brand,serial_number,mac_address,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_hdd JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_hdd($assnumb, $assnam, $cp, $md, $brn, $sn, $ma, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_hdd(assets_number,assets_name,capacity,model,brand,serial_number,mac_address,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$cp','$md','$brn','$sn', '$ma',  '$rm','$jenis')");
		return $hsl;
	}

	function update_hdd($idprd, $assnumb, $assnam, $cp, $md, $brn,  $sn, $ma, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_hdd SET assets_number='$assnumb',assets_name='$assnam',capacity='$cp',model='$md',brand='$brn',serial_number='$sn',mac_address='$ma',room='$rm',jenis_aktivasi='$jenis' WHERE id_hdd='$idprd'");
		return $hsl;
	}

	function delete_hdd($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_hdd WHERE id_hdd='$idprd'");
		return $hsl;
	}
}
