<?php
class Laptop extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Laptop_Model', 'laptop_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->laptop_model->get_laptop();

		$this->load->view('backend/v_laptop', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$lapmod = htmlspecialchars($this->input->post('lapmod', TRUE), ENT_QUOTES);
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

		$this->laptop_model->insert_laptop($assnumb, $assnam, $dt, $lapmod, $brn, $ussid, $sn, $ma, $hd, $prc, $os, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/laptop');
	}

	function get_update()
	{
		$idlap = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->laptop_model->get_laptop_id($idlap);
	}

	function update()
	{
		$idlap = $this->input->post('idlap', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$dt = htmlspecialchars($this->input->post('dt', TRUE), ENT_QUOTES);
		$lapmod = htmlspecialchars($this->input->post('lapmod', TRUE), ENT_QUOTES);
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

		$this->laptop_model->update_laptop($idlap, $assnumb, $assnam,  $dt, $lapmod, $brn, $ussid, $sn, $ma, $hd, $prc, $os, $rm, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/laptop');
	}

	function delete()
	{
		$idlap = $this->input->post('kode', TRUE);
		$this->laptop_model->delete_laptop($idlap);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/laptop');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['laptoppdf'] = $this->laptop_model->get_laptop('tbl_laptop')->result();
		$this->load->view('backend/laptop_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("laptop_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{
		$x['laptopexcel'] = $this->laptop_model->get_laptop('tbl_laptop')->result();
		$this->load->view('backend/laptop_report_excel', $x);
	}
}
