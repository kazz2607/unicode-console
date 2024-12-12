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
    // protected $signature = 'email:send {email=contact@unicode} {--Q|queue=}'; // Đặt tên câu lệnh
    protected $signature = 'email:send {email*} {--Q|queue=*}'; // Đặt tên câu lệnh

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
        var_dump($this->argument('email'));
        var_dump($this->option('queue'));
        echo $this->email->send();
    }
}
