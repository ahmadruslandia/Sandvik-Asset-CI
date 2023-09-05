<?php
class Monitor extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Monitor_Model', 'monitor_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->monitor_model->get_monitor();

		$this->load->view('backend/v_monitor', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$monmod = htmlspecialchars($this->input->post('monmod', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$ussid = htmlspecialchars($this->input->post('ussid', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$ma = htmlspecialchars($this->input->post('ma', TRUE), ENT_QUOTES);
		$os = htmlspecialchars($this->input->post('os', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->monitor_model->insert_monitor($assnumb, $assnam, $dt, $monmod, $brn, $ussid, $sn, $ma, $os, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/monitor');
	}

	function get_update()
	{
		$idmon = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->monitor_model->get_monitor_id($idmon);
	}

	function update()
	{
		$idmon = $this->input->post('idmon', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$monmod = htmlspecialchars($this->input->post('monmod', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$ussid = htmlspecialchars($this->input->post('ussid', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$ma = htmlspecialchars($this->input->post('ma', TRUE), ENT_QUOTES);
		$os = htmlspecialchars($this->input->post('os', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->monitor_model->update_monitor($idmon, $assnumb, $assnam,  $dt, $monmod, $brn, $ussid, $sn, $ma, $os, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/monitor');
	}

	function delete()
	{
		$idmon = $this->input->post('kode', TRUE);
		$this->monitor_model->delete_monitor($idmon);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/monitor');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['monitorpdf'] = $this->monitor_model->get_monitor('tbl_monitor')->result();
		$this->load->view('backend/monitor_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("monitor_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{
		$x['monitorexcel'] = $this->monitor_model->get_monitor('tbl_monitor')->result();
		$this->load->view('backend/monitor_report_excel', $x);
	}
}
