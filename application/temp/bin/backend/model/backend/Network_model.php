<?php
class Network_model extends CI_Model
{

	function get_network()
	{
		$hsl = $this->db->query("SELECT id_network,assets_number,network_id,DATE_FORMAT(date_manufacture,'%d %M %Y') date_manufacture,model,brand,serial_number,mac_address,type_network,warranty,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_network JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_network($assnumb, $ntwid, $dt, $md, $brn, $sn, $ma, $tp, $wr, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_network(assets_number,network_id,date_manufacture,model,brand,serial_number,mac_address,type_network,warranty,jenis_aktivasi) VALUES ('$assnumb','$ntwid','$dt','$md','$brn','$sn', '$ma', '$tp', '$wr', '$jenis')");
		return $hsl;
	}

	function update_network($idprd, $assnumb, $ntwid, $dt, $md, $brn,  $sn, $ma, $tp, $wr, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_network SET assets_number='$assnumb',network_id='$ntwid',date_manufacture='$dt',model='$md',brand='$brn',serial_number='$sn',mac_address='$ma',type_network='$tp',warranty='$wr',jenis_aktivasi='$jenis' WHERE id_network='$idprd'");
		return $hsl;
	}

	function delete_network($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_network WHERE id_network='$idprd'");
		return $hsl;
	}
}
