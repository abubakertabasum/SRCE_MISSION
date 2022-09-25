-----------------------Creation table GM_REMBOURSEMENT---------------------------------------------------
CREATE TABLE GM_REMBOURSEMENT ( 
  REMB_NUMERO#         VARCHAR2 (9)  NOT NULL, 
  REMB_MATRICULE       VARCHAR2 (8)  NOT NULL, 
  REMB_MISSION         VARCHAR2 (10)  NOT NULL, 
  REMB_PJ              VARCHAR2 (200), 
  REMB_COMPTE          NUMBER        NOT NULL, 
  REMB_SERVICE         VARCHAR2 (10)  NOT NULL, 
  REMB_CENTRECOUT      NUMBER        NOT NULL, 
  REMB_NB              NUMBER        NOT NULL, 
  REMB_VALEURUNITAIRE  NUMBER        NOT NULL, 
  REMB_MONTANT         NUMBER        NOT NULL, 
  REMB_NOM             VARCHAR2 (20)  NOT NULL, 
  REMB_PRENOM          VARCHAR2 (30)  NOT NULL, 
  REMB_OBSERVATION     VARCHAR2 (100), 
  REMB_DATE_CREATE     DATE          NOT NULL, 
  REMB_MACHINE_CREATE  VARCHAR2 (30)  NOT NULL, 
  REMB_USER_CREATE     VARCHAR2 (30)  NOT NULL, 
  REMB_ETAT            VARCHAR2 (1)  NOT NULL, 
  UNIQUE (REMB_NUMERO#,REMB_MATRICULE,REMB_COMPTE), 
  PRIMARY KEY ( REMB_NUMERO#,REMB_MATRICULE,REMB_COMPTE ));
--------------------------------------------------------------------------------------------------------

-----------------------Creation table GM_REVERSEMENT----------------------------------------------------
CREATE TABLE GM_REVERSEMENT ( 
  REVER_NUMERO#         VARCHAR2 (9)  NOT NULL, 
  REVER_MATRICULE       VARCHAR2 (8)  NOT NULL, 
  REVER_MISSION         VARCHAR2 (10)  NOT NULL, 
  REVER_COMPTE          NUMBER        NOT NULL, 
  REVER_SERVICE         VARCHAR2 (10)  NOT NULL, 
  REVER_CENTRECOUT      NUMBER        NOT NULL, 
  REVER_NB              NUMBER        NOT NULL, 
  REVER_VALEURUNITAIRE  NUMBER        NOT NULL, 
  REVER_MONTANT         NUMBER        NOT NULL, 
  REVER_NOM             VARCHAR2 (20)  NOT NULL, 
  REVER_PRENOM          VARCHAR2 (30)  NOT NULL, 
  REVER_OBSERVATION     VARCHAR2 (100), 
  REVER_DATE_CREATE     DATE          NOT NULL, 
  REVER_MACHINE_CREATE  VARCHAR2 (30)  NOT NULL, 
  REVER_USER_CREATE     VARCHAR2 (30)  NOT NULL, 
  REVER_ETAT            VARCHAR2 (1)  NOT NULL, 
  UNIQUE (REVER_NUMERO#,REVER_MATRICULE,REVER_COMPTE), 
  PRIMARY KEY ( REVER_NUMERO#,REVER_MATRICULE,REVER_COMPTE ));
----------------------------------------------------------------------------------------------------------

-------------------------------remboursement privilèges------------------------------
CREATE ROLE SAISIE_REMBOURSEMENT_ROLE;

grant select,insert,update,delete on gm_remboursement to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_accompagnant to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_destination to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_etat to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_fonction to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_lieu_affectation to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_mission to SAISIE_REMBOURSEMENT_ROLE;
grant select on signal to SAISIE_REMBOURSEMENT_ROLE;
grant select on agence to SAISIE_REMBOURSEMENT_ROLE;
grant select on poste to SAISIE_REMBOURSEMENT_ROLE;
grant select,insert,delete on gm_piece_depense to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_vehicule_mission to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_categorie to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_directeur_general to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_incidence_financiere to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_chauffeur to SAISIE_REMBOURSEMENT_ROLE;
grant select on gm_chauffeur_mission to SAISIE_REMBOURSEMENT_ROLE;
------------------------------------------------------------------------------------

-------------------------------reversement privilèges-------------------------------
CREATE ROLE SAISIE_REVERSEMENT_ROLE;

grant select,insert,update,delete on gm_reversement to SAISIE_REVERSEMENT_ROLE;
grant select on gm_accompagnant to SAISIE_REVERSEMENT_ROLE;
grant select on gm_destination to SAISIE_REVERSEMENT_ROLE;
grant select on gm_etat to SAISIE_REVERSEMENT_ROLE;
grant select on gm_fonction to SAISIE_REVERSEMENT_ROLE;
grant select on gm_lieu_affectation to SAISIE_REVERSEMENT_ROLE;
grant select on gm_mission to SAISIE_REVERSEMENT_ROLE;
grant select on signal to SAISIE_REVERSEMENT_ROLE;
grant select on agence to SAISIE_REVERSEMENT_ROLE;
grant select on poste to SAISIE_REVERSEMENT_ROLE;
grant select on gm_piece_depense to SAISIE_REVERSEMENT_ROLE;
grant select on gm_vehicule_mission to SAISIE_REVERSEMENT_ROLE;
grant select on gm_categorie to SAISIE_REVERSEMENT_ROLE;
grant select on gm_directeur_general to SAISIE_REVERSEMENT_ROLE;
grant select on gm_incidence_financiere to SAISIE_REVERSEMENT_ROLE;
grant select on gm_chauffeur to SAISIE_REVERSEMENT_ROLE;
grant select on gm_chauffeur_mission to SAISIE_REVERSEMENT_ROLE;
------------------------------------------------------------------------------------

----------------------------- donner les roles à l'utilisateur FATI-----------------
GRANT SAISIE_REMBOURSEMENT_ROLE, SAISIE_REVERSEMENT_ROLE TO FATI
GRANT SAISIE_REMBOURSEMENT_ROLE, SAISIE_REVERSEMENT_ROLE TO DEV_MISSION_ROLE
------------------------------------------------------------------------------------

---------------------------donner les roles à l'utilisateur TYOUSSOUF -------------
GRANT SAISIE_MISSION_ROLE, CONSULTATION_MISSION_ROLE, PIECE_DEPENSE_ROLE TO TYOUSSOUF 
GRANT EDITION_ETAT_ROLE, SAISIE_REMBOURSEMENT_ROLE, SAISIE_REVERSEMENT_ROLE TO TYOUSSOUF
--------------------------------------------------------------------------------------

