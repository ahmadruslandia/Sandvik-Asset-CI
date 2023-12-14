<?php
class Headset extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Headset_Model', 'headset_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->headset_model->get_headset();

		$this->load->view('backend/v_headset', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->headset_model->insert_headset($assnumb, $assnam, $md, $brn, $sn, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/headset');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->headset_model->get_headset_id($idprd);
	}

	function update()
	{
		$idprd = $this->input->post('idprd', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->headset_model->update_headset($idprd, $assnumb, $assnam, $md, $brn, $sn, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/headset');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->headset_model->delete_headset($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/headset');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['headsetpdf'] = $this->headset_model->get_headset('tbl_headset')->result();
		$this->load->view('backend/headset_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("headset_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{

		$x['headsetexcel'] = $this->headset_model->get_headset('tbl_headset')->result();
		$this->load->view('backend/headset_report_excel', $x);
	}
}
