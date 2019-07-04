<?php
    if (isset($_GET["id"]) && isset($_GET["type"]))
    {
        $type = $_GET["type"];
        $id = $_GET["id"];

        if ($type == 1)
        {
            $result = $connection->query("SELECT * FROM user WHERE id_u = $id");
            $user = $result->fetch_object();
            echo "<form action='http://localhost/aninsajt/modules/modify.php' method='post'>"
                ."<label>Username</label><input type='text' name='username' value='$user->username'/><br/>"
                ."<label>First Name</label><input type='text' name='first_name' value='$user->first_name'/><br/>"
                ."<label>Last Name</label><input type='text' name='last_name' value='$user->last_name'/><br/>"
                ."<input type='hidden' value='user' name='type'/>"
                ."<input type='hidden' value='$id' name='id'/>"
                ."<input type='submit' value='Change'/>"
            ."</form>";
        }
        else if ($type == 2)
        {
            $result = $connection->query("SELECT * FROM future_games WHERE id_fg = $id");
            $future_game = $result->fetch_object();
            echo "<form action='http://localhost/aninsajt/modules/modify.php' method='post'>"
                ."<label>Name</label><input type='text' name='name' value='$future_game->name'/><br/>"
                ."<label>Description</label><textarea name='name' value='$future_game->description'></textarea><br/>"
                ."<label>Image</label><input type='text' name='image' value='$future_game->image'/><br/>"
                ."<input type='hidden' value='future_game' name='type'/>"
                ."<input type='hidden' value='$id' name='id'/>"
                ."<input type='submit' value='Change'/>"
            ."</form>";
        }
        else if ($type == 3)
        {
            $result = $connection->query("SELECT * FROM boardgame WHERE id_bg = $id");
            $game = $result->fetch_object();
            echo "<form action='http://localhost/aninsajt/modules/modify.php' method='post'>"
                ."<label>Name</label><input type='text' name='name' value='$game->name'/><br/>"
                ."<label>Description</label><textarea name='name' value='$game->description'></textarea><br/>"
                ."<label>Image</label><input type='text' name='image' value='$game->image'/><br/>"
                ."<label>Price</label><input type='text' name='price' value='$game->price'/><br/>"
                ."<label>Image</label><input type='text' name='players' value='$game->players'/><br/>"
                ."<input type='hidden' value='game' name='type'/>"
                ."<input type='hidden' value='$id' name='id'/>"
                ."<input type='submit' value='Change'/>"
            ."</form>";
        }
    }
?>