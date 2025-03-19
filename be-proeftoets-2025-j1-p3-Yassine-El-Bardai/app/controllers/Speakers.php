<?php

class Speakers extends BaseController
{
    private $speakerModel;

    public function __construct()
    {
        // Laad het Speaker model
        $this->speakerModel = $this->model('SpeakersModel');
    }

    public function index()
    {
        // Haal alle speakers op uit het model
        $speakers = $this->speakerModel->getAllSpeakers();

        // Laad de view en geef de speakers door
        $data = [
            'title' => 'Overzicht van Speakers',
            'speakers' => $speakers
        ];

        // Laad de view
        $this->view('speakers/index', $data);
    }
}