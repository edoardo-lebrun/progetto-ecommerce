<?php

use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = [
            [
                'name' => "Laptop 17xs",
                'description' => 'Computer portatile 17", HDD 1TB, Grafica Intel HD & Audio HD.',
                'units' => 21,
                'price' => 399.99,
                'image' => './img/product03.png',
                'created_at' => new DateTime,
                'updated_at' => null,
            ],
            [
                'name' => "Cuffie Stereo",
                'description' => 'Cuffie stereo, padiglioni grandi e fascia per la regolazione della misura.',
                'units' => 120,
                'price' => 79.00,
                'image' => './img/product05.png',
                'created_at' => new DateTime,
                'updated_at' => null,
            ],
            [
                'name' => "Smartphone HD 5",
                'description' => 'Smartphone 5" con schermo HD, 2gb di ram e 16gb memoria interna.',
                'units' => 50,
                'price' => 378.00,
                'image' => './img/product07.png',
                'created_at' => new DateTime,
                'updated_at' => null,
            ],
            [
                'name' => 'Videocamera 21Z',
                'description' => 'Videocamera con riprese in HD e dimensioni compatte.',
                'units' => 20,
                'price' => 89.99,
                'image' => './img/product09.png',
                'created_at' => new DateTime,
                'updated_at' => null,
            ]
        ];

        DB::table('products')->insert($products);
    }
}
