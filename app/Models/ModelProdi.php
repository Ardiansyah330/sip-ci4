<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelProdi extends Model
{
    public function AllData()
    {
        return $this->db->table('tbl_prodi')
        ->orderBy('id_prodi', 'ASC')
        ->get()->getResultArray();
    }

    public function AddData($data)
    {
        $this->db->table('tbl_prodi')->insert($data);
    }
    public function DeleteData($data)
    {
        $this->db->table('tbl_prodi')
            ->where('id_prodi', $data['id_prodi'])
            ->delete($data);
    }

    public function EditData($data)
    {
        $this->db->table('tbl_prodi')
            ->where('id_prodi', $data['id_prodi'])
            ->update($data);
    }
}
