<!-- -- NUMERO 1  -->
SELECT `NUMMEDECIN`, `NOMMED` FROM `medecin`,`specialite` WHERE `medecin`.`NUMSPECIALITE` = `specialite`.`NUMSPECIALITE` AND `specialite`.`nomSpecialite`="S1"
<!-- -- NUMERO 2 -->
SELECT * FROM `specialite`
<!-- -- NUMERO 3 -->
SELECT `NUMMALADE`, `NOM_MALADE`, `DATE_NAISS` FROM `malade` WHERE `SEXE`="M" ORDER BY `DATE_NAISS`ASC
<!-- -- NUMERO 4 -->
SELECT `NUMMALADE`, `NOM_MALADE`, `DATE_NAISS` FROM `malade` WHERE `SEXE`="F" AND `ADRESSE` LIKE "%p%" ORDER BY `NOM_MALADE`ASC
<!-- -- NUMERO 5 AREVOIR -->
SELECT `NUMMALADE`, `NOM_MALADE`, `DATE_NAISS`, `NUMCHAMBRE`, `CATEGORIE`, `TYPE` FROM `malade`, `chambre` 

<!-- -- SELECT `malade`.`NUMMALADE`, `NOM_MALADE`, `DATE_NAISS`, `chambre`.`NUMCHAMBRE`, `CATEGORIE`, `TYPE` FROM `malade`, `chambre`, `lit`, `occuper` WHERE `occuper`.`NUMMALADE`= `malade`.`NUMMALADE` AND `occuper`.`NUMLIT`=`lit`.`NUMLIT` AND `lit`.`NUMCHAMBRE`= `chambre`.`NUMCHAMBRE` -->

<!-- -- NUMERO 6  -->
SELECT `malade`.`NUMMALADE`, `NOM_MALADE`, `DATE_NAISS`, `dep_medical`.`NUMDEP`, `NOMDEP` FROM `malade`, `dep_medical` WHERE `dep_medical`.`NUMDEP` = `malade`.`NUMDEP` AND `malade`.`DATE_NAISS`="2012-4-22"
<!-- -- NUMERO 7 -->
SELECT `malade`.`NUMMALADE`, `NOM_MALADE`, `DATE_NAISS` FROM `malade`, `medecin`, `suivre` WHERE `medecin`.`NUMMEDECIN`=`suivre`.`NUMMEDECIN` AND `suivre`.`NUMMALADE`=`malade`.`NUMMALADE` AND `medecin`.`NOMMED`="M3"
<!-- -- NUMERO 8 -->
SELECT `malade`.`NUMMALADE`, `NOM_MALADE`, `DATE_NAISS` FROM `malade`, `medecin`, `suivre`, `lit`, `occuper` WHERE `medecin`.`NUMMEDECIN`=`suivre`.`NUMMEDECIN` AND `suivre`.`NUMMALADE`=`malade`.`NUMMALADE` AND `medecin`.`NOMMED`="M3" AND `occuper`.`NUMMALADE`=`malade`.`NUMMALADE` AND `occuper`.`NUMLIT`= `lit`.`NUMLIT` AND `lit`.`NUMLIT`=21
<!-- -- NUMERO 9 -->
SELECT DISTINCT `malade`.`NUMMALADE`,`NOM_MALADE`, `DATE_NAISS` FROM `malade`, `medecin`, `suivre`, `lit`, `occuper` WHERE `occuper`.`NUMMALADE`=`malade`.`NUMMALADE` AND `occuper`.`NUMLIT`= `lit`.`NUMLIT` AND `lit`.`NUMLIT`=21
<!-- -- NUMERO 10  -->
SELECT `malade`.`NUMMALADE`, `NOM_MALADE`, `DATE_NAISS`, `NUMFEUILLE`, `DATE` FROM `malade`, `feuille_evolution` WHERE `feuille_evolution`.`NUMMALADE`= `malade`.`NUMMALADE` AND `malade`.`NUMMALADE`='11'
<!-- -- NUMERO 11 -->
SELECT COUNT(*) FROM `malade` WHERE 1
<!-- -- NUMERO 12 -->
SELECT DISTINCT `medecin`.`NUMMEDECIN`, `NOM_MALADE`, `ADRESSE`,`NOMMED` FROM `malade`, `medecin`,`appartenir`,`suivre`, `dep_medical` WHERE `malade`.`NUMMALADE`=`suivre`.`NUMMALADE` AND `medecin`.`NUMMEDECIN`=`suivre`.`NUMMEDECIN` AND `appartenir`.`NUMMEDECIN`=`medecin`.`NUMMEDECIN` AND `appartenir`.`NUMDEP`=`dep_medical`.`NUMDEP` AND `dep_medical`.`NOMDEP`="dep2"
<!-- -- NUMERO 13 -->
SELECT `NUMMALADE`, `NOM_MALADE`, `ADRESSE` FROM `malade` WHERE `mois`="decembre" OR "fevrier"
<!-- -- NUMERO 14 -->
SELECT c.`NUMCHAMBRE`, `NUMDEP`, `CATEGORIE`, `TYPE`, COUNT(`occuper`.`NUMMALADE`) FROM `chambre`c, `occuper`, `lit` WHERE c.`NUMCHAMBRE`=`lit`.`NUMCHAMBRE`
<!-- -- NUMERO 15 -->
SELECT d.`NUMDEP`, `NOMDEP`, COUNT(`occuper`.`NUMMALADE`) FROM `dep_medical` d, `occuper`, `malade` WHERE d.`NUMDEP`=`malade`.`NUMDEP`
<!-- -- NUMERO 16 -->
SELECT c.`NUMCHAMBRE`, `NUMDEP`, `CATEGORIE`, `TYPE`, COUNT(`occuper`.`NUMMALADE`) FROM `chambre`c, `occuper`, `lit` WHERE c.`NUMCHAMBRE`=`lit`.`NUMCHAMBRE`
<!-- -- NUMERO 17 -->
SELECT m.`NUMMEDECIN`, `NUMSPECIALITE`, `NOMMED`, COUNT(`suivre`.`NUMMALADE`) FROM `medecin` m, `suivre` WHERE m.`NUMMEDECIN`=`suivre`.`NUMMEDECIN`
<!-- -- NUMERO 18 -->
SELECT m.`NUMMALADE`, `NOM_MALADE`,`DATE_NAISS`, c.`NUMCHAMBRE`,`lit`.`NUMLIT` FROM `malade`m,`chambre` c,`lit`, `suivre`, `medecin`, `occuper`,`specialite` WHERE `suivre`.`NUMMEDECIN`=`medecin`.`NUMMEDECIN` AND `suivre`.`NUMMALADE`=m.`NUMMALADE` AND `occuper`.`NUMLIT`=`lit`.`NUMLIT`AND `occuper`.`NUMMALADE`=m.`NUMMALADE` AND c.`NUMCHAMBRE`=`lit`.`NUMCHAMBRE` AND`specialite`.`nomSpecialite`="S2"
<!-- -- NUMERO 19S -->