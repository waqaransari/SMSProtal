<?php

class Admin_Controller extends CI_Controller 
{
	
	function __construct()
	{
		parent::__construct();

		$this->load->library('auth');
	
		$this->auth->is_logged_in(uri_string());
		
	}

	function getBatchClass(){
		$parts = $this->db->get_where("batch_class")->result_array();
		if($parts){
			return $parts;
		}
	}

}