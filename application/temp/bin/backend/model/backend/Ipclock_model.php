<?php
class Ipclock_model extends CI_Model
{

	function get_ipclock()
	{
		$hsl = $this->db->query("SELECT id_ipclock,assets_number,assets_name,model,brand,po,mac_address,ip,locations,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_ipclock JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_ipclock($assnumb, $assnam, $md, $brn, $po, $sn, $ip, $lc, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_ipclock(assets_number,assets_name,model,brand,po,mac_address,ip,locations,jenis_aktivasi) VALUES ('$assnumb','$assnam','$md','$brn','$po','$sn','$ip','$lc','$jenis')");
		return $hsl;
	}

	function update_ipclock($idprd, $assnumb, $assnam, $md, $brn, $po, $sn, $ip, $lc, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_ipclock SET assets_number='$assnumb',assets_name='$assnam',model='$md',brand='$brn',po='$po',mac_address='$sn',ip='$ip',locations='$lc',jenis_aktivasi='$jenis' WHERE id_ipclock='$idprd'");
		return $hsl;
	}

	function delete_ipclock($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_ipclock WHERE id_ipclock='$idprd'");
		return $hsl;
	}
}
