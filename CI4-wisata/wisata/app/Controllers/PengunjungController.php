<?php

namespace App\Controllers;

use App\Models\M_pengunjung;

class PengunjungController extends RestfulController
{
    public function getPengunjung()
    {
        $model = new M_pengunjung();

        $data = $model->table("pengunjung")
            ->findAll();

        return $this->responseHasil(200, true, $data);
    }
}
