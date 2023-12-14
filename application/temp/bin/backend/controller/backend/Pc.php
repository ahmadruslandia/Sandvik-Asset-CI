<?php
class Pc extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Pc_Model', 'pc_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->pc_model->get_pc();

		$this->load->view('backend/v_pc', $x);
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
		$hd = htmlspecialchars($this->input->post('hd', TRUE), ENT_QUOTES);
		$prc = htmlspecialchars($this->input->post('prc', TRUE), ENT_QUOTES);
		$os = htmlspecialchars($this->input->post('os', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->pc_model->insert_pc($assnumb, $assnam, $dt, $md, $brn, $ussid, $sn, $ma, $hd, $prc, $os, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/pc');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->pc_model->get_pc_id($idprd);
	}

	function update()
	{
		$idprd = $this->input->post('idprd', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$ussid = htmlspecialchars($this->input->post('ussid', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$ma = htmlspecialchars($this->input->post('ma', TRUE), ENT_QUOTES);
		$hd = htmlspecialchars($this->input->post('hd', TRUE), ENT_QUOTES);
		$prc = htmlspecialchars($this->input->post('prc', TRUE), ENT_QUOTES);
		$os = htmlspecialchars($this->input->post('os', TRUE), ENT_QUOTES);
		$rm = htmlspecialchars($this->input->post('rm', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->pc_model->update_pc($idprd, $assnumb, $assnam,  $dt, $md, $brn, $ussid, $sn, $ma, $hd, $prc, $os, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/pc');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->pc_model->delete_pc($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/pc');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['pcpdf'] = $this->pc_model->get_pc('tbl_pc')->result();
		$this->load->view('backend/pc_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("pc_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{
		$x['pcexcel'] = $this->pc_model->get_pc('tbl_pc')->result();
		$this->load->view('backend/pc_report_excel', $x);
	}
}
