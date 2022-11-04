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

            $responsibilities = Project::find($i)->responsibilities;
            $responsibilityArr = collect($responsibilities)->pluck('responsibility');
            $projectsDecoded[$i]['responsibilities'] = $responsibilityArr;

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
        $project = Project::get()->where('name', $name);
        $projectDecoded = json_decode($project, true);

        $id = array_column($projectDecoded, 'id');
        $id = $id[0];

        $categories = Project::find($id)->categories;
        $categoryArr = collect($categories)->pluck('category');
        $projectDecoded[$id]['categories'] = $categoryArr;

        $responsibilities = Project::find($id)->responsibilities;
        $responsibilityArr = collect($responsibilities)->pluck('responsibility');
        $projectDecoded[$id]['responsibilities'] = $responsibilityArr;

        $goals = Project::find($id)->goals;
        $goalArr = collect($goals)->pluck('goal');
        $projectDecoded[$id]['goals'] = $goalArr;

        $images = Project::find($id)->images;
        $imageArr = collect($images)->pluck('image');
        $projectDecoded[$id]['images'] = $imageArr;

        return $projectDecoded[$id];
    }

    public function showNext($name)
    {
        $project = Project::get()->where('name', $name);
        $projectDecoded = json_decode($project, true);

        $id = array_column($projectDecoded, 'id');
        $id = $id[0];

        $next = Project::where('id', '>', $id)->orderBy('id', 'asc')->first();

        if($next == null) return Project::get()->first();
        
        return $next;
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
