<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
    // function __construct()
    // {
    //     echo "masuk admin";
    //     parent::__construct();
    //     if (!$this->session->has_user('logged_in')) {
    //         redirect('login');
    //     }
    // }
    public function index()
    {
        echo "masuk index admin";
    }
    public function login()
    {
        $this->load->view('account/login');
    }
}
