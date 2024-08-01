<?php

namespace App\Controllers;

use CodeIgniter\Controller;

class Contact extends Controller
{
    public function index()
    {
        return view('contact_form');
    }

    public function processForm()
    {
        $session = session();
        $request = \Config\Services::request(); // Mendapatkan objek request

        // Pengecekan apakah pengguna sudah terdaftar
        if (!$this->isUserRegistered()) {
            $session->setFlashdata('error', 'Anda harus Registrasi terlebih dahulu sebelum mengirim pesan.');
            return redirect()->to('/contact');
        }

        // Lanjut dengan logika pengiriman pesan jika pengguna sudah terdaftar
        $email = $request->getPost('email');
        $message = $request->getPost('message');

        // Proses formulir, validasi, simpan ke database, dll.

        // Set flash data
        $session->setFlashdata('succes', 'Pesan anda berhasil dikirim!');

        // Redirect kembali ke halaman formulir
        return redirect()->to('/contact');
    }


    protected function isUserRegistered()
    {
        // Implementasi logika pengecekan registrasi di sini
        // Misalnya, cek ke database atau sistem autentikasi
        // Return true jika pengguna terdaftar, false jika tidak

        // Contoh sederhana, selalu kembalikan true
        return true;
    }
}
