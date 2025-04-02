<?php

class Vulkaan extends BaseController
{
    private $vulkaanModel;

    public function __construct()
    {
        $this->vulkaanModel = $this->model('VulkaanModel');
    }

    public function index()
    {
        // Haal alle vulkanen op via het model
        $result = $this->vulkaanModel->getAllVulkanen();
        
        // Data die naar de view wordt gestuurd
        $data = [
            'title' => 'Overzicht Vulkanen',
            'vulkanen' => $result
        ];

        // Laad de view en geef de data door
        $this->view('vulkaan/index', $data);
    }
}