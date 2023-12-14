<?php
class Scanner extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Scanner_Model', 'scanner_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->scanner_model->get_scanner();

		$this->load->view('backend/v_scanner', $x);
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

		$this->scanner_model->insert_scanner($assnumb, $assnam, $md, $brn, $sn, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/scanner');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->scanner_model->get_scanner_id($idprd);
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

		$this->scanner_model->update_scanner($idprd, $assnumb, $assnam, $md, $brn, $sn, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/scanner');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->scanner_model->delete_scanner($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/scanner');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['scannerpdf'] = $this->scanner_model->get_scanner('tbl_scanner')->result();
		$this->load->view('backend/scanner_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("scanner_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{
		$x['scannerexcel'] = $this->scanner_model->get_scanner('tbl_scanner')->result();
		$this->load->view('backend/scanner_report_excel', $x);
	}
}
