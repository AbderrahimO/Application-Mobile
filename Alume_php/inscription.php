<?php

if(isset($_REQUEST['']))
{
$unModele = new Modele ();
$resultats = $unModele->insert_user ($_REQUEST['']);

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