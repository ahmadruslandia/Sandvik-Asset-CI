<?php
class Printer_model extends CI_Model
{

	function get_printer()
	{
		$hsl = $this->db->query("SELECT id_printer,assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_printer JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_printer($assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_printer(assets_number,assets_name,model,brand,serial_number,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$md','$brn','$sn','$rm','$jenis')");
		return $hsl;
	}

	function update_printer($idprd, $assnumb, $assnam, $md, $brn, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_printer SET assets_number='$assnumb',assets_name='$assnam',model='$md',brand='$brn',serial_number='$sn',room='$rm',jenis_aktivasi='$jenis' WHERE id_printer='$idprd'");
		return $hsl;
	}

	function delete_printer($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_printer WHERE id_printer='$idprd'");
		return $hsl;
	}
}
