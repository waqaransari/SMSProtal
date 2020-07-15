<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class sections extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('file');
        $this->lang->load('message', 'english');
    }

    function index() {
        $this->session->set_userdata('top_menu', 'Academics');
        $this->session->set_userdata('sub_menu', 'sections/index');
        $data['title'] = 'Section List';

        $section_result = $this->section_model->get();
        $data['sectionlist'] = $section_result;
        $this->form_validation->set_rules('section', 'Section', 'trim|required|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/header', $data);
            $this->load->view('section/sectionList', $data);
            $this->load->view('layout/footer', $data);
        } else {
            $data = array(
                'section' => $this->input->post('section'),
            );
            $this->section_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Semester added successfully</div>');
            redirect('sections/index');
        }
    }

    function view($id) {
        $data['title'] = 'Section List';
        $section = $this->section_model->get($id);
        $data['section'] = $section;
        $this->load->view('layout/header', $data);
        $this->load->view('section/sectionShow', $data);
        $this->load->view('layout/footer', $data);
    }

    function delete($id) {
        $data['title'] = 'Section List';
        $this->section_model->remove($id);
        redirect('sections/index');
    }

    function getByClass() {
        $class_id = $this->input->get('class_id');
        $data = $this->section_model->getClassBySection($class_id);
        echo json_encode($data);
    }

    function edit($id) {
        $data['title'] = 'Section List';
        $section_result = $this->section_model->get();
        $data['sectionlist'] = $section_result;
        $data['title'] = 'Edit Section';
        $data['id'] = $id;
        $section = $this->section_model->get($id);
        $data['section'] = $section;
        $this->form_validation->set_rules('section', 'Section', 'trim|required|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/header', $data);
            $this->load->view('section/sectionEdit', $data);
            $this->load->view('layout/footer', $data);
        } else {
            $data = array(
                'id' => $id,
                'section' => $this->input->post('section'),
            );
            $this->section_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Semester updated successfully</div>');
            redirect('sections/index');
        }
    }

}

?>