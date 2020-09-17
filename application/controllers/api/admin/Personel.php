<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Personel extends CI_Controller
{
    use REST_Controller {
        REST_Controller::__construct as private __resTraitConstruct;
    }

    function __construct()
    {
        parent::__construct();
        $this->__resTraitConstruct();
        $this->load->model('Personel_model', 'personel');

        date_default_timezone_set("Asia/Jakarta");
    }

    public function index_get()
    {
        $personel = $this->personel->get_personel();

        if ($personel) {
            $this->response([
                'status' => true,
                'message' => 'Data personel berhasil ditemukan',
                'data' => $personel
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data personel tidak ditemukan'
            ], 200);
        }
    }

    public function update_personel_post()
    {
        $id = $this->post('id');
        $jabatan = $this->post('nama_jabatan');

        $jabatan = ($jabatan == 'Kurir') ? 1 : 2;

        $data = [
            'nama_lengkap' => $this->post('nama_lengkap'),
            'id_jabatan' => $jabatan,
            'email' => $this->post('email'),
            'date_updated' => date('Y-m-d H:i:s')
        ];

        $updated_count = $this->personel->update_personel($id, $data);

        if ($updated_count > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data personel berhasil diupdate',
                'data' => $updated_count
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data personel gagal diupdate'
            ], 200);
        }
    }

    public function delete_personel_post()
    {
        $id = $this->post('id');

        $data = ['date_deleted' => date('Y-m-d H:i:s')];
        $deleted_count = $this->personel->update_personel($id, $data);

        if ($deleted_count > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data personel berhasil dihapus',
                'data' => $deleted_count
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data personel gagal dihapus'
            ], 200);
        }
    }

    public function index_post()
    {
        $data = [
            'nama_lengkap' => $this->post('nama_lengkap'),
            'id_jabatan' => $this->post('id_jabatan'),
            'email' => $this->post('email'),
            'password' => password_hash($this->post('password'), PASSWORD_DEFAULT, ['cost' => 10])
        ];

        $personel = $this->personel->get_personel_by_email($data['email']);

        $added_data = 0;
        if ($personel['email'] != null) {
            //email terdaftar
            $this->response([
                'status' => false,
                'message' => 'Email ' . $personel['email'] . ' sudah terdaftar'
            ], 200);
        } else {
            //tambah
            $added_data = $this->personel->add_personel($data);
        }

        if ($added_data > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data personel berhasil ditambahkan'
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Gagal menambahkan data baru'
            ], 200);
        }
    }
}
