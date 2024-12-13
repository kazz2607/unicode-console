<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class SystemInstall extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'install';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Install System Laravel';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        // $this->info('Installing System Laravel...');
        // $this->callSilent('key:generate');
        // $this->callSilent('migrate:refresh');
        // $this->callSilent('db:seed');
        // $this->callSilent('cache:clear');
        // $this->callSilent('config:clear');
        // $this->callSilent('route:clear');
        // $this->callSilent('view:clear');
        // $this->info('Install System Laravel Successful');

        $this->info('Installing System Laravel...');
        $this->call('key:generate');
        $this->call('migrate:refresh');
        $this->call('db:seed');
        $this->call('cache:clear');
        $this->call('config:clear');
        $this->call('route:clear');
        $this->call('view:clear');
        $this->info('Install System Laravel Successful');
    }
}
