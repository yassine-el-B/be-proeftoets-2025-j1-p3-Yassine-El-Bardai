<?php

class ZangeresModel
{
    private $db;

    public function __construct($database)
    {
        $this->db = $database;
    }

    public function getAllZangeressen()
    {
        $query = "SELECT * FROM Zangeres";
        $this->db->query($query);
        return $this->db->resultSet();
    }
}