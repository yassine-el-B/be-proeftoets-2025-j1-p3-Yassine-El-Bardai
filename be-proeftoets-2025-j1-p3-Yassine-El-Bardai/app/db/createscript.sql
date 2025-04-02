-- Step: 01
-- ***************************************************************
-- Doel : Maak een nieuwe database aan met de naam Mvc_smartphone_2408A
-- ***************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           12-02-2025      Arjan de Ruijter    Smartphones
-- ***************************************************************

-- Verwijder database Mvc_smartphone_2408A
DROP DATABASE IF EXISTS `Mvc_smartphone_2408A`;

-- Maak een nieuwe database aan Mvc_smartphone_2408A
CREATE DATABASE `Mvc_smartphone_2408A`;

-- Gebruik database Mvc_smartphone_2408A
USE `Mvc_smartphone_2408A`;

-- Step: 02
-- ***************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Smartphones
-- ***************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           12-02-2025      Arjan de Ruijter    Tabel Smartphones
-- ***************************************************************
-- Onderstaande velden toevoegen aan de tabel Smartphones
-- Merk, Model, Prijs, Geheugen, Besturingssysteem, Schermgrootte
-- Releasedatum, MegaPixels
-- ***************************************************************

CREATE TABLE Smartphones
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Merk               VARCHAR(50)                 NOT NULL
    ,Model              VARCHAR(50)                 NOT NULL
    ,Prijs              DECIMAL(6,2)                NOT NULL    
    ,Geheugen           DECIMAL(4,0)                NOT NULL
    ,Besturingssysteem  VARCHAR(25)			  		NOT NULL
    ,Schermgrootte	    DECIMAL(2,1)				NOT NULL
    ,Releasedatum	    DATE 						NOT NULL
    ,MegaPixels	    TINYINT			UNSIGNED	NOT NULL
    ,Gewicht            DECIMAL(3,0)			  NOT NULL
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Smartphones_Id    PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;

-- Step: 03
-- ***************************************************************
-- Doel : Vul de tabel Smartphones met gegevens
-- ***************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           12-02-2025      Arjan de Ruijter    Vulling Smartphones
-- ***************************************************************

