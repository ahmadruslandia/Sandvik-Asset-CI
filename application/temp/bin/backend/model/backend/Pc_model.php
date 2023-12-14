<?php
class Pc_model extends CI_Model
{

	function get_pc()
	{
		$hsl = $this->db->query("SELECT id_pc,assets_number,assets_name,DATE_FORMAT(pc_date,'%d %M %Y') pc_date,pc_model,brand,user_di,serial_number,mac_address,hard_disk,processor,operating_system,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_pc JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_pc($assnumb, $assnam, $dt, $md, $brn, $ussid, $sn, $ma, $hd, $prc, $os, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_pc(assets_number,assets_name,pc_date,pc_model,brand,user_di,serial_number,mac_address,hard_disk,processor,operating_system,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$dt','$md','$brn','$ussid','$sn', '$ma', '$hd', '$prc', '$os', '$rm','$jenis')");
		return $hsl;
	}

	function update_pc($idprd, $assnumb, $assnam, $dt, $md, $brn, $ussid,  $sn, $ma, $hd, $prc, $os, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_pc SET assets_number='$assnumb',assets_name='$assnam',pc_date='$dt',pc_model='$md',brand='$brn',user_di='$ussid',serial_number='$sn',mac_address='$ma',hard_disk='$hd',processor='$prc',operating_system='$os',room='$rm',jenis_aktivasi='$jenis' WHERE id_pc='$idprd'");
		return $hsl;
	}

	function delete_pc($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_pc WHERE id_pc='$idprd'");
		return $hsl;
	}
}
