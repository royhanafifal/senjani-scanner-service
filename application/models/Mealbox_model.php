<?php
class Mealbox_model extends CI_Model
{


    public function get_mealbox($id = null)
    {
        $this->db->where('mealbox.date_deleted', null);
        if ($id) {
            return $this->db->get_where('mealbox', ['id' => $id])->row_array();
        }
        $this->db->select('
            mealbox.id,
            jenis,
            keterangan,
            sirkulasi.status
        ');
        $this->db->join('sirkulasi', 'sirkulasi.id_mealbox = mealbox.id', 'left');
        $this->db->group_by('mealbox.id');
        $this->db->order_by('sirkulasi.date_created', 'DESC');
        return $this->db->get('mealbox')->result_array();
    }

    public function add_mealbox($mealbox)
    {
        $this->db->insert('mealbox', $mealbox);
        return $this->db->affected_rows();
    }

    public function update_mealbox($id, $data)
    {
        $this->db->update('mealbox', $data, ['id' => $id]);
        return $this->db->affected_rows();
    }
}
