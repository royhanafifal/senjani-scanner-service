<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Login extends CI_Controller
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
        $email = $this->post('email');
        $password = $this->post('password');

        $personel = $this->person->get_personel_by_email($email);

        if ($personel) {
            if (password_verify($password, $personel[0]['password'])) {
                if (!$personel[0]['date_deleted']) {
                    $this->response([
                        'status' => true,
                        'message' => 'Login berhasil',
                        'data' => $personel
                    ], 200);
                } else {
                    $this->response([
                        'status' => false,
                        'message' => 'Akun sudah tidak aktif'
                    ], 400); //BAD_REQUEST
                }
            } else {
                $this->response([
                    'status' => false,
                    'message' => 'Password Salah'
                ], 400); //BAD_REQUEST
            }
        } else {
            $this->response([
                'status' => false,
                'message' => 'Akun tidak terdaftar'
            ], 404); //HTTP_NOT_FOUND
        }
    }
}
