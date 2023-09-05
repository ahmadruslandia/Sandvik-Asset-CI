<?php

class Setting_model extends CI_Model
{

	function get_home_data()
	{
		$query = $this->db->get('tbl_home', 1);
		return $query;
	}

	function update_information($home_id, $caption1, $caption2, $bg_heading)
	{
		$this->db->set('home_caption_1', $caption1);
		$this->db->set('home_caption_2', $caption2);
		$this->db->set('home_bg_heading', $bg_heading);
		$this->db->where('home_id', $home_id);
		$this->db->update('tbl_home');
	}

	function update_information_heading($home_id, $caption1, $caption2, $bg_heading)
	{
		$this->db->set('home_caption_1', $caption1);
		$this->db->set('home_caption_2', $caption2);
		$this->db->set('home_bg_heading', $bg_heading);
		$this->db->where('home_id', $home_id);
		$this->db->update('tbl_home');
	}


	function update_information_noimg($home_id, $caption1, $caption2)
	{
		$this->db->set('home_caption_1', $caption1);
		$this->db->set('home_caption_2', $caption2);
		$this->db->where('home_id', $home_id);
		$this->db->update('tbl_home');
	}
}
