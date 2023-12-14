<?php
class LcdProjector extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/LcdProjector_Model', 'lcdprojector_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->lcdprojector_model->get_lcdprojector();

		$this->load->view('backend/v_lcdprojector', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$cp = htmlspecialchars($this->input->post('cp', TRUE), ENT_QUOTES);
		$lp = htmlspecialchars($this->input->post('lp', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->lcdprojector_model->insert_lcdprojector($assnumb, $assnam, $cp, $lp, $sn, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/lcdprojector');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->lcdprojector_model->get_lcdprojector_id($idprd);
	}

	function update()
	{
		$idprd = $this->input->post('idprd', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$cp = htmlspecialchars($this->input->post('cp', TRUE), ENT_QUOTES);
		$lp = htmlspecialchars($this->input->post('lp', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->lcdprojector_model->update_lcdprojector($idprd, $assnumb, $assnam,  $cp, $lp,  $sn,  $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/lcdprojector');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->lcdprojector_model->delete_lcdprojector($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/lcdprojector');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['lcdprojectorpdf'] = $this->lcdprojector_model->get_lcdprojector('tbl_lcdprojector')->result();
		$this->load->view('backend/lcdprojector_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("lcdprojector_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{

		$x['lcdprojectorexcel'] = $this->lcdprojector_model->get_lcdprojector('tbl_lcdprojector')->result();
		$this->load->view('backend/lcdprojector_report_excel', $x);
	}
}
