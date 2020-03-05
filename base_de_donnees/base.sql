drop table if exists Apprenant;

drop table if exists Tuteur;

/*==============================================================*/
/* Table : Apprenant                                            */
/*==============================================================*/
create table Apprenant
(
   idApprenant          int not null auto_increment,
   idTuteur             int not null,
   nom                  varchar(50),
   prenom               varchar(50),
   dateDeNaissance      datetime,
   lieuDeNaissance      varchar(50),
   genre                varchar(1),
   villeD_origine       varchar(100),
   etablissementD_origine varchar(100),
   formationD_origine   varchar(100),
   telephone            int,
   email                varchar(100),
   photo                TINYBLOB(1),
   primary key (idApprenant)
);

/*==============================================================*/
/* Table : Tuteur                                               */
/*==============================================================*/
create table Tuteur
(
   idTuteur             int not null auto_increment,
   nom                  varchar(50),
   prenom               varchar(50),
   profession           varchar(50),
   numeroDeTelephone    int,
   primary key (idTuteur),
   key AK_Identifiant_1 (idTuteur)
);

alter table Apprenant add constraint FK_association1 foreign key (idTuteur)
      references Tuteur (idTuteur) on delete restrict on update restrict;
