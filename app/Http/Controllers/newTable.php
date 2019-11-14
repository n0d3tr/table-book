<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TablesModel;
use Illuminate\Routing\Controller;

class newTable extends Controller
{
    public function create(Request $request)
    {
        $sucursal = $request->input('sucursal');
        $identificador = $request->input('identificador');
        $capacidad = $request->input('capacidad');

        
        $tableM = new TablesModel;
        $tableM->sucursal_id = $sucursal;
        $tableM->identificador = $identificador;
        $tableM->capacidad = $capacidad;
        $tableM->status = 'Libre';
        $tableM->table_status = 1;
        $tableM->save();
        
        $tables = TablesModel::get();
        return view('tables.tables', ['tables' => $tables]);

    }
}
