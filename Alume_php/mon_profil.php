<?php 
include ('modele.class.php'); 
if(isset($_REQUEST['mail_cli']))
{
$unModele = new Modele ();
$resultat = $unModele->mon_profil ($_REQUEST['mail_cli']);

//lister les evenements
$tab [] = array ("id_cli"=>$resultat['id_cli'],
					 "nom_cli"=>$resultat['nom_cli'],
					 "prenom_cli"=>$resultat['prenom_cli'],
					 "mail_cli"=>$resultat['mail_cli'],
					 "mdp_cli"=>$resultat['mdp_cli']
					);


print(json_encode($tab));

}

else{
	print('[]');
}
?>