<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class LoadProjects extends Command
{
    protected $signature = 'loadProjects';
    protected $description = 'Command description';

    public function handle()
    {
        $this->info("Loading CSV file into Db...");
    }
}
