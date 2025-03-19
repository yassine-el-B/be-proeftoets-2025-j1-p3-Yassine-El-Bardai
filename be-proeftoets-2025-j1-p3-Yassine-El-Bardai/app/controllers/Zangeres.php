<?php

class Zangeres
{
    private $zangeresModel;

    public function __construct($zangeresModel)
    {
        $this->zangeresModel = $zangeresModel;
    }

    public function index()
    {
        // Haal alle zangeressen op uit het model
        $zangeressen = $this->zangeresModel->getAllZangeressen();

        // Laad de view en geef de zangeressen door
        $data = [
            'title' => 'Rijkste Zangeressen',
            'zangeressen' => $zangeressen
        ];

        require_once APPROOT . '/views/zangeres/index.php';
    }
}