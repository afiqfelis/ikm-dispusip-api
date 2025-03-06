<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Paths
    |--------------------------------------------------------------------------
    |
    | Atur path yang akan diizinkan mengakses resource dari backend.
    |
    */
    'paths' => [
        'api/*',
        'unsur',
        'unsur/store',
        'pertanyaan',
        'pertanyaan/store',
        'jawaban',
        'jawaban/store',
    ],

    /*
    |--------------------------------------------------------------------------
    | Allowed Methods
    |--------------------------------------------------------------------------
    |
    | Metode HTTP yang diizinkan untuk diakses.
    |
    */
    'allowed_methods' => ['*'],

    /*
    |--------------------------------------------------------------------------
    | Allowed Origins
    |--------------------------------------------------------------------------
    |
    | Origin yang diizinkan mengakses resource. Ganti dengan URL frontend Anda.
    |
    */
    'allowed_origins' => ['http://localhost:3000'],

    /*
    |--------------------------------------------------------------------------
    | Allowed Origins Patterns
    |--------------------------------------------------------------------------
    |
    | Pola untuk mengizinkan origin tertentu.
    |
    */
    'allowed_origins_patterns' => [],

    /*
    |--------------------------------------------------------------------------
    | Allowed Headers
    |--------------------------------------------------------------------------
    |
    | Header yang diizinkan untuk dikirim pada request.
    |
    */
    'allowed_headers' => ['*'],

    /*
    |--------------------------------------------------------------------------
    | Exposed Headers
    |--------------------------------------------------------------------------
    |
    | Header yang diizinkan untuk diakses oleh client.
    |
    */
    'exposed_headers' => [],

    /*
    |--------------------------------------------------------------------------
    | Max Age
    |--------------------------------------------------------------------------
    |
    | Lama cache preflight request.
    |
    */
    'max_age' => 0,

    /*
    |--------------------------------------------------------------------------
    | Supports Credentials
    |--------------------------------------------------------------------------
    |
    | Jika true, maka browser akan mengirimkan cookies pada request.
    |
    */
    'supports_credentials' => false,
];
