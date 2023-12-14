<?php
class Laptop_model extends CI_Model
{

	function get_laptop()
	{
		$hsl = $this->db->query("SELECT id_laptop,assets_number,assets_name,DATE_FORMAT(laptop_date,'%d %M %Y') laptop_date,laptop_model,brand,user_di,serial_number,mac_address,hard_disk,processor,operating_system,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_laptop JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_laptop($assnumb, $assnam, $dt, $lapmod, $brn, $ussid, $sn, $ma, $hd, $prc, $os, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_laptop(assets_number,assets_name,laptop_date,laptop_model,brand,user_di,serial_number,mac_address,hard_disk,processor,operating_system,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$dt','$lapmod','$brn','$ussid','$sn', '$ma', '$hd', '$prc', '$os', '$rm','$jenis')");
		return $hsl;
	}

	function update_laptop($idlap, $assnumb, $assnam, $dt, $lapmod, $brn, $ussid,  $sn, $ma, $hd, $prc, $os, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_laptop SET assets_number='$assnumb',assets_name='$assnam',laptop_date='$dt',laptop_model='$lapmod',brand='$brn',user_di='$ussid',serial_number='$sn',mac_address='$ma',hard_disk='$hd',processor='$prc',operating_system='$os',room='$rm',jenis_aktivasi='$jenis' WHERE id_laptop='$idlap'");
		return $hsl;
	}

	function delete_laptop($idlap)
	{
		$hsl = $this->db->query("DELETE FROM tbl_laptop WHERE id_laptop='$idlap'");
		return $hsl;
	}
}
