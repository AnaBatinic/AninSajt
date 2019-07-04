<div id="search_and_sort">
    <form action="" method="post">
        <button type="button" id="name_asc" class="btn btn-danger">Name ASC</button>
        <button type="button" id="name_desc" class="btn btn-danger">Name DESC</button>
        <input type="text" id="name_search"/>
        <input type="button" id="search_by_name" class="btn btn-danger" value="Search"/>
    </form>
</div>
<div id="games">

    <?php
        $result = $connection->query("SELECT * FROM boardgame");
        if ($result) { 
            while($obj = $result->fetch_object()){ 
                echo "<div class='indiv_game'><div class='game_image'><a href='?game=".$obj->id_bg."'><img src='assets/images/"
                .$obj->image."' alt='".$obj->name."'/></a></div><div class='game_info'>"
                ."<a href='?game=".$obj->id_bg."'>".$obj->name."</a><span>".$obj->price."&euro;</span>"
                ."</div></div>";
            } 
        } 
        $result->close(); 
    ?>
</div>
<script src="assets/js/games.js"></script>