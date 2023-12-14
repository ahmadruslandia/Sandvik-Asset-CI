<?php
class Ups_model extends CI_Model
{

	function get_ups()
	{
		$hsl = $this->db->query("SELECT id_ups,assets_number,network_id,DATE_FORMAT(date_manufacture,'%d %M %Y') date_manufacture,model,brand,serial_number,type_ups,warranty,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_ups JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_ups($assnumb, $ntwid, $dt, $md, $brn, $sn, $tp, $wr, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_ups(assets_number,network_id,date_manufacture,model,brand,serial_number,type_ups,warranty,jenis_aktivasi) VALUES ('$assnumb','$ntwid','$dt','$md','$brn','$sn', '$tp', '$wr', '$jenis')");
		return $hsl;
	}

	function update_ups($idprd, $assnumb, $ntwid, $dt, $md, $brn, $sn, $tp, $wr, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_ups SET assets_number='$assnumb',network_id='$ntwid',date_manufacture='$dt',model='$md',brand='$brn',serial_number='$sn',type_ups='$tp',warranty='$wr',jenis_aktivasi='$jenis' WHERE id_ups='$idprd'");
		return $hsl;
	}

	function delete_ups($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_ups WHERE id_ups='$idprd'");
		return $hsl;
	}
}
