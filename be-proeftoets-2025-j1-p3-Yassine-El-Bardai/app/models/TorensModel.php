<?php

class TorensModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllTorens()
    {
        $this->db->query("SELECT * FROM Torens");
        return $this->db->resultSet();
    }
}