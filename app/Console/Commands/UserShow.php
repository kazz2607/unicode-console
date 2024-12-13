<?php

namespace App\Console\Commands;

use App\Models\User;
use Illuminate\Console\Command;

class UserShow extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'user:show';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        // $headers = ['Name', 'Email'];
        // $users = User::all(['name', 'email'])->toArray();
        // $this->table($headers, $users);

        $users = User::all(['name','email'])->toArray();
        $this->table(['Name','Email'], $users);

        // $bar = $this->output->createProgressBar(count($users));
        // $bar->start();
        // foreach ($users as $user) {
        //     sleep(1);
        //     // usleep(5000);
        //     // $this->info('Name :'.$user->name);
        //     // $this->info('Email :'.$user->email);
        //     $bar->advance();
        // }
        // $bar->finish();
    }
}
