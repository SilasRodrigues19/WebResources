<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Resource extends MY_Controller
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

		$search = $this->input->get('search');

		$data['searchTerm'] = false;

		if (isset($search) && strlen(trim($search)) > 0):
				$searchedWords = explode(' ', $search);
				$cleanedWords = array_map('trim', $searchedWords);
				$cleanedSearchTerm = implode(' ', $cleanedWords);
				$data['searchTerm'] = $cleanedSearchTerm;
    endif;


		$res = $this->mres->showList($search);

		$data['showList'] = $res;
		

		$this->load->view('templates/header', $data);
		$this->load->view('pages/resource', $data);
		$this->load->view('templates/footer', $data);
	}

	public function new()
	{
		$data['title'] = 'Adicionar Recursos';

		$res = $this->mres->getLastResource();
		$data['lastResource'] = $res;

		$res = $this->mres->showCategoryOption();
		$data['showCategoryOption'] = $res;

		$res = $this->mres->resourceMaxID();
		$data['max_id'] = $res[0];

		$act = $this->input->post('act');

		$dados['resource_id'] = $this->input->post('resource_id');
		
		$dados['resource_name'] = $this->input->post('resource_name');
		$dados['resource_description'] = $this->input->post('resource_description');
		$dados['resource_link'] = $this->input->post('resource_link');
		$dados['resource_category'] = $this->input->post('resource_category');

		$data['fields'] = $dados;

		#var_dump($data['fields']['resource_name']); exit(); 

		$btnSubmit = $this->input->post('btnSubmit');

		if(isset($btnSubmit)) {
			$res = $this->mres->insertResource($dados);

			if($res) {
				notify('', 'Recurso adicionado', 'success', 'w-50');
				redirect('/resource');
			}
		}

			
		$this->load->view('templates/header', $data);
		$this->load->view('pages/new', $data);
		$this->load->view('templates/footer', $data);
	}

}
