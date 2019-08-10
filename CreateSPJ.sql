REM     Nom du fichier	: CreateSPJ.SQL
REM     Auteur        	: Elena Smagina
REM     Date de cr�ation: 16/01/2003
REM     Date de modification: 10/08/2019
REM     Fonction      	: Construire la BD SPJ avec 4 tables : S, P, J et SPJ 

PROMPT Effacement des tables S, P, J et SPJ, si elles existent
DROP TABLE SPJ purge;
DROP TABLE J purge;
DROP TABLE S purge;
DROP TABLE P purge;

PAUSE La BD SPJ effac�e. Appuyez sur Enter pour continuer;

PROMPT Cr�ation du sch�ma de la base de donn�es SPJ
PROMPT Cr�ation de la table J (Projets)

CREATE TABLE J (
        J#      	VARCHAR2(5)  CONSTRAINT J_PK_J# PRIMARY KEY,
	JName		VARCHAR2(25) CONSTRAINT J_NN_JName NOT NULL,
        City    	VARCHAR2(30) DEFAULT 'London'
               );
COMMENT ON TABLE 	J IS 'Contient les informations sur des projets';
COMMENT ON COLUMN J.J# IS 'Num�ro du projet';
COMMENT ON COLUMN J.JNAME IS 'Nom du projet';
COMMENT ON COLUMN J.CITY IS 'Ville du projet';

PROMPT Cr�ation de la table S (Fournisseurs)
CREATE TABLE S (
  S#     VARCHAR2(5)  CONSTRAINT S_PK_S# PRIMARY KEY,
  SName	 VARCHAR2(25) CONSTRAINT S_NN_SName NOT NULL,
  Status NUMBER(5)  CONSTRAINT S_CK_Status CHECK (Status BETWEEN 1 AND 1000),
  City   VARCHAR2(30) DEFAULT 'London'
    );
COMMENT ON TABLE S IS 'Contient les informations sur des fournisseurs';
COMMENT ON COLUMN S.S# IS 'Num�ro du fournisseur';
COMMENT ON COLUMN S.SNAME IS 'Nom du fournisseur';
COMMENT ON COLUMN S.STATUS IS 'Capital du fournisseur';
COMMENT ON COLUMN S.CITY IS 'Ville du fournisseur';

PROMPT Cr�ation de la table P (Pi�ces)
CREATE TABLE P (
  P#      VARCHAR2(5)  CONSTRAINT P_PK_P# PRIMARY KEY,
  PName   VARCHAR2(25) CONSTRAINT P_NN_PName NOT NULL,
  Color   VARCHAR2(30) CONSTRAINT P_CK_Color CHECK 
    ( Color IN ('Red', 'Blue', 'Green', 'Yellow', 'Gray', 'White', 'Black')),
  Weight  NUMBER(5,1) CONSTRAINT P_CK_Weight 
    CHECK (Weight BETWEEN 1 AND 100),
  City    VARCHAR2(30) DEFAULT 'London'
               );
COMMENT ON TABLE P IS 'Contient les informations sur des pi�ces';
COMMENT ON COLUMN P.P# IS 'Num�ro de la pi�ce';
COMMENT ON COLUMN P.PNAME IS 'Nom de la pi�ce';
COMMENT ON COLUMN P.COLOR IS 'Capital de la pi�ce';
COMMENT ON COLUMN P.WEIGHT IS 'Poids de la pi�ce';
COMMENT ON COLUMN P.CITY IS 'Ville de la pi�ce';

PROMPT Cr�ation de la table SPJ (Exp�ditions)
CREATE TABLE SPJ (
   S#	VARCHAR2(5) CONSTRAINT SPJ_FK_S# REFERENCES S(S#),
   P#	VARCHAR2(5) CONSTRAINT SPJ_FK_P# REFERENCES P(P#),
   J#	VARCHAR2(5) CONSTRAINT SPJ_FK_J# REFERENCES J(J#),
   Qty	NUMBER(6) CONSTRAINT SPJ_CK_Qty CHECK 
        (Qty BETWEEN 1 AND 10000),
   CONSTRAINT SPJ_PK_S#P#J#    PRIMARY  KEY(S#,P#,J#)
	          );
COMMENT ON TABLE SPJ IS 'Contient les informations sur des exp�ditions';
COMMENT ON COLUMN SPJ.S# IS 'Num�ro du fournisseur';
COMMENT ON COLUMN SPJ.P# IS 'Num�ro de la pi�ce';
COMMENT ON COLUMN SPJ.J# IS 'Num�ro du projet';
COMMENT ON COLUMN SPJ.QTY IS 'Quantit� fournie';

PAUSE La liste des tables de la BD SPJ cr��e. Appuyez sur Enter pour continuer;

PROMPT Affichage des tables cr��es
SELECT * FROM CAT;
PAUSE Appuyez sur Enter pour continuer;

PROMPT Affichage de structure de la table S
DESC S;
PAUSE Appuyez sur Enter pour continuer;

PROMPT Affichage de structure de la table P
DESC P;
PAUSE Appuyez sur Enter pour continuer;

PROMPT Affichage de structure de la table J
DESC J;
PAUSE Appuyez sur Enter pour continuer;

PROMPT Affichage de structure de la table SPJ
DESC SPJ;
PAUSE Appuyez sur Enter pour continuer;

PROMPT Affichage des commentaires sur les tables
SELECT   *   FROM   USER_TAB_COMMENTS;
PAUSE Appuyez sur Enter pour continuer;

PROMPT Affichage des commentaires sur les colonnes des tables
SELECT   *   FROM   USER_COL_COMMENTS;
PAUSE Appuyez sur Enter pour continuer;

PROMPT Affichage des contraintes
COLUMN TABLE_NAME 	FORMAT A20
COLUMN CONSTRAINT_NAME 	FORMAT A15
SELECT   CONSTRAINT_NAME , CONSTRAINT_TYPE, STATUS, DELETE_RULE, TABLE_NAME  FROM   USER_CONSTRAINTS ;   

