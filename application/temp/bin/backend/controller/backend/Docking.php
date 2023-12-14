<?php
class Docking extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Docking_Model', 'docking_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->docking_model->get_docking();

		$this->load->view('backend/v_docking', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$ussdi = htmlspecialchars($this->input->post('ussdi', TRUE), ENT_QUOTES);
		$lc = htmlspecialchars($this->input->post('lc', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->docking_model->insert_docking($assnumb, $assnam, $md, $brn, $sn, $ussdi, $lc, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/docking');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->docking_model->get_docking_id($idprd);
	}

	function update()
	{
		$idprd = $this->input->post('idprd', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$ussdi = htmlspecialchars($this->input->post('ussdi', TRUE), ENT_QUOTES);
		$lc = htmlspecialchars($this->input->post('lc', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->docking_model->update_docking($idprd, $assnumb, $assnam, $md, $brn, $sn, $ussdi, $lc, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/docking');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->docking_model->delete_docking($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/docking');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['dockingpdf'] = $this->docking_model->get_docking('tbl_docking')->result();
		$this->load->view('backend/docking_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("docking_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{
		$x['dockingexcel'] = $this->docking_model->get_docking('tbl_docking')->result();
		$this->load->view('backend/docking_report_excel', $x);
	}
}
