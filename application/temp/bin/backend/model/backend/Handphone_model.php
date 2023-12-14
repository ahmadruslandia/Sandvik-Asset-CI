<?php
class Handphone_model extends CI_Model
{

	function get_handphone()
	{
		$hsl = $this->db->query("SELECT id_handphone,street_address,user_name,model,departement,user_id,email,jenis_aktivasi AS id_jenis,nama_jenis FROM tbl_handphone JOIN tbl_jenis ON jenis_aktivasi=id_jenis");
		return $hsl;
	}

	function insert_handphone($stradr, $ussnm, $md, $dpt, $ussid, $email, $jenis)
	{
		$hsl = $this->db->query("INSERT INTO tbl_handphone(street_address,user_name,model,departement,user_id,email,jenis_aktivasi) VALUES ('$stradr','$ussnm','$md','$dpt','$ussid','$email','$jenis')");
		return $hsl;
	}

	function update_handphone($idprd, $stradr, $ussnm, $md, $dpt, $ussid, $email, $jenis)
	{
		$hsl = $this->db->query("UPDATE tbl_handphone SET street_address='$stradr',user_name='$ussnm',model='$md',departement='$dpt',user_id='$ussid',email='$email',jenis_aktivasi='$jenis' WHERE id_handphone='$idprd'");
		return $hsl;
	}

	function delete_handphone($idprd)
	{
		$hsl = $this->db->query("DELETE FROM tbl_handphone WHERE id_handphone='$idprd'");
		return $hsl;
	}
}
