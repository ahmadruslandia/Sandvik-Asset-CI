<?php
class LcdProjector_Model extends CI_Model
{

	function get_lcdprojector()
	{
		$hsl = $this->db->query("SELECT id_lcdprojector,assets_number,assets_name,capacity,lcd_projector,serial_number,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_lcdprojector JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_lcdprojector($assnumb, $assnam, $cp, $lp, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_lcdprojector(assets_number,assets_name,capacity,lcd_projector,serial_number,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$cp','$lp','$sn','$rm','$jenis')");
		return $hsl;
	}

	function update_lcdprojector($idprd, $assnumb, $assnam, $cp, $lp, $sn, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_lcdprojector SET assets_number='$assnumb',assets_name='$assnam',capacity='$cp',lcd_projector='$lp',serial_number='$sn',room='$rm',jenis_aktivasi='$jenis' WHERE id_lcdprojector='$idprd'");
		return $hsl;
	}

	function delete_lcdprojector($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_lcdprojector WHERE id_lcdprojector='$idprd'");
		return $hsl;
	}
}
