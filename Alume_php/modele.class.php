<?php 


class Modele {

private $unPdo ; 

public function __construct ()
{

	$this->unPdo = null ; 

try {

	$this->unPdo = new PDO ("mysql:host=localhost;dbname=alume", "root", "" );
	}
catch(PDOexception $exp) {

	echo " Erreur de la connexion au serveur" ; 

	}	

}

public function verif_connexione ($email, $mdp)
{

	if($this->unPdo !=null)
	{

	$req = "select count(*) as nb, nom_cli, prenom_cli from client where mail_cli = :mail_cli and mdp_cli = :mdp_cli group by id_cli; ";
	$donnees = array(":mail_cli"=>$email, ":mdp_cli"=>sha1($mdp));
	//var_dump($donnees);
	$select = $this->unPdo->prepare ($req);
	$select->execute($donnees);
	return $select->fetch();

	} else {

		return null;
	}

}

public function mes_commandes($mail_cli)
	{
		if($this->unPdo !=null)
		{
			$requete = "select * from mescommandes where mail_cli = :mail_cli ;";
			$donnees = array(":mail_cli"=>$mail_cli);
			$select = $this->unPdo->prepare ($requete);
			$select ->execute($donnees);
			return $select->fetchAll();
		}
		else
		{
			return null ; 
		}
	}

public function mon_profil ($mail_cli)
	{
		if($this->unPdo !=null)
		{
			$requete = "select * from client where mail_cli = :mail_cli ;" ;
			$donnees = array(":mail_cli"=>$mail_cli);
			$select = $this->unPdo->prepare ($requete);
			$select ->execute($donnees);
			return $select->fetch();
		}
		else
		{
			return null ; 
		}
	}

	public function updateUser($mail_cli, $mdp_cli, $prenom_cli, $nom_cli)
	{
		if($this->unPdo !=null)
		{
			$requete = "update utilisateur set mdp_cli= :mdp_cli, nom_cli= :nom_cli, prenom_cli = :prenom_cli where mail_cli = :mail_cli;";
			$donnees = array(":mail_cli"=>$mail_cli,
								":mdp_cli"=>$mdp_cli,
								":nom_cli"=>$nom_cli,
								":prenom_cli"=>$prenom_cli
							);
			$update = $this->unPdo->prepare ($requete);
			$update ->execute($donnees);
	
		}
	
	}

	public function lesArticles ()
	{
		if($this->unPdo !=null)
		{
			$requete = "select img_art, nom_art,prix_art from article;"; 
			
			$select = $this->unPdo->prepare($requete);
			$select ->execute();
			return $select->fetchAll(); 
		}
	}

	public function setTable ($uneTable)
		{
			$this->table = $uneTable ;
		}

			public function insert_user ($tab)
			{
				if($this->pdo !=null)
				{
						$donnes =array();
						$valeurs =array();
						foreach ($tab as $cle => $valeur){
							$valeurs[] =":".$cle; // donnees parametre
							$donnees[":".$cle] = $valeur ;

						}
						$chaineDonnees = implode(",", $valeurs);

						$requete = "insert into client
						values (null, ".$chaineDonnees.");";
						$insert = $this->pdo->prepare($requete);
						$insert->execute($donnees);
				}
				else
				{
					return null;
				}
			}


}



 ?>