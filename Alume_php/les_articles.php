<?php 
include("modele.class.php");



$unModele = new Modele ();
$resultats = $unModele->lesArticles();

$tab = array ();
//lister les evenements
foreach ( $resultats as $unRes)
{
	$tab [] = array ("img_art"=>$unRes['img_art'],
					 "nom_art"=>$unRes['nom_art'],
					 "prix_art"=>$unRes['prix_art']
					 );
}
print(json_encode($tab));

?>