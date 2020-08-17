<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Pelanggan extends CI_Controller
{
    use REST_Controller {
        REST_Controller::__construct as private __resTraitConstruct;
    }

    function __construct()
    {
        parent::__construct();
        $this->__resTraitConstruct();
        $this->load->model('Pelanggan_model', 'pelanggan');

        date_default_timezone_set("Asia/Jakarta");
    }

    public function index_get()
    {
        $pelanggan = $this->pelanggan->get_pelanggan();

        if ($pelanggan) {
            $this->response([
                'status' => true,
                'message' => 'Data pelanggan berhasil ditemukan',
                'data' => $pelanggan
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data pelanggan tidak ditemukan'
            ], 404); //HTTP_NOT_FOUND
        }
    }

    public function index_put()
    {
        $id = $this->put('id');
        $data = [
            'nama_lengkap' => $this->put('nama_lengkap'),
            'no_hp' => $this->put('no_hp'),
            'date_updated' => date('Y-m-d H:i:s')
        ];

        $updated_count = $this->pelanggan->update_pelanggan($id, $data);

        if ($updated_count > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data pelanggan berhasil diupdate',
                'data' => $updated_count
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data pelanggan gagal diupdate'
            ], 400); //HTTP_BAD_REQUEST
        }
    }

    public function index_delete()
    {
        $id = $this->delete('id');

        $data = ['date_deleted' => date('Y-m-d H:i:s')];
        $deleted_count = $this->pelanggan->update_pelanggan($id, $data);

        if ($deleted_count > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data pelanggan berhasil dihapus',
                'data' => $deleted_count
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data pelanggan gagal dihapus'
            ], 400); //HTTP_BAD_REQUEST
        }
    }

    public function index_post()
    {
        $data = [
            'nama_lengkap' => $this->post('nama_lengkap'),
            'no_hp' => $this->post('no_hp')
        ];

        $added_data = $this->pelanggan->add_pelanggan($data);

        if ($added_data > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data pelanggan berhasil ditambahkan'
            ], 201); //HTTP_CREATED
        } else {
            $this->response([
                'status' => false,
                'message' => 'Gagal menambahkan data baru'
            ], 400); //HTTP_NO_CONTENT
        }
    }
}
