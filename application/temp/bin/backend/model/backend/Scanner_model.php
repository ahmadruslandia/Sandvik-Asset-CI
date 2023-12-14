<?php
class Scanner_model extends CI_Model
{

	function get_scanner()
	{
		$hsl = $this->db->query("SELECT id_scanner,assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_scanner JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_scanner($assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_scanner(assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$md','$brn','$sn','$rm','$jenis')");
		return $hsl;
	}

	function update_scanner($idprd, $assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_scanner SET assets_number='$assnumb',assets_name='$assnam',model='$md',brand='$brn',serial_number='$sn',room='$rm',jenis_aktivasi='$jenis' WHERE id_scanner='$idprd'");
		return $hsl;
	}

	function delete_scanner($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_scanner WHERE id_scanner='$idprd'");
		return $hsl;
	}
}
