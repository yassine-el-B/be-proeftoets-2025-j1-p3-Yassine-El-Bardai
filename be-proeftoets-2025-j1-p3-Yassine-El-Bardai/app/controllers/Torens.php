<?php

class Torens extends BaseController
{
    private $torenModel;

    public function __construct()
    {
        // Laad het Toren model
        $this->torenModel = $this->model('TorensModel');
    }

    public function index()
    {
        // Haal alle torens op uit het model
        $torens = $this->torenModel->getAllTorens();

        // Laad de view en geef de torens door
        $data = [
            'title' => 'Overzicht van Torens',
            'torens' => $torens
        ];

        // Laad de view
        $this->view('torens/index', $data);
    }
}