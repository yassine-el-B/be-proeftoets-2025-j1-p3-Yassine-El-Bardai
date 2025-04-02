<?php

class VulkaanModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    /**
     * Deze methode haalt alle vulkaan records op uit de database
     */
    public function getAllVulkanen()
{
    $sql = 'SELECT  VULK.Id
                   ,VULK.Naam
                   ,VULK.Hoogte
                   ,VULK.Land
                   ,VULK.JaarLaatsteUitbarsting
                   ,VULK.AantalSlachtoffers
                   ,VULK.IsActief
                   ,VULK.Opmerking
                   ,DATE_FORMAT(VULK.DatumAangemaakt, "%d-%m-%Y %H:%i:%s") AS DatumAangemaakt
                   ,DATE_FORMAT(VULK.DatumGewijzigd, "%d-%m-%Y %H:%i:%s") AS DatumGewijzigd

            FROM Vulkaan as VULK
            
            ORDER BY VULK.AantalSlachtoffers DESC, VULK.Naam ASC';

    $this->db->query($sql);

    return $this->db->resultSet();
}
}