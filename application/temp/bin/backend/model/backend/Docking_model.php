<?php
class Docking_model extends CI_Model
{

	function get_docking()
	{
		$hsl = $this->db->query("SELECT id_docking,assets_number,assets_name,model,brand,serial_number,user_di,locations,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_docking JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_docking($assnumb, $assnam, $md, $brn, $sn, $ussdi, $lc, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_docking(assets_number,assets_name,model,brand,serial_number,user_di,locations,jenis_aktivasi) VALUES ('$assnumb','$assnam','$md','$brn','$sn','$ussdi','$lc','$jenis')");
		return $hsl;
	}

	function update_docking($idprd, $assnumb, $assnam, $md, $brn, $sn, $ussdi, $lc, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_docking SET assets_number='$assnumb',assets_name='$assnam',model='$md',brand='$brn',serial_number='$sn',user_di='$ussdi',locations='$lc',jenis_aktivasi='$jenis' WHERE id_docking='$idprd'");
		return $hsl;
	}

	function delete_docking($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_docking WHERE id_docking='$idprd'");
		return $hsl;
	}
}
