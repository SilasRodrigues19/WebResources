<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Film extends CI_Controller {

	public function __construct() {        
    	parent::__construct();
			$this->load->model('Actor_model', 'mactor');
	}

	public function index()
	{
			$this->film();			
	}

	public function film()
	{
			$res = $this->mactor->getMoviesAndActors();
			$data['movies'] = $res;

			$data['title'] = 'Films';
			$this->load->view('templates/header', $data);
			$this->load->view('pages/film', $data);
			$this->load->view('templates/footer', $data);
	}


}

