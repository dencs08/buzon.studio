<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Project;
use App\Models\ProjectCategories;

class ProjectController extends Controller
{

    public function index()
    {
        return Project::orderBy('id', 'ASC')->get();
    }

    public function indexBest()
    {
        $projects = Project::get();
        $projectsDecoded = json_decode($projects, true);
        
        for ($i=0; $i < count($projects); $i++) { 
            $categories = Project::find($i)->categories;
            $categoryArr = collect($categories)->pluck('category');
            $projectsDecoded[$i]['categories'] = $categoryArr;

            $responsibilites = Project::find($i)->responsibilites;
            $responsibilityArr = collect($responsibilites)->pluck('responsibility');
            $projectsDecoded[$i]['responsibilites'] = $responsibilityArr;

            $goals = Project::find($i)->goals;
            $goalArr = collect($goals)->pluck('goal');
            $projectsDecoded[$i]['goals'] = $goalArr;

            $images = Project::find($i)->images;
            $imageArr = collect($images)->pluck('image');
            $projectsDecoded[$i]['images'] = $imageArr;
        }

        //sort by importance
        foreach ($projectsDecoded as $key => $row)
        {
            $importance[$key] = $row['importance'];
        }
        array_multisort($importance, SORT_DESC, $projectsDecoded);

        return $projectsDecoded;
    }

    public function show($id)
    {
        return Project::get()->where('id', $id);
    }

    public function showByName($name)
    {
        return Project::get()->where('name', $name);
    }

    public function showCategories($id)
    {
        return ProjectCategories::get()->where('project_id', $id);
    }
    
    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
