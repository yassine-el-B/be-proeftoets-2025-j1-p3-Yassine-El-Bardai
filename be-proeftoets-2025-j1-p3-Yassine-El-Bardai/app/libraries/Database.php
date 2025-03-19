<?php
/**
 * Dit is de database class die alle communicatie met de database verzorgt
 */

class Database
{
    private $dbHost = DB_HOST;
    private $dbName = DB_NAME;
    private $dbUser = DB_USER;
    private $dbPass = DB_PASS;

    private $dbHandler;
    private $statement;

    public function __construct()
    {
        /**
         * Dit is de connectiestring die nodig voor het maken van een
         * nieuw PDO object
         */
        $conn = 'mysql:host=' . $this->dbHost . ';dbname=' . $this->dbName;

        /**
         * We geven nog wat options mee voor het PDO-object om 
         * fouten weer te geven
         */
        $options = array(
            PDO::ATTR_PERSISTENT =>true,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_EMULATE_PREPARES => false
        );

        try {
            /**
             * Maken we een verbinding met de database mysql server
             */
            $this->dbHandler = new PDO($conn, $this->dbUser, $this->dbPass, $options);
        } catch (PDOException $e) {
            /**
             * Wanneer er een error optreedt, wordt er een PDOException object 
             * aangemaakt met informatie over de error
             */
            error_log("Error on line " . __LINE__ . " in " . __METHOD__ . " in " . __FILE__ . ": " . $e->getMessage());
            echo "Op dit moment kunnen we u niet helpen... probeer het later nog eens";
            header('Refresh:30; url=' .URLROOT . '/homepages/index');
        }
    }

    public function query($sql)
    {
        $this->statement = $this->dbHandler->prepare($sql);
    }

    /**
     * Deze methode retourneert een array van arrays uit de database
     */
    public function resultSet()
    {
        $this->execute();
        return $this->statement->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Deze methode bindt de waardes aan de parameters in de query
     */
    public function bind($parameter, $value, $type = null)
    {
        $this->statement->bindValue($parameter, $value, $type);
    }

    /**
     * Deze methode voert de query uit
     */
    public function execute()
    {
        return $this->statement->execute();
    }

    public function single()
    {
        $this->statement->execute();
        $result = $this->statement->fetch(PDO::FETCH_OBJ);
        $this->statement->closecursor();
        return $result;
    }

    public function outQuery($sql) {
        return $this->dbHandler->query($sql);
    }

    // Voeg de prepare methode toe
    public function prepare($sql)
    {
        $this->statement = $this->dbHandler->prepare($sql);
    }
}