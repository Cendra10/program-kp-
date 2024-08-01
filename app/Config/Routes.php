<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::dashboard');

$routes->get('form_user', 'UserController::showForm');
$routes->post('form_user', 'UserController::registrasi');
$routes->get('admin/admin_login', 'Auth::showAuth');
$routes->get('admin/register', 'Admin::showRegister');
