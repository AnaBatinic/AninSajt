<?php
include_once("config.php");
session_start();

if (isset($_POST["id"]))
{
    $id = $_POST["id"];
    $type = $_POST["type"];

    if ($type == "user")
    {
        $sql = "DELETE FROM user WHERE id_u = $id";
        if ($connection->query($sql) === TRUE)
        {
            echo "Successfully removed user with id $id";
        }
    }
    else if ($type == "future_game")
    {
        $sql = "DELETE FROM future_games WHERE id_fg = $id";
        if ($connection->query($sql) === TRUE)
        {
            echo "Successfully removed future game with id $id";
        }
    }
    else if ($type == "game")
    {
        $sql = "DELETE FROM boardgame WHERE id_bg = $id";
        if ($connection->query($sql) === TRUE)
        {
            echo "Successfully removed boardgame with id $id";
        }
    }
}