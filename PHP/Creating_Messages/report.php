<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Report an Abduction</title>
</head>
<body>
  <h2>Aliens Abducted Me - Report an Abduction</h2>

<?php
  $name = $_GET['firstname'] . ' ' . $_GET['lastname'];
  $when_it_happened = $_GET['whenithappened'];
  $how_long = $_GET['howlong'];
  $how_many = $_GET['howmany'];
  $alien_description = $_GET['aliendescription'];
  $what_they_did = $_GET['whattheydid'];
  $fang_spotted = $_GET['fangspotted'];
  $email = $_GET['email'];
  $other = $_GET['other'];

  $subject = 'Aliens Abducted Me - Abduction Report';
  $msg = "$name was abducted 
  $when_it_happened and was gone for $how_long.\n" .
    "Number of aliens: $how_many\n" .
    "Alien description: $alien_description\n" .
    "What they did: $what_they_did\n" .
    "Fang spotted: $fang_spotted\n" .
    "Other comments: $other";

//  mail($to, $subject, $msg, 'From:' . $email);

  echo 'Thanks for submitting the form '. $name. '!<br />';
  echo 'You were abducted ' . $when_it_happened;
  echo ' and were gone for ' . $how_long . '<br />';
  echo 'Number of aliens: ' . $how_many . '<br />';
  echo 'Describe them: ' . $alien_description . '<br />';
  echo 'The aliens did this: ' . $what_they_did . '<br />';
  echo 'Was Fang there? ' . $fang_spotted . '<br />';
  echo 'Other comments: ' . $other . '<br />';
  echo 'Your email address is ' . $email;
?>

</body>
</html>