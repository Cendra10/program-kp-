<?php

namespace App\Models;

use CodeIgniter\Model;

class user_model extends Model
{
    protected $table = 'users';
    protected $primaryKey = 'id';
    protected $allowedFields = ['username', 'email', 'password'];
    protected $useTimestamsp = 'true';

    //Metode untuk mengambil data pengguna berdasarkan nama pengguna
    public function getUserByUsername($username)
    {
        return $this->where('username', $username)->first();
    }
}
