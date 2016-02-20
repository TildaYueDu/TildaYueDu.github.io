<html>
<head><title>form php</title></head>
<body>
<?php

$FirstName = $_POST['fname'];
$LastName = $_POST['lname'];
$Phonenumber= $_POST['phone'];
$Email = $_POST['email'];
$comments = $_POST['comments'];


$db = new PDO('mysql:host=localhost; dbname=sushiform; charset=utf8', 'root', 'root');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);


$sql ="INSERT INTO sushiform ( `fn`,`ln`,`pn`,`e`,`comment`)
VALUES ( :FirstName, :LastName, :Phonenumber, :Email, :comments)";

$stmt = $db ->prepare($sql);

$stmt->bindParam(':FirstName', $FirstName);
$stmt->bindParam(':LastName', $LastName);
$stmt->bindParam(':Phonenumber', $Phonenumber);
$stmt->bindParam(':Email', $Email);
$stmt->bindParam(':comments', $comments);



$stmt->execute();



echo "First name is: <b>". $_POST['fname']."</b>";
echo "<br/>";

echo "	Last name is: <b>". $_POST['lname']."</b>";
echo "<br/>";

echo "	Phonenumber is: <b>". $_POST['phone']."</b>";
echo "<br/>";

echo "E-mail address is: <b>". $_POST['email']."</b>";
echo "<br/>";


echo "Your comments are: <b>". $_POST['comments']."</b>";
echo "<br/>";




?>
</body>
</html>
