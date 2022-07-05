<?php

namespace App\Controllers;

use App\Models\M_wisata;

class WisataController extends RestfulController
{
    public function getWisata()
    {
        $model = new M_wisata();

        $data = $model->table("wisata")
            ->join("kategori", "wisata.id_kategori = kategori.id")
            ->findAll();

        return $this->responseHasil(200, true, $data);
    }

    public function detailwisata($id)
    {
        $model = new M_wisata();

        $data = $model->where('id_wisata', $id)->find();

        return $this->responseHasil(200, true, $data);
    }
}
