<?php
class Personel_model extends CI_Model
{
    public function get_personel()
    {
        return $this->db->get('personel');
    }

    public function add_personel($data)
    {
        $this->db->insert('personel', $data);
        return $this->db->affected_rows();
    }

    public function get_personel_by_email($email)
    {
        $this->db->where('email', $email);
        return $this->db->get('personel')->result_array();
    }
}
