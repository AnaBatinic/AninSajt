<div id="game_by_id">
    <?php
        $id = $_GET["game"];
        $data = $connection->query("SELECT * FROM boardgame WHERE id_bg = ".$id.";");
        $game = $data->fetch_object();
        echo "<div class='img_and_info'>"
                ."<div class='one_game_img'><img src='assets/images/".$game->image."'/></div>"
                ."<div class='one_game_info'><h3>".$game->name."</h3>"
                    ."<span class='game_span'>Party and Family board game</span><br/>"
                    ."<h4>".$game->price."&euro;</h4>"
                    ."<span class='one_game_span'>Number of players: ".$game->players."</span>"
                ."</div>"
            ."</div>"
            ."<div class='one_game_desc'>"
                ."<h2>".$game->name."</h2>"
                ."<p>".$game->description."</p>"
            ."</div>";
    ?>
</div>