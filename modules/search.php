<?php
include_once("config.php");
session_start();
//header('Content-Type: application/json');

if (isset($_POST["name"]))
{
    //$order = $_POST["order"];
    $name = $_POST["name"];
    $result = "";
    $rows = array();
    $result = $connection->query("SELECT * FROM boardgame WHERE name LIKE '%".$name."%'");
    $response = "";

    while ($row = $result->fetch_object())
    {
        $response = $response."<div class='indiv_game'><div class='game_image'><a href='?game=".$row->id_bg."'><img src='assets/images/"
                .$row->image."' alt='".$row->name."'/></a></div><div class='game_info'>"
                ."<a href='?game=".$row->id_bg."'>".$row->name."</a><span>".$row->price."&euro;</span>"
                ."</div></div>";
    }
    
        
    //header('Content-type: application/json');
    
    //$out = json_encode($rows[0]);
    //var_dump($rows);
    echo $response;
}
?>