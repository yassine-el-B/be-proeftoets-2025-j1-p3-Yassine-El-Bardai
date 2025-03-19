<?php

class BucketlistModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllBucketlistItems()
    {
        $this->db->query("SELECT * FROM BucketList");
        return $this->db->resultSet();
    }
}