<?php
class Tablet_model extends CI_Model
{

	function get_tablet()
	{
		$hsl = $this->db->query("SELECT id_tablet,assets_number,assets_name,DATE_FORMAT(tablet_date,'%d %M %Y') tablet_date,model,brand,user_di,serial_number,mac_address,hard_disk,operating_system,room,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_tablet JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_tablet($assnumb, $assnam, $dt, $md, $brn, $ussid, $sn, $ma, $hdd, $os, $rm, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_tablet(assets_number,assets_name,tablet_date,model,brand,user_di,serial_number,mac_address,hard_disk,operating_system,room,jenis_aktivasi) VALUES ('$assnumb','$assnam','$dt','$md','$brn','$ussid','$sn', '$ma', '$hdd', '$os', '$rm','$jenis')");
		return $hsl;
	}

	function update_tablet($idtb, $assnumb, $assnam, $dt, $md, $brn, $ussid, $sn, $ma, $hdd, $os, $rm, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_tablet SET assets_number='$assnumb',assets_name='$assnam',tablet_date='$dt',model='$md',brand='$brn',user_di='$ussid',serial_number='$sn',mac_address='$ma',hard_disk='$hdd',operating_system='$os',room='$rm',jenis_aktivasi='$jenis' WHERE id_tablet='$idtb'");
		return $hsl;
	}

	function delete_tablet($idtb)
	{
		$hsl = $this->db->query("DELETE FROM tbl_tablet WHERE id_tablet='$idtb'");
		return $hsl;
	}
}
