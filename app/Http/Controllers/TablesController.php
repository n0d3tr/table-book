<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\TablesModel;

class TablesController extends Controller
{
    public function show()
    {   
        $tables = TablesModel::get();
        return view('tables.tables', ['tables' => $tables]);
    }
}
