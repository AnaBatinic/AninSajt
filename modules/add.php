<?php
include_once("config.php");

if (isset($_POST["type"]))
{
    $type = $_POST["type"];

    if ($type == "user")
    {
        $username = $_POST["username"];
        $email = $_POST["email"];
        $first_name = $_POST["first_name"];
        $last_name = $_POST["last_name"];
        $password = $_POST["password"];
        $password = sha1($password);
        $role = intval($_POST["role"]);
        
        $sql = "INSERT INTO user (username, email, first_name, last_name, password, role, status, token) VALUES ('$username','$email','$first_name','$last_name','$password',$role,0,0)"; 
        $connection->query($sql);
        header('Location: http://localhost/aninsajt/index.php?page=admin_panel');
    }
    else if ($type == "future_game")
    {
        $name = $_POST["name"];
        $description = $_POST["description"];
        $image = $_POST["image"];

        $sql = "INSERT INTO future_games (name, description, image) VALUES ('$name', '$description', '$image')";
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

        $sql = "INSERT INTO boardgame (name, description, image, price, players) VALUES ('$name', '$description', '$image', '$price', '$players')";
        $connection->query($sql);
        header('Location: http://localhost/aninsajt/index.php?page=admin_panel');
    }
}
?>