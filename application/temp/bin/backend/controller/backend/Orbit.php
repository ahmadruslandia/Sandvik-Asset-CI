<?php
class Orbit extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Orbit_Model', 'orbit_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->orbit_model->get_orbit();

		$this->load->view('backend/v_orbit', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$po = htmlspecialchars($this->input->post('po', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$im = htmlspecialchars($this->input->post('im', TRUE), ENT_QUOTES);
		$lc = htmlspecialchars($this->input->post('lc', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->orbit_model->insert_orbit($assnumb, $assnam, $md, $brn, $po, $sn, $im, $lc, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/orbit');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->orbit_model->get_orbit_id($idprd);
	}

	function update()
	{
		$idprd = $this->input->post('idprd', TRUE);
		$assnumb = htmlspecialchars($this->input->post('assnumb', TRUE), ENT_QUOTES);
		$assnam = htmlspecialchars($this->input->post('assnam', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$brn = htmlspecialchars($this->input->post('brn', TRUE), ENT_QUOTES);
		$po = htmlspecialchars($this->input->post('po', TRUE), ENT_QUOTES);
		$sn = htmlspecialchars($this->input->post('sn', TRUE), ENT_QUOTES);
		$im = htmlspecialchars($this->input->post('im', TRUE), ENT_QUOTES);
		$lc = htmlspecialchars($this->input->post('lc', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->orbit_model->update_orbit($idprd, $assnumb, $assnam, $md, $brn, $po, $sn, $im, $lc, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/orbit');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->orbit_model->delete_orbit($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/orbit');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['orbitpdf'] = $this->orbit_model->get_orbit('tbl_orbit')->result();
		$this->load->view('backend/orbit_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("orbit_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{

		$x['orbitexcel'] = $this->orbit_model->get_orbit('tbl_orbit')->result();
		$this->load->view('backend/orbit_report_excel', $x);
	}
}
