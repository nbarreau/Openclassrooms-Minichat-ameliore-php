<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Mini-chat V2</title>
    </head>
    <body>
    
        <form action="minichat_post.php" method="post">
            <p>
            <label for="pseudo">Pseudo</label> : <input type="text" name="pseudo" id="pseudo" value="<?php if (isset($_COOKIE['pseudo'])) { echo htmlspecialchars($_COOKIE['pseudo']); } ?>"/><br />
            <label for="message">Message</label> :  <input type="text" name="message" id="message" /><br />

            <input type="submit" value="Envoyer" />
        </p>
        </form>

        <?php
        // Connexion à la base de données
        try
        {
            $bdd = new PDO('mysql:host=localhost;dbname=minichatv2;charset=utf8', 'root', 'root'); $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        catch(Exception $e)
        {
            die('Erreur : '.$e->getMessage());
        }

        setlocale(LC_TIME, "fr_FR");

        // Récupération des 10 derniers messages
        $reponse = $bdd->query('SELECT DATE_FORMAT(date_post, \'Le %d/%m/%Y à %Hh%imin%ss\')AS date_post_fr, pseudo, message FROM minichatv2');

        // Affichage des messages
        while ($donnees = $reponse->fetch())
        {
            echo ' <p>' . '' . $donnees['date_post_fr'] . ' : ' . '<strong>' . htmlspecialchars($donnees['pseudo']) . '</strong> : ' . htmlspecialchars($donnees['message']) . '</p>';
        }

        $reponse->closeCursor();
        ?>

       
    </body>
</html>