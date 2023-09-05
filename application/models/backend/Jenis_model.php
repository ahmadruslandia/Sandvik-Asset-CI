<?php
class Jenis_model extends CI_Model
{

	function get_all_jenis()
	{
		$result = $this->db->get('tbl_jenis');
		return $result;
	}

	function add_new_row($jenis)
	{
		$data = array(
			'nama_jenis' => $jenis
		);
		$this->db->insert('tbl_jenis', $data);
	}

	function edit_row($id, $jenis)
	{
		$data = array(
			'nama_jenis' => $jenis
		);
		$this->db->where('id_jenis', $id);
		$this->db->update('tbl_jenis', $data);
	}

	function delete_row($id)
	{
		$this->db->where('id_jenis', $id);
		$this->db->delete('tbl_jenis');
	}
}
