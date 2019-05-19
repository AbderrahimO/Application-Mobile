<?php 
include ('modele.class.php'); 
if(isset($_REQUEST['mail_cli'])and isset($_REQUEST['mdp_cli'])
and isset($_REQUEST['prenom_cli']) and isset($_REQUEST['nom_cli']))
{
$unModele = new Modele ();
$unModele->updateUser ($_REQUEST['mail_cli'], $_REQUEST['mdp_cli'], $_REQUEST['prenom_cli'], $_REQUEST['nom_cli']);

print ('[{"confirm":"1"}]');
}
else{
	print('[{"confirm":"0"}]');
}
?>