<?php

class About_setting extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		}
		$this->load->model('backend/Setting_model', 'setting_model');
		$this->load->model('About_model', 'about_model');
		$this->load->helper('text');
	}

	function index()
	{
		$result = $this->about_model->get_about_data()->row_array();
		$data['about_id'] = $result['about_id'];
		$data['about_address'] = $result['about_address'];
		$data['about_email'] = $result['about_email'];
		$data['about_telephone'] = $result['about_telephone'];
		$this->load->view('backend/v_about_setting', $data);
	}

	function update()
	{
		$about_id = htmlspecialchars($this->input->post('about_id', TRUE), ENT_QUOTES);
		$about_address = htmlspecialchars($this->input->post('about_address', TRUE), ENT_QUOTES);
		$about_email = htmlspecialchars($this->input->post('about_email', TRUE), ENT_QUOTES);
		$about_telephone = htmlspecialchars($this->input->post('about_telephone', TRUE), ENT_QUOTES);

		$this->about_model->update_information_about($about_id, $about_address, $about_email, $about_telephone);
		$this->session->set_flashdata('msg', 'success');
		redirect('backend/about_setting');
	}
}
