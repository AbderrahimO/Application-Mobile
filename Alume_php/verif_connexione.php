<?php
include ('modele.class.php') ;
if(isset($_REQUEST['mail_cli']) and isset($_REQUEST['mdp_cli']))
{
	//on récupere l'mail et le mdp
	$email = $_REQUEST['mail_cli'];
	$mdp = $_REQUEST['mdp_cli'];
	//on créer un modele 
	$unModele = new Modele ();
	//a l'aide la fonction verif_connexion on renvoi la connexion
	$resultat = $unModele->verif_connexione ($email, $mdp);
	if($resultat == null )
	{
		
			print('[]');
	}
	else {
		// on envoie tout dans un tableau json
		$tab [] = array ("nb"=>$resultat['nb'],
						 "nom_cli"=>$resultat['nom_cli'],
						 "prenom_cli"=>$resultat['prenom_cli']);
		//var_dump($tab);
		print(json_encode($tab));
	}
}
else
{
	print('[]');
}

?>