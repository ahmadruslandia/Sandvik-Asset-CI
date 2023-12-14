<?php
class Tablet extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Tablet_Model', 'tablet_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->tablet_model->get_tablet();

		$this->load->view('backend/v_tablet', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$ussid = htmlspecialchars($this->input->post('ussid', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$ma = htmlspecialchars($this->input->post('ma', TRUE), ENT_QUOTES);
		$hdd = htmlspecialchars($this->input->post('hdd', TRUE), ENT_QUOTES);
		$os = htmlspecialchars($this->input->post('os', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->tablet_model->insert_tablet($assnumb, $assnam, $dt, $md, $brn, $ussid, $sn, $ma, $hdd, $os, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/tablet');
	}

	function get_update()
	{
		$idtb = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->tablet_model->get_tablet_id($idtb);
	}

	function update()
	{
		$idtb = $this->input->post('idtb', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$ussid = htmlspecialchars($this->input->post('ussid', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$ma = htmlspecialchars($this->input->post('ma', TRUE), ENT_QUOTES);
		$hdd = htmlspecialchars($this->input->post('hdd', TRUE), ENT_QUOTES);
		$os = htmlspecialchars($this->input->post('os', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->tablet_model->update_tablet($idtb, $assnumb, $assnam,  $dt, $md, $brn, $ussid, $sn, $ma, $hdd, $os, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/tablet');
	}

	function delete()
	{
		$idtb = $this->input->post('kode', TRUE);
		$this->tablet_model->delete_tablet($idtb);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/tablet');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['tabletpdf'] = $this->tablet_model->get_tablet('tbl_tablet')->result();
		$this->load->view('backend/tablet_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("tablet_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{

		$x['tabletexcel'] = $this->tablet_model->get_tablet('tbl_tablet')->result();
		$this->load->view('backend/tablet_report_excel', $x);
	}
}
