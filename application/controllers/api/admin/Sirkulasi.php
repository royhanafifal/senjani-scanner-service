<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Sirkulasi extends CI_Controller
{
    use REST_Controller {
        REST_Controller::__construct as private __resTraitConstruct;
    }

    function __construct()
    {
        parent::__construct();
        $this->__resTraitConstruct();
        $this->load->model('Sirkulasi_model', 'sirkulasi');

        date_default_timezone_set("Asia/Jakarta");
    }

    public function index_get()
    {
        $sirkulasi = $this->sirkulasi->get_sirkulasi();

        if ($sirkulasi) {
            $this->response([
                'status' => true,
                'message' => 'Data sirkulasi berhasil ditemukan',
                'data' => $sirkulasi
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data sirkulasi tidak ditemukan'
            ], 404); //HTTP_NOT_FOUND
        }
    }

    public function index_put()
    {
        $id = $this->put('id');
        $data = [
            'id_pelanggan' => $this->put('id_pelanggan'),
            'id_mealbox' => $this->put('id_mealbox'),
            'id_personel' => $this->put('id_personel'),
            'status' => $this->put('status'),
            'date_updated' => date('Y-m-d H:i:s')
        ];

        $updated_count = $this->sirkulasi->update_sirkulasi($id, $data);

        if ($updated_count > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data sirkulasi berhasil diupdate',
                'data' => $updated_count
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data sirkulasi gagal diupdate'
            ], 400); //HTTP_BAD_REQUEST
        }
    }

    public function index_delete()
    {
        $id = $this->delete('id');

        $data = ['date_deleted' => date('Y-m-d H:i:s')];
        $deleted_count = $this->sirkulasi->update_sirkulasi($id, $data);

        if ($deleted_count > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data sirkulasi berhasil dihapus',
                'data' => $deleted_count
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data sirkulasi gagal dihapus'
            ], 400); //HTTP_BAD_REQUEST
        }
    }
}
