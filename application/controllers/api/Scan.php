<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Scan extends CI_Controller
{
    use REST_Controller {
        REST_Controller::__construct as private __resTraitConstruct;
    }

    function __construct()
    {
        parent::__construct();
        $this->__resTraitConstruct();
        $this->load->model('Pelanggan_model', 'pelanggan');
        $this->load->model('Mealbox_model', 'mealbox');
        $this->load->model('Sirkulasi_model', 'sirkulasi');
    }

    public function index_get() //mengembalikan semua data pelanggan
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

    public function check_mealbox_id_get() //melakukan pengecekan apakah mealbox ada di database
    {
        $id = $this->get('id');

        $mealbox = $this->mealbox->get_mealbox($id);

        if ($mealbox) {
            $this->response([
                'status' => true,
                'message' => 'Data mealbox berhasil ditemukan',
                'data' => $mealbox
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data mealbox tidak terdaftar'
            ], 404); //HTTP_NOT_FOUND
        }
    }

    public function save_post() //menerima data banyak mealbox, menyimpan ke database
    {
        $id_pelanggan = $this->post('id_pelanggan');
        $id_personel = $this->post('id_personel');
        $status = $this->post('status');
        $id_mealbox = $this->post('id_mealbox');


        $mealbox = [];
        foreach ($id_mealbox as $im) {
            array_push($mealbox, array(
                'id_pelanggan' => $id_pelanggan,
                'id_mealbox' => $im[0],
                'id_personel' => $id_personel,
                'status' => $status
            ));
        }


        if (!empty($mealbox)) {
            $result = $this->sirkulasi->add_sirkulasi($mealbox);
            if ($result) {
                $this->response([
                    'status' => true,
                    'message' => 'Data mealbox berhasil disimpan',
                    'data' => $result
                ], 200);
            } else {
                $this->response([
                    'status' => false,
                    'message' => 'Data mealbox gagal disimpan'
                ], 400); //HTTP_NO_CONTENT
            }
        } else {
            $this->response([
                'status' => false,
                'message' => 'Tidak ada data mealbox yang terekam'
            ], 400); //HTTP_NO_CONTENT
        }
    }

    public function sirkulasi_get()
    {
        $sirkulasi = $this->mealbox->get_sirkulasi();
        if ($sirkulasi) {
            $this->response([
                'status' => true,
                'message' => 'Data sirkulasi ditemukan',
                'data' => $sirkulasi
            ], 200);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Data sirkulasi tidak ditemukan'
            ], 400); //HTTP_NO_CONTENT
        }
    }
}
