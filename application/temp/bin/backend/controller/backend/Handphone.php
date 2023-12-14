<?php
class Handphone extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/Jenis_model', 'jenis_model');
		$this->load->model('backend/Handphone_Model', 'handphone_model');
		$this->load->helper('text');
	}

	function index()
	{
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->handphone_model->get_handphone();

		$this->load->view('backend/v_handphone', $x);
		$this->load->helper('text');
	}

	function insert()
	{
		$stradr = htmlspecialchars($this->input->post('stradr', TRUE), ENT_QUOTES);
		$ussnm = htmlspecialchars($this->input->post('ussnm', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$dpt = htmlspecialchars($this->input->post('dpt', TRUE), ENT_QUOTES);
		$ussid = htmlspecialchars($this->input->post('ussid', TRUE), ENT_QUOTES);
		$email = htmlspecialchars($this->input->post('email', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->handphone_model->insert_handphone($stradr, $ussnm, $md, $dpt, $ussid, $email, $jenis);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('backend/handphone');
	}

	function get_update()
	{
		$idprd = $this->uri->segment(4);
		$x['jenis'] = $this->jenis_model->get_all_jenis();
		$x['data'] = $this->handphone_model->get_handphone_id($idprd);
	}

	function update()
	{
		$idprd = $this->input->post('idprd', TRUE);
		$stradr = htmlspecialchars($this->input->post('stradr', TRUE), ENT_QUOTES);
		$ussnm = htmlspecialchars($this->input->post('ussnm', TRUE), ENT_QUOTES);
		$md = htmlspecialchars($this->input->post('md', TRUE), ENT_QUOTES);
		$dpt = htmlspecialchars($this->input->post('dpt', TRUE), ENT_QUOTES);
		$ussid = htmlspecialchars($this->input->post('ussid', TRUE), ENT_QUOTES);
		$email = htmlspecialchars($this->input->post('email', TRUE), ENT_QUOTES);
		$jenis = $this->input->post('jenis', TRUE);

		$x['jenis'] = $this->jenis_model->get_all_jenis();

		$this->handphone_model->update_handphone($idprd, $stradr, $ussnm, $md, $dpt, $ussid, $email, $jenis);
		echo $this->session->set_flashdata('msg', 'succes');
		redirect('backend/handphone');
	}

	function delete()
	{
		$idprd = $this->input->post('kode', TRUE);
		$this->handphone_model->delete_handphone($idprd);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/handphone');
	}

	function pdf()
	{

		$this->load->library('dompdf_gen');
		$x['handphonepdf'] = $this->handphone_model->get_handphone('tbl_handphone')->result();
		$this->load->view('backend/handphone_report_pdf', $x);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("handphone_report.pdf", array('Attachement' => 0));
	}

	function excel()
	{

		$x['handphoneexcel'] = $this->handphone_model->get_handphone('tbl_handphone')->result();
		$this->load->view('backend/handphone_report_excel', $x);
	}
}
