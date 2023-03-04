<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	public function __construct() {        
    	parent::__construct();
	}

  public function _remap($method, $params = array())
    {
        if (!method_exists($this, $method)) {
            redirect(base_url());
        } else {
            call_user_func_array(array($this, $method), $params);
        }
    }

}
