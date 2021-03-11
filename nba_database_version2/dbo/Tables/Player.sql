CREATE TABLE [dbo].[Player]
(
   Season    INTEGER  NOT NULL
  ,Player    VARCHAR(34) NOT NULL
  ,Pos       VARCHAR(5) NOT NULL
  ,Age       INTEGER  NOT NULL
  ,Tm        VARCHAR(3) NOT NULL
  ,G         INTEGER  NOT NULL
  ,MP        INTEGER  NOT NULL
  ,PER       NUMERIC(5,1)
  ,TS        NUMERIC(5,3)
  ,ThrPtrate NUMERIC(5,3)
  ,FTr       NUMERIC(5,3)
  ,ORB       NUMERIC(4,1)
  ,DRB       NUMERIC(4,1)
  ,TRB       NUMERIC(4,1)
  ,AST       NUMERIC(4,1)
  ,STL       NUMERIC(4,1)
  ,BLK       NUMERIC(4,1)
  ,TOV       NUMERIC(4,1)
  ,USG       NUMERIC(4,1)
  ,OWS       NUMERIC(4,1) NOT NULL
  ,DWS       NUMERIC(4,1) NOT NULL
  ,WS        NUMERIC(4,1) NOT NULL
  ,WS48      NUMERIC(6,3)
  ,OBPM      NUMERIC(5,1) NOT NULL
  ,DBPM      NUMERIC(5,1) NOT NULL
  ,BPM       NUMERIC(5,1) NOT NULL
  ,VORP      NUMERIC(4,1) NOT NULL
  primary key (Season, Tm, Player)
)
