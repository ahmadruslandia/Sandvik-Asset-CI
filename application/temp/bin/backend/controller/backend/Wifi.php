<?php
class Wifi extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Wifi_Model', 'wifi_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->wifi_model->get_wifi();

		$this->load->view('backend/v_wifi', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$ma = htmlspecialchars($this->input->post('ma', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->wifi_model->insert_wifi($assnumb, $assnam, $dt, $md, $brn, $sn, $ma, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/wifi');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->wifi_model->get_wifi_id($idprd);
	}

	function update()
	{
		$idprd = $this->input->post('idprd', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$ma = htmlspecialchars($this->input->post('ma', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->wifi_model->update_wifi($idprd, $assnumb, $assnam,  $dt, $md, $brn, $sn, $ma, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/wifi');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->wifi_model->delete_wifi($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/wifi');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['wifipdf'] = $this->wifi_model->get_wifi('tbl_wifi')->result();
		$this->load->view('backend/wifi_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("wifi_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{

		$x['wifiexcel'] = $this->wifi_model->get_wifi('tbl_wifi')->result();
		$this->load->view('backend/wifi_report_excel', $x);
	}
}
