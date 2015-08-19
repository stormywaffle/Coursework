<!DOCTYPE HTML>
<HTML>
<head>
<title>My Form</title>
<meta charset='utf-8'/>
</head>
<body>
<?php
$name = $_POST['name'];
$siblings = $_POST['siblings'];
$city = $_POST['city'];
$car = $_POST['car'];
$month = $_POST['month'];

echo 'Hi ' . $name .'!<br /><br />';
echo 'Welcome to your dream vacation! Here you can get away from your ' . $siblings . ' siblings and enjoy the city of ' . $city . '. You can also drive along with your spouse in your brand new ' . $car . ' and enjoy the weather because it is the month of ' . $month .'!<br /> <br />';

echo 'You deserve this ' . $name . '!<br /><br /><br />';
echo 'Have a happy vacation!';
?>
</body>
</HTML>
