<?php
class Ht_model extends CI_Model
{

	function get_ht()
	{
		$hsl = $this->db->query("SELECT id_ht,assets_number,network_id,DATE_FORMAT(date_manufacture,'%d %M %Y') date_manufacture,model,brand,serial_number,mac_address,type_ht,warranty,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_ht JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_ht($assnumb, $ntwid, $dt, $md, $brn, $sn, $ma, $tp, $wr, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_ht(assets_number,network_id,date_manufacture,model,brand,serial_number,mac_address,type_ht,warranty,jenis_aktivasi) VALUES ('$assnumb','$ntwid','$dt','$md','$brn','$sn', '$ma', '$tp', '$wr', '$jenis')");
		return $hsl;
	}

	function update_ht($idprd, $assnumb, $ntwid, $dt, $md, $brn,  $sn, $ma, $tp, $wr, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_ht SET assets_number='$assnumb',network_id='$ntwid',date_manufacture='$dt',model='$md',brand='$brn',serial_number='$sn',mac_address='$ma',type_ht='$tp',warranty='$wr',jenis_aktivasi='$jenis' WHERE id_ht='$idprd'");
		return $hsl;
	}

	function delete_ht($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_ht WHERE id_ht='$idprd'");
		return $hsl;
	}
}
