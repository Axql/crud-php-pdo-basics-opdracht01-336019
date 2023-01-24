<?php
require('config.php');

$dsn = "mysql:host=$dbHost;dbname=$dbName;charset=UTF8";

try{
    $pdo = new PDO($dsn, $dbUser, $dbPass);
    if($pdo)
    {
        echo " er is verbinding gemaakt";
    }
} catch (PDOException $e)
{
    $e->getMessage();
}
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    try {
        // Maak een update query voor het updaten van een record
        $sql = "UPDATE Persoon
                SET Voornaam = :Voornaam,
                    Tussenvoegsel = :Tussenvoegsel,
                    Achternaam = :Achternaam
                WHERE Id = :Id";

        // Roep de prepare-method aan van het PDO-object $pdo
        $statement = $pdo->prepare($sql);

        // We moeten de placeholders een waarde geven in de sql-query
        $statement->bindValue(':Id', $_POST['Id'], PDO::PARAM_INT);
        $statement->bindValue(':Voornaam', $_POST['voornaam'], PDO::PARAM_STR);
        $statement->bindValue(':Tussenvoegsel', $_POST['infix'], PDO::PARAM_STR);
        $statement->bindValue(':Achternaam', $_POST['lastname'], PDO::PARAM_STR);

        // We gaan de query uitvoeren op de mysql-server
        $statement->execute();

        echo "Het record is geupdate";
        header("Refresh:3; read.php");

    } catch(PDOException $e) {
        echo "Het record is niet geupdate";
        header("Refresh:3; read.php");
    }
    exit();
}

$sql = "SELECT * FROM persoon WHERE Id = :Id";


$statement =$pdo->prepare($sql);
$statement->bindValue(':Id', $_GET['Id'], PDO::PARAM_INT);
$statement->execute();
$result = $statement->fetch(PDO::FETCH_OBJ);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
</head>
<body>
    <h1>PDO CRUD 1</h1>

    <form action="update.php" method="post"> 
          <label for="firstname">voornaam </label> <br> 
          <input type="text" id="voornaam" name="voornaam" value="<?php echo $result->voornaam; ?>"><br>

          <label for="infix">tussenvoegsel </label><br>
          <input type="text" id="infix" name="infix" value="<?php echo $result->tussenvoegsel; ?>"><br>
          
          <label for="lastname">achternaam </label><br> 
          <input type="text" id="lastname" name="lastname" value="<?php echo $result->achternaam; ?>"> <br> 
          <br>

          <input type="hidden" name="Id" value="<?php echo $result->Id; ?>">
          <input type="submit" value="Submit" class="button">
    </form>
</body>
</html>