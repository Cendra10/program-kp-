<?php

namespace App\Controllers;

use App\Models\user_model;
use CodeIgniter\Controller;

class UserController extends BaseController
{
    public function showForm()
    {
        //Tampilkan tampilan formulir
        return view('form_user');
    }

    public function registrasi()
    {
        // Penanganan penyerahan formulir
        if ($this->request->getServer('REQUEST_METHOD') === 'post') {
            // Validasi input form
            $validationRules = [
                'username' => 'required|min_length[5]|max_length[50]|is_unique[users.username]',
                'email'    => 'required|valid_email|is_unique[users.email]',
                'password' => 'required|min_length[8]',
            ];

            if ($this->validate($validationRules)) {
                // Jika registrasi berhasil, ambil data dari form
                $userData = [
                    'username' => $this->request->getPost('username'),
                    'email'    => $this->request->getPost('email'),
                    'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT),

                ];

                // Lakukan validasi dan simpan ke dalam database
                $userModel = new user_model();
                if ($userModel->save($userData)) {
                    // Registrasi berhasil, tambahkan logika lainya jika diperlukan
                    return redirect()->to('/success');
                } else {
                    // Registrasi gagal, tampilkan error atau kembali ke form register
                    return view('app\Views\form_user', ['errors' => $userModel->errors()]);
                }
            } else {
                // Jika validasi gagal, kembali ke form register dengan menampilkan pesan kesalahan
                return view('app\Views\form_user', ['validation' => $this->validator]);
            }
        }
    }
}
