<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class EmailOptions extends Command
{
    public function __construct()
    {
        parent::__construct();
    }
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'email:options {email} {--queue=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Setting Email';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->info($this->argument('email'));
        // $this->output->newLine();
        $this->info($this->option('queue'));
    }
}
