<?php
class Ht extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Ht_Model', 'ht_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->ht_model->get_ht();

		$this->load->view('backend/v_ht', $x);
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
		$ma = htmlspecialchars($this->input->post('ma', TRUE), ENT_QUOTES);
		$tp = htmlspecialchars($this->input->post('tp', TRUE), ENT_QUOTES);
		$wr = htmlspecialchars($this->input->post('wr', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->ht_model->insert_ht($assnumb, $ntwid, $dt, $md, $brn, $sn, $ma, $tp, $wr, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/ht');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->ht_model->get_ht_id($idprd);
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
		$ma = htmlspecialchars($this->input->post('ma', TRUE), ENT_QUOTES);
		$tp = htmlspecialchars($this->input->post('tp', TRUE), ENT_QUOTES);
		$wr = htmlspecialchars($this->input->post('wr', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->ht_model->update_ht($idprd, $assnumb, $ntwid,  $dt, $md, $brn, $sn, $ma, $tp, $wr, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/ht');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->ht_model->delete_ht($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/ht');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['htpdf'] = $this->ht_model->get_ht('tbl_ht')->result();
		$this->load->view('backend/ht_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("ht_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{

		$x['htexcel'] = $this->ht_model->get_ht('tbl_ht')->result();
		$this->load->view('backend/ht_report_excel', $x);
	}
}
