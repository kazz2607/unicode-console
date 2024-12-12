<?php

namespace App\Console\Commands;

use App\Core\DemoSend;
use Illuminate\Console\Command;

class SendEmails extends Command
{
    public $email;

    public function __construct(DemoSend $email)
    {
        parent::__construct();
        $this->email = $email;
    }
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'email:send {email}'; // Đặt tên câu lệnh

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send Email Command';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        echo $this->argument('email');
        $this->email->send();
    }
}
