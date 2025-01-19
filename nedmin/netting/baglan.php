<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

try {
    $db = new PDO("mysql:host=localhost;dbname=projectphoto;charset=utf8", "root", "root");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   // echo "Connected successfully";
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    die();
}
?>