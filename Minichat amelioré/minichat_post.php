<?php
setcookie('pseudo', $_POST['pseudo'], time() + 365*24*3600, null, null, false, true);
?>

<?php
// Connexion à la bdd
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=minichatv2;charset=utf8', 'root', 'root');
}
catch(Exception $e)
{
    die('Erreur : '.$e->getMessage());
}

echo $_POST['pseudo'];

// Insertion du message à l'aide d'une requête préparée
$req = $bdd->prepare('INSERT INTO minichatv2 (date_post, pseudo, message) VALUES(NOW(), ?, ?)');
$req->execute(array($_POST['pseudo'], $_POST['message']));

// Redirection du visiteur vers la page du minichat
header('Location: minichat.php');
?>


