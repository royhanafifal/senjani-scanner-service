<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Signup extends CI_Controller
{
    use REST_Controller {
        REST_Controller::__construct as private __resTraitConstruct;
    }

    function __construct()
    {
        parent::__construct();
        $this->__resTraitConstruct();
        $this->load->model('Personel_model', 'person');
    }

    public function index_post()
    {
        $data = [
            'nama_lengkap' => $this->post('nama_lengkap'),
            'id_jabatan' => $this->post('id_jabatan'),
            'email' => $this->post('email'),
            'password' => password_hash($this->post('password'), PASSWORD_DEFAULT, ['cost' => 10])
        ];

        if ($this->person->get_personel_by_email($data['email'])) {
            $this->response([
                'status' => false,
                'message' => 'Email telah terdaftar'
            ], 400); //BAD_REQUEST
        } else {
            if ($this->person->add_personel($data) > 0) {
                $this->response([
                    'status' => true,
                    'message' => 'Berhasil mendaftar, selamat datang',
                    'data' => $data
                ], 400); //HTTP_CREATED
            } else {
                $this->response([
                    'status' => false,
                    'message' => 'Maaf, gagal mendaftar'
                ], 204); //HTTP_NO_CONTENT
            }
        }
    }
}
