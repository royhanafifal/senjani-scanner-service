<?php
class Sirkulasi_model extends CI_Model
{
    public function get_sirkulasi()
    {
        $this->db->select('
            sirkulasi.id,
            personel.nama_lengkap AS `nama_personel`, 
            pelanggan.nama_lengkap AS `nama_pelanggan`, 
            id_mealbox AS `id_mealbox`,
            jenis,
            status, 
            sirkulasi.date_created');

        $this->db->where('sirkulasi.date_deleted', null);

        $this->db->join('mealbox', 'mealbox.id = sirkulasi.id_mealbox', 'left');
        $this->db->join('personel', 'personel.id = sirkulasi.id_personel', 'left');
        $this->db->join('pelanggan', 'pelanggan.id = sirkulasi.id_pelanggan', 'left');
        return $this->db->get('sirkulasi')->result_array();
    }

    public function update_sirkulasi($id, $data)
    {
        $this->db->update('sirkulasi', $data, ['id' => $id]);
        return $this->db->affected_rows();
    }

    public function add_sirkulasi($mealbox)
    {
        return $this->db->insert_batch('sirkulasi', $mealbox);
    }
}
