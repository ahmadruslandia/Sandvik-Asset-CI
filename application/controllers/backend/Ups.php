<?php
class Ups extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Ups_Model', 'ups_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->ups_model->get_ups();

		$this->load->view('backend/v_ups', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$ntwid = htmlspecialchars($this->input->post('ntwid', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$tp = htmlspecialchars($this->input->post('tp', TRUE), ENT_QUOTES);
		$wr = htmlspecialchars($this->input->post('wr', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->ups_model->insert_ups($assnumb, $ntwid, $dt, $md, $brn, $sn,  $tp, $wr, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/ups');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->ups_model->get_ups_id($idprd);
	}

	function update()
	{
		$idprd = $this->input->post('idprd', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$ntwid = htmlspecialchars($this->input->post('ntwid', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$tp = htmlspecialchars($this->input->post('tp', TRUE), ENT_QUOTES);
		$wr = htmlspecialchars($this->input->post('wr', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->ups_model->update_ups($idprd, $assnumb, $ntwid,  $dt, $md, $brn, $sn,  $tp, $wr, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/ups');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->ups_model->delete_ups($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/ups');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['upspdf'] = $this->ups_model->get_ups('tbl_ups')->result();
		$this->load->view('backend/ups_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("ups_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{

		$x['upsexcel'] = $this->ups_model->get_ups('tbl_ups')->result();
		$this->load->view('backend/ups_report_excel', $x);
	}
}
