<?php

class About_model extends CI_Model
{

	function get_about_data()
	{
		$query = $this->db->get('tbl_about', 1);
		return $query;
	}

	function update_information_about($about_id, $about_address, $about_email, $about_telephone)
	{
		$this->db->set('about_address', $about_address);
		$this->db->set('about_email', $about_email);
		$this->db->set('about_telephone', $about_telephone);
		$this->db->where('about_id', $about_id);
		$this->db->update('tbl_about');
	}
}
