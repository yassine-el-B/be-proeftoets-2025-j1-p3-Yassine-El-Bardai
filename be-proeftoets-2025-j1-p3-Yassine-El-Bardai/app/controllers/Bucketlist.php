<?php

class Bucketlist extends BaseController
{
    private $bucketlistModel;

    public function __construct()
    {
        // Laad het Bucketlist model
        $this->bucketlistModel = $this->model('BucketlistModel');
    }

    public function index()
    {
        // Haal alle bucketlist items op uit het model
        $bucketlist = $this->bucketlistModel->getAllBucketlistItems();

        // Laad de view en geef de bucketlist items door
        $data = [
            'title' => 'Mijn Bucketlist',
            'bucketlist' => $bucketlist
        ];

        // Laad de view
        $this->view('bucketlist/index', $data);
    }
}