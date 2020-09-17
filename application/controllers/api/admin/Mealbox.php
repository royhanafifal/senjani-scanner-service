<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Mealbox extends CI_Controller
{
    use REST_Controller {
        REST_Controller::__construct as private __resTraitConstruct;
    }

    function __construct()
    {
        parent::__construct();
        $this->__resTraitConstruct();
        $this->load->model('Mealbox_model', 'mealbox');

        date_default_timezone_set("Asia/Jakarta");
    }

    public function index_get()
    {
        $mealbox = $this->mealbox->get_mealbox();

        if ($mealbox) {
            $this->response([
                'status' => true,
                'message' => 'Data mealbox berhasil ditemukan',
                'data' => $mealbox
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data mealbox tidak ditemukan'
            ], 404); //HTTP_NOT_FOUND
        }
    }

    public function update_mealbox_post()
    {
        $id = $this->post('id');
        $data = [
            'jenis' => $this->post('jenis'),
            'keterangan' => $this->post('keterangan'),
            'date_updated' => date('Y-m-d H:i:s')
        ];

        $updated_count = $this->mealbox->update_mealbox($id, $data);

        if ($updated_count > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data mealbox berhasil diupdate',
                'data' => $updated_count
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data mealbox gagal diupdate'
            ], 400); //HTTP_BAD_REQUEST
        }
    }

    public function index_delete()
    {
        $id = $this->delete('id');

        $data = ['date_deleted' => date('Y-m-d H:i:s')];
        $deleted_count = $this->mealbox->update_mealbox($id, $data);

        if ($deleted_count > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data mealbox berhasil dihapus',
                'data' => $deleted_count
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data mealbox gagal dihapus'
            ], 400); //HTTP_BAD_REQUEST
        }
    }

    public function index_post()
    {
        $data = [
            'jenis' => $this->post('jenis'),
            'keterangan' => $this->post('keterangan')
        ];

        $added_data = $this->mealbox->add_mealbox($data);

        if ($added_data > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data mealbox berhasil ditambahkan'
            ], 201); //HTTP_CREATED
        } else {
            $this->response([
                'status' => false,
                'message' => 'Gagal menambahkan data baru'
            ], 400); //HTTP_NO_CONTENT
        }
    }
}