INSERT INTO Smartphones
(
      Merk
     ,Model
     ,Prijs
     ,Geheugen
     ,Besturingssysteem
     ,Schermgrootte
     ,Releasedatum
     ,MegaPixels
     ,Gewicht
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Apple', 'iPhone 16 Pro', 1358.99, 64, 'iOS 18', 6.9, '2025-01-10', 50, 234, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Samsung', 'Galaxy S25 Ultra', 1639, 512, 'Android 15', 7.2,  '2024-11-23', 100, 219, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Google', 'Pixel 9 Pro', 856, 1024, 'Android 15', 7.0, '2025-02-12', 200, 345, 1, NULL, SYSDATE(6), SYSDATE(6));



-- Step: 04
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Sneakers
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-02-2025      Arjan de Ruijter    Tabel Sneakers
-- *****************************************************************************************************
-- Onderstaande velden toevoegen aan de tabel Sneakers
-- Type (Hardloop, Basketbal, Casual), Prijs, Materiaal (Leer, Mesh, Synthetisch), Gewicht, Releasedatum
-- *****************************************************************************************************

CREATE TABLE Sneakers
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Merk               VARCHAR(50)                 NOT NULL
    ,Model              VARCHAR(50)                 NOT NULL	
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Smartphones_Id    PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;


-- Step: 05
-- *****************************************************************
-- Doel : Vul de tabel Sneakers met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-02-2025      Arjan de Ruijter    Vulling Sneakers
-- *****************************************************************

INSERT INTO Sneakers
(
      Merk
     ,Model
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Nike', 'Air Jordan 1', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Adidas', 'Yeezy Boost 350', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('New Balance', 'Pixel 9 Pro', 1, NULL, SYSDATE(6), SYSDATE(6));




-- Step: 06
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Horloges
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           11-03-2025      Arjan de Ruijter    Tabel Horloges
-- *****************************************************************************************************
-- Onderstaande velden toevoegen aan de tabel Horloges
-- Materiaal (Goud, Diamant, RVS), Gewicht, Releasedatum, Waterdichtheid(m), Type (Analoog, Digitaal), Uniek kenmerk
-- *****************************************************************************************************

CREATE TABLE Horloges
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Merk               VARCHAR(50)                 NOT NULL
    ,Model              VARCHAR(50)                 NOT NULL
    ,Prijs              DECIMAL(6,0)                NOT NULL	
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Horloges_Id    PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;

-- Step: 07
-- *****************************************************************
-- Doel : Vul de tabel Horloges met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           11-3-2025      Arjan de Ruijter    Vulling Horloges
-- *****************************************************************

INSERT INTO Horloges
(
      Merk
     ,Model
     ,Prijs
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Rolex', 'Daytona 126500LN', 19800, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Omega', 'Speedmaster Moonwatch Professional', 8500, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Vacheron Constantin', 'Overseas Perpetual Calendar Ultra-Thin', 98000, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Jaeger-LeCoultre', 'Reverso Tribute Duoface', 17000, 1, NULL, SYSDATE(6), SYSDATE(6));





 
-- Step: 08
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Torens
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           11-03-2025      Arjan de Ruijter    Tabel Torens
-- *****************************************************************************************************
-- Onderstaande velden zelf toevoegen aan de tabel Torens
-- Kosten, liftsnelheid, Obeservatiedek hoogte
-- *****************************************************************************************************

CREATE TABLE Torens
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Naam               VARCHAR(50)                 NOT NULL
    ,Locatie            VARCHAR(50)                 NOT NULL
    ,Hoogte             DECIMAL(6,0)                NOT NULL
    ,AantalVerdiepingen DECIMAL(4,0)                NOT NULL
    ,JaarVoltooid       YEAR                        NOT NULL	
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Torens_Id    PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;

-- Step: 09
-- *****************************************************************
-- Doel : Vul de tabel Torens met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           11-3-2025      Arjan de Ruijter    Vulling Torens
-- *****************************************************************

INSERT INTO Torens
(
      Naam
     ,Locatie
     ,Hoogte
     ,AantalVerdiepingen
     ,JaarVoltooid
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Burj Khalifa', 'Dubai, VAE', 828, 163, 2010, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Merdeka 118', 'Kuala Lumpur, Maleisië', 679, 118, 2023, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Shanghai Tower', 'Shanghai, China', 632, 128, 2015, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Abraj Al Bait Clock Tower', 'Mekka, Saoedi-Arabië', 601, 120, 2012, 1, NULL, SYSDATE(6), SYSDATE(6));



-- Step: 10
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Speakers
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           11-03-2025      Arjan de Ruijter    Tabel Speakers
-- *****************************************************************************************************
-- Onderstaande velden zelf toevoegen aan de tabel Speakers
-- frequentiebereik, Powerbankfunctie, Snelladen
-- *****************************************************************************************************

CREATE TABLE Speakers
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Naam               VARCHAR(50)                 NOT NULL
    ,Batterijduur       TINYINT         UNSIGNED    NOT NULL
    ,Waterbestendigheid VARCHAR(50 )                NOT NULL
    ,Connectiviteit     VARCHAR(30)                 NOT NULL
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Speakers_Id              PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;

-- Step: 11
-- *****************************************************************
-- Doel : Vul de tabel Speakers met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           11-3-2025      Arjan de Ruijter     Vulling Speakers
-- *****************************************************************

INSERT INTO Speakers
(
      Naam
     ,Batterijduur
     ,Waterbestendigheid
     ,Connectiviteit
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('JBL Charge 5', 20,'IP67 (stof- en waterdicht)', 'Bluetooth 5.1', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Bose SoundLink Flex', 12, 'IP67 (water- en stofdicht)', 'Bluetooth 4.2', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Sony SRS-XB43', 24, 'IP67 (water-, stof- en roestbestendig)', 'Bluetooth 5.0, NFC', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Ultimate Ears (UE) Boom 3', 15, 'IP67 (waterdicht en drijvend!)', 'Bluetooth 5.0', 1, NULL, SYSDATE(6), SYSDATE(6));



-- Step: 12
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Zangeres
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-03-2025      Arjan de Ruijter    Tabel Zangeres
-- *****************************************************************************************************
-- Onderstaande velden zelf toevoegen aan de tabel Zangeres
-- *****************************************************************************************************

CREATE TABLE Zangeres
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Naam               VARCHAR(50)                 NOT NULL
    ,Nettowaarde        SMALLINT        UNSIGNED    NOT NULL
    ,Land               VARCHAR(50 )                NOT NULL
    ,Mobiel             VARCHAR(30)                 NOT NULL
    ,Leeftijd           TINYINT         UNSIGNED    NOT NULL
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Zangeres_Id              PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;

-- Step: 13
-- *****************************************************************
-- Doel : Vul de tabel Zangeres met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-3-2025      Arjan de Ruijter     Vulling Zangeres
-- *****************************************************************

INSERT INTO Zangeres
(
      Naam
     ,Nettowaarde
     ,Land
     ,Mobiel
     ,Leeftijd
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
  ('Rihanna', 1400,'Barbados', '+1246 2400 1862400', 36, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Madonna', 575,'Verenigde Staten', '+13425 182345', 65, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Taylor Swift', 570,'Verenigde Staten', '+13421 231356', 34, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Beyoncé', 420,'Verenigde Staten', '+18723 213481', 41, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Jennifer Lopez', 400,'Verenigde Staten', '+16254 751243', 54, 1, NULL, SYSDATE(6), SYSDATE(6));
-- Step: 14
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam BucketList
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           19-03-2025      Arjan de Ruijter    Tabel BucketList
-- *****************************************************************************************************

CREATE TABLE BucketList
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Activiteit         VARCHAR(255)                NOT NULL
    ,Locatie            VARCHAR(255)                NOT NULL
    ,Datum              DATE                        NOT NULL
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_BucketList_Id            PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;
-- Step: 15
-- *****************************************************************
-- Doel : Vul de tabel BucketList met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           19-03-2025      Arjan de Ruijter    Vulling BucketList
-- *****************************************************************

INSERT INTO BucketList
(
      Activiteit
     ,Locatie
     ,Datum
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Bezoek aan de Grand Canyon', 'Arizona, Verenigde Staten', '2030-05-15', 'Een van de grootste natuurlijke wonderen ter wereld', SYSDATE(6), SYSDATE(6)),
 ('Safari in de Serengeti', 'Tanzania', '2030-07-20', 'Zie de Grote Migratie van wilde dieren', SYSDATE(6), SYSDATE(6)),
 ('Duiken in het Great Barrier Reef', 'Queensland, Australië', '2030-09-10', 'Verken het grootste koraalrif ter wereld', SYSDATE(6), SYSDATE(6)),
 ('Wandelen in de Alpen', 'Zwitserland', '2030-06-25', 'Geniet van de prachtige berglandschappen', SYSDATE(6), SYSDATE(6)),
 ('Noorderlicht bekijken', 'Noorwegen', '2030-12-15', 'Ervaar het magische noorderlicht', SYSDATE(6), SYSDATE(6));

 
  
 -- Step: 16
 -- *****************************************************************************************************
 -- Doel : Maak een nieuwe tabel aan met de naam Vulkaan
 -- *****************************************************************************************************
 -- Versie       Datum           Auteur              Omschrijving
 -- ******       *****           ******              ************
 -- 01           26-03-2025      Arjan de Ruijter    Tabel Vulkaan
 -- *****************************************************************************************************
 -- Onderstaande velden zelf toevoegen aan de tabel Vulkaan
 -- *****************************************************************************************************
 
 CREATE TABLE Vulkaan
 (
      Id                       INT            UNSIGNED    NOT NULL        AUTO_INCREMENT
     ,Naam                     VARCHAR(250)               NOT NULL
     ,Hoogte                   INT            UNSIGNED    NOT NULL
     ,Land                     VARCHAR(250)               NOT NULL
     ,JaarLaatsteUitbarsting   VARCHAR(250)               NOT NULL
     ,AantalSlachtoffers       INT            UNSIGNED    NOT NULL
     ,IsActief                 BIT                        NOT NULL        DEFAULT 1
     ,Opmerking                VARCHAR(255)                   NULL        DEFAULT NULL
     ,DatumAangemaakt          DATETIME(6)                NOT NULL
     ,DatumGewijzigd           DATETIME(6)                NOT NULL
     ,CONSTRAINT               PK_Zangeres_Id             PRIMARY KEY     CLUSTERED(Id)
 ) ENGINE=InnoDB;
 
 -- Step: 17
 -- *****************************************************************
 -- Doel : Vul de tabel Vulkaan met gegevens
 -- *****************************************************************
 -- Versie       Datum           Auteur              Omschrijving
 -- ******       *****           ******              ************
 -- 01           26-3-2025      Arjan de Ruijter     Vulling Vulkaan
 -- *****************************************************************
 
 INSERT INTO Vulkaan
 (
       Naam
      ,Hoogte
      ,Land
      ,JaarLaatsteUitbarsting
      ,AantalSlachtoffers
      ,IsActief
      ,Opmerking
      ,DatumAangemaakt
      ,DatumGewijzigd
 )
 VALUES
   ('Eyjafjallajökul', 1666,'IJsland', '2010', 1, 1, NULL, SYSDATE(6), SYSDATE(6))
  ,('Vesuvius', 1281,'Italië', '1944', 26, 1, NULL, SYSDATE(6), SYSDATE(6))
  ,('Sakurajima', 1117,'Japan', '2012', 2, 1, NULL, SYSDATE(6), SYSDATE(6))
  ,('Merapi', 2910,'Indonesië', '2020', 5, 1, NULL, SYSDATE(6), SYSDATE(6))
  ,('Nyiragongo', 3470,'Democratische Republiek Congo', '2021', 15, 1, NULL, SYSDATE(6), SYSDATE(6));