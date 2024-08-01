<?php

namespace App\Controllers;

use CodeIgniter\Controller;

class Auth extends Controller
{
    public function showAuth()
    {
        echo view('templates/auth_header');
        echo view('admin/admin_login');
        echo view('templates/auth_footer');
    }
}
