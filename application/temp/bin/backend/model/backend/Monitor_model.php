<?php
class Monitor_model extends CI_Model
{

	function get_monitor()
	{
		$hsl = $this->db->query("SELECT id_monitor,assets_number,assets_name,DATE_FORMAT(monitor_date,'%d %M %Y') monitor_date,monitor_model,brand,user_di,serial_number,mac_address,operating_system,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_monitor JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_monitor($assnumb, $assnam, $dt, $monmod, $brn, $ussid, $sn, $ma, $os, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_monitor(assets_number,assets_name,monitor_date,monitor_model,brand,user_di,serial_number,mac_address,operating_system,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$dt','$monmod','$brn','$ussid','$sn', '$ma', '$os', '$rm','$jenis')");
		return $hsl;
	}

	function update_monitor($idmon, $assnumb, $assnam, $dt, $monmod, $brn, $ussid,  $sn, $ma, $os, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_monitor SET assets_number='$assnumb',assets_name='$assnam',monitor_date='$dt',monitor_model='$monmod',brand='$brn',user_di='$ussid',serial_number='$sn',mac_address='$ma',operating_system='$os',room='$rm',jenis_aktivasi='$jenis' WHERE id_monitor='$idmon'");
		return $hsl;
	}

	function delete_monitor($idmon)
	{
		$hsl = $this->db->query("DELETE FROM tbl_monitor WHERE id_monitor='$idmon'");
		return $hsl;
	}
}
