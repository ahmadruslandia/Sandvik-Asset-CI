<?php
class Wifi_model extends CI_Model
{

	function get_wifi()
	{
		$hsl = $this->db->query("SELECT id_wifi,assets_number,assets_name,DATE_FORMAT(date_manufacture,'%d %M %Y') date_manufacture,model,brand,serial_number,mac_address,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_wifi JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_wifi($assnumb, $assnam, $dt, $md, $brn, $sn, $ma, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_wifi(assets_number,assets_name,date_manufacture,model,brand,serial_number,mac_address,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$dt','$md','$brn','$sn', '$ma',  '$rm','$jenis')");
		return $hsl;
	}

	function update_wifi($idprd, $assnumb, $assnam, $dt, $md, $brn,  $sn, $ma, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_wifi SET assets_number='$assnumb',assets_name='$assnam',date_manufacture='$dt',model='$md',brand='$brn',serial_number='$sn',mac_address='$ma',room='$rm',jenis_aktivasi='$jenis' WHERE id_wifi='$idprd'");
		return $hsl;
	}

	function delete_wifi($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_wifi WHERE id_wifi='$idprd'");
		return $hsl;
	}
}
