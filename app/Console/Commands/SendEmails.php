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
    protected $signature = 'email:send'; // Đặt tên câu lệnh
    // protected $signature = 'email:send {email=contact@unicode} {--Q|queue=}'; // Đặt tên câu lệnh
    // protected $signature = 'email:send {email*: Email muốn gửi} {name: Tên muốn gửi} {--Q|queue=*: Kích hoạt hàng đợi}'; // Đặt tên câu lệnh

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
        // var_dump($this->argument());
        // // var_dump($this->argument('email'));
        // // var_dump($this->option('queue'));
        // echo $this->email->send();

        // $name = $this->ask('Vui lòng nhập tên');
        // $name = $this->anticipate('What is your name?', ['Taylor', 'Dayle']);
        // var_dump($name);
        // $password = $this->secret('Vui lòng nhập mật khẩu');
        // var_dump($password);
        // $confirm = $this->confirm('Bạn có muốn tiếp tục? [y|N]');
        // var_dump($confirm);

        $name = $this->choice('What is your name?', ['Taylor', 'Dayle']);
        $this->info('Tên của bạn là: '.$name);
        // $this->error('Tên của bạn là: '.$name);
    }
}
