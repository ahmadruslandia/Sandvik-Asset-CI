<?php
class Jenis extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['data'] = $this->jenis_model->get_all_jenis();
		$this->load->view('backend/v_jenis', $x);
		$this->load->helper('text');
	}

	function save()
	{
		$jenis = strip_tags(htmlspecialchars($this->input->post('jenis', TRUE), ENT_QUOTES));
		$this->jenis_model->add_new_row($jenis);
		$this->session->set_flashdata('msg', 'success');
		redirect('backend/jenis');
	}

	function edit()
	{
		$id		 = $this->input->post('kode', TRUE);
		$jenis 	 = strip_tags(htmlspecialchars($this->input->post('jenis2', TRUE), ENT_QUOTES));
		$this->jenis_model->edit_row($id, $jenis);
		$this->session->set_flashdata('msg', 'info');
		redirect('backend/jenis');
	}

	function delete()
	{
		$id = $this->input->post('id', TRUE);
		$this->jenis_model->delete_row($id);
		$this->session->set_flashdata('msg', 'success-delete');
		redirect('backend/jenis');
	}
}
