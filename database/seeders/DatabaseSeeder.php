<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {   
        for ($i=1; $i <= 20 ; $i++) { 
            $user = new User;
            $user->name = 'Nguyễn Tuấn '.$i;
            $user->password = Hash::make('123456');
            $user->email = 'nguyentuan'.$i.'@gmail.com';
            $user->save();
        }
        
    }
}
