<?php
class Pelanggan_model extends CI_Model
{
    public function get_pelanggan()
    {
        $this->db->where('date_deleted', null);
        $this->db->order_by('nama_lengkap');
        return $this->db->get('pelanggan')->result_array();
    }

    public function update_pelanggan($id, $data)
    {
        $this->db->update('pelanggan', $data, ['id' => $id]);
        return $this->db->affected_rows();
    }

    public function add_pelanggan($data)
    {
        return $this->db->insert('pelanggan', $data);
    }
}
