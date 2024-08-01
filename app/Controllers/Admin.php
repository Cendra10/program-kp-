<?php

namespace App\Controllers;

use CodeIgniter\Controller;

class Admin extends Controller
{
    public function showRegister()
    {
        // Jika formulir registrasi dikirimkan
        if ($this->request->getMethod(true) === 'POST') {
            // Lakukan validasi formulir, simpan data ke database, dll.
            // Contoh sederhana:
            $name = $this->request->getPost('name');
            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');

            // Proses logika registrasi disini
            // ...
        }

        // Tampilkan view
        echo view('templates/auth_header');
        echo view('admin/register');
        echo view('templates/auth_footer');
    }
}
