<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\ProjectCategories;
use App\Models\ProjectGoals;
use App\Models\ProjectResponsibilities;
use App\Models\ProjectImages;

class Project extends Model
{
    use HasFactory;

    public function categories()
    {
        return $this->hasMany(ProjectCategories::class);
    }

    public function goals()
    {
        return $this->hasMany(ProjectGoals::class);
    }

    public function responsibilites()
    {
        return $this->hasMany(ProjectResponsibilities::class);
    }

    public function images()
    {
        return $this->hasMany(ProjectImages::class);
    }
}

