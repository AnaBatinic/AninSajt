<?php
include_once("config.php");

if (isset($_POST["type"]))
{
    $type = $_POST["type"];
    $id = $_POST["id"];

    if ($type == "user")
    {
        $username = $_POST["username"];
        $first_name = $_POST["first_name"];
        $last_name = $_POST["last_name"];
        $sql = "UPDATE user SET username = '$username', first_name = '$first_name', last_name = '$last_name' WHERE id_u = $id";
        $connection->query($sql);
        header('Location: http://localhost/aninsajt/index.php?page=admin_panel');        
    }
    else if ($type == "future_game")
    {
        $name = $_POST["name"];
        $description = $_POST["description"];
        $image = $_POST["image"];
        $sql = "UPDATE future_games SET name = '$name', description = '$description', image = '$image' WHERE id_fg = $id";
        $connection->query($sql);
        header('Location: http://localhost/aninsajt/index.php?page=admin_panel');    
    }
    else if ($type == "game")
    {
        $name = $_POST["name"];
        $description = $_POST["description"];
        $image = $_POST["image"];
        $price = $_POST["price"];
        $players = $_POST["players"];
        $sql = "UPDATE boardgame SET name = '$name', description = '$description', image = '$image', price = '$price', players = '$players' WHERE id_fg = $id";
        $connection->query($sql);
        header('Location: http://localhost/aninsajt/index.php?page=admin_panel');
    }
}

?>