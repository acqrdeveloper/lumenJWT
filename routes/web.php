<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

// Ejemplo basica de route
//$router->get('/', function() use ($router){
//    return $router->app->version();
//});

// Generar y Obtener token por autenticación
$router->post('auth/login', ['uses' => 'AuthController@authenticate']);

// Obtener usuarios
$router->group(['middleware' => 'jwt.auth'], function() use ($router){//
    $router->get('api/users', 'AuthController@getUsers');
});