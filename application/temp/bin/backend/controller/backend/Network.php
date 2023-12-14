<?php
class Network extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Network_Model', 'network_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->network_model->get_network();

		$this->load->view('backend/v_network', $x);
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

		$this->network_model->insert_network($assnumb, $ntwid, $dt, $md, $brn, $sn, $ma, $tp, $wr, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/network');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->network_model->get_network_id($idprd);
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

		$this->network_model->update_network($idprd, $assnumb, $ntwid,  $dt, $md, $brn, $sn, $ma, $tp, $wr, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/network');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->network_model->delete_network($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/network');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['networkpdf'] = $this->network_model->get_network('tbl_network')->result();
		$this->load->view('backend/network_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("network_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{

		$x['networkexcel'] = $this->network_model->get_network('tbl_network')->result();
		$this->load->view('backend/network_report_excel', $x);
	}
}
