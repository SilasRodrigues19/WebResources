<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Resource extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Resource_model', 'mres');
	}

	public function index()
	{
		$this->resource();
	}

	public function resource()
	{
		$data['title'] = 'Recursos';

		$res = $this->mres->showCategory();
		$data['showCategory'] = $res;

		$res = $this->mres->showResource();
		$data['showResource'] = $res;

		$res = $this->mres->teste();
		$data['teste'] = $res;


		$this->load->view('templates/header', $data);
		$this->load->view('pages/resource', $data);
		$this->load->view('templates/footer', $data);
	}

	public function add_resource()
	{
		$data['title'] = 'Adicionar Recursos';

		$res = $this->mres->showCategoryOption();
		$data['showCategoryOption'] = $res;

		$res = $this->mres->resourceMaxID();
		$data['max_id'] = $res[0];

		$act = $this->input->post('act');

		$dados['resource_id'] = $this->input->post('resource_id');
		/* 
			$dados['resource_name'] = $this->input->post('resource_name');
			$dados['resource_description'] = $this->input->post('resource_description');
			$dados['resource_link'] = $this->input->post('resource_link');
			$dados['resource_category'] = $this->input->post('resource_category');

			#var_dump($dados); exit(); 

			$res = $this->mres->insertResource($dados);
 		*/

		$this->load->view('templates/header', $data);
		$this->load->view('pages/add_resource', $data);
		$this->load->view('templates/footer', $data);
	}

}
