<section id="banner">
	<header>
            <h2>Board Games</h2>
            <p>"Just one game, they said, and started to play - that was yesterday."</p>
	</header>
</section>
<header class='major'><h2>Upcoming Games</h2></header>
<div id="future_games">
<?php
    $data = $connection->query("SELECT * FROM future_games");
    while($game = $data->fetch_object()){ 
        echo "<div class='future_game'>"
            ."<div class='future_game_img'>"
                ."<img src='assets/images/".$game->image."' alt='".$game->name."'/>"
            ."</div>"
            ."<div class='future_game_info'>"
                ."<h2>".$game->name."</h2>"
                ."<p>".$game->description."</p>" 
            ."</div>"
        ."</div>";
    }
?>
</div>