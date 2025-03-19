<?php

class SpeakersModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllSpeakers()
    {
        $this->db->query("SELECT * FROM Speakers");
        return $this->db->resultSet();
    }
}