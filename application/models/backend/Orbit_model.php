<?php
class Orbit_model extends CI_Model
{

	function get_orbit()
	{
		$hsl = $this->db->query("SELECT id_orbit,assets_number,assets_name,model,brand,po,serial_number,imei,locations,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_orbit JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_orbit($assnumb, $assnam, $md, $brn, $po, $sn, $im, $lc, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_orbit(assets_number,assets_name,model,brand,po,serial_number,imei,locations,jenis_aktivasi) VALUES ('$assnumb','$assnam','$md','$brn','$po','$sn','$im','$lc','$jenis')");
		return $hsl;
	}

	function update_orbit($idprd, $assnumb, $assnam, $md, $brn, $po, $sn, $im, $lc, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_orbit SET assets_number='$assnumb',assets_name='$assnam',model='$md',brand='$brn',po='$po',serial_number='$sn',imei='$im',locations='$lc',jenis_aktivasi='$jenis' WHERE id_orbit='$idprd'");
		return $hsl;
	}

	function delete_orbit($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_orbit WHERE id_orbit='$idprd'");
		return $hsl;
	}
}
