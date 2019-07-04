$(document).ready(function() {
    
    var output = $("#games");
    var text = "";

    var name_asc = $("#name_asc");
    var name_desc = $("#name_desc");
    var search_by_name = $("#search_by_name");
    
    name_asc.click(function() {
        $.ajax({
            url: "http://localhost/aninsajt/modules/sorted.php",
            type: "POST",
            data: { order: "asc" },
            //dataType:"json",
            success: function(data) {
                //console.log(data);
                /*
                for (var i = 0; i < data.length; i++)
                {
                    text += "<div class='indiv_game'><div class='game_image'><a href='?game="+data[i]->id_bg."'><img src='assets/images/"
                    .$obj->image."' alt='".$obj->name."'/></a></div><div class='game_info'>"
                    ."<a href='?game=".$obj->id_bg."'>".$obj->name."</a><span>".$obj->price."&euro;</span>"
                    ."</div></div>";
                }*/
                output.html(data);
            },
            error: function(data) {
                console.log(data);
            }
        });
    });

    name_desc.click(function() {
        $.ajax({
            url: "http://localhost/aninsajt/modules/sorted.php",
            type: "POST",
            data: { order: "desc" },
            //dataType:"json",
            success: function(data) {
                //console.log(data);
                /*
                for (var i = 0; i < data.length; i++)
                {
                    text += "<div class='indiv_game'><div class='game_image'><a href='?game="+data[i]->id_bg."'><img src='assets/images/"
                    .$obj->image."' alt='".$obj->name."'/></a></div><div class='game_info'>"
                    ."<a href='?game=".$obj->id_bg."'>".$obj->name."</a><span>".$obj->price."&euro;</span>"
                    ."</div></div>";
                }*/
                output.html(data);
            },
            error: function(data) {
                console.log(data);
            }
        });
    });

    search_by_name.click(function() {
        var name = $("#name_search").val();
        $.ajax({
            url: "http://localhost/aninsajt/modules/search.php",
            type: "POST",
            data: { name: name },
            //dataType:"json",
            success: function(data) {
                //console.log(data);
                /*
                for (var i = 0; i < data.length; i++)
                {
                    text += "<div class='indiv_game'><div class='game_image'><a href='?game="+data[i]->id_bg."'><img src='assets/images/"
                    .$obj->image."' alt='".$obj->name."'/></a></div><div class='game_info'>"
                    ."<a href='?game=".$obj->id_bg."'>".$obj->name."</a><span>".$obj->price."&euro;</span>"
                    ."</div></div>";
                }*/
                output.html(data);
            },
            error: function(data) {
                console.log(data);
            }
        });
    });

});