<?php 
include ('modele.class.php'); 
if(isset($_REQUEST['mail_cli']))
{
$unModele = new Modele ();
$resultats = $unModele->mes_commandes ($_REQUEST['mail_cli']);

$tab = array ();
//lister les evenements
foreach ( $resultats as $unRes)
{
	$tab [] = array ("id_cli"=>$unRes['id_cli'],
					 "nom_artc"=>$unRes['nom_artc'],
					 "qte_lignec"=>$unRes['qte_lignec'],
					 "prix_lignec"=>$unRes['prix_lignec']
					);
}
print(json_encode($tab));
}
else{
	print('[]');
}
?>