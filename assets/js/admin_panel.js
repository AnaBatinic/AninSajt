$(document).ready(function(){

    var userz = $("#userz");
    var future_gamez = $("#future_gamez");
    var gamez = $("#gamez");
    var add_user = $("#add_user");
    var add_future_game = $("#add_future_game");
    var add_game = $("#add_game");

    var users_pane = $("#users_pane");
    var future_games_pane = $("#future_games_pane");
    var games_pane = $("#games_pane");
    var add_user_pane = $("#add_user_pane");
    var add_future_game_pane = $("#add_future_game_pane");
    var add_game_pane = $("#add_game_pane");

    // Display panels

    userz.click(function() {
        if (users_pane.hasClass("hidden_div"))
        {
            users_pane.removeClass("hidden_div");
        }
        else 
        {
            users_pane.addClass("hidden_div");
        }
    });

    future_gamez.click(function() {
        if (future_games_pane.hasClass("hidden_div"))
        {
            future_games_pane.removeClass("hidden_div");
        }
        else 
        {
            future_games_pane.addClass("hidden_div");
        }
    });

    gamez.click(function() {
        if (games_pane.hasClass("hidden_div"))
        {
            games_pane.removeClass("hidden_div");
        }
        else 
        {
            games_pane.addClass("hidden_div");
        }
    });

    add_user.click(function() {
        if (add_user_pane.hasClass("hidden_div"))
        {
            add_user_pane.removeClass("hidden_div");
        }
        else 
        {
            add_user_pane.addClass("hidden_div");
        }
    });

    add_future_game.click(function() {
        if (add_future_game_pane.hasClass("hidden_div"))
        {
            add_future_game_pane.removeClass("hidden_div");
        }
        else 
        {
            add_future_game_pane.addClass("hidden_div");
        }
    });

    add_game.click(function() {
        if (add_game_pane.hasClass("hidden_div"))
        {
            add_game_pane.removeClass("hidden_div");
        }
        else 
        {
            add_game_pane.addClass("hidden_div");
        }
    });

    // Deleting user, future game and game

    var del_user = $(".del_user");
    var del_future_game = $(".del_future_game");
    var del_game = $(".del_game");

    del_user.click(function() {
        var id = $(this).attr("id");
        $.ajax({
            url: "http://localhost/aninsajt/modules/delete.php",
            type: "POST",
            data: { id: id, type: "user" },
            //dataType:"json",
            success: function(data) {
                console.log(data);
            },
            error: function(data) {
                console.log("err");
            }
        });
    });

    del_future_game.click(function() {
        var id = $(this).attr("id");
        $.ajax({
            url: "http://localhost/aninsajt/modules/delete.php",
            type: "POST",
            data: { id: id, type: "future_game" },
            //dataType:"json",
            success: function(data) {
                console.log(data);
            },
            error: function(data) {
                console.log("err");
            }
        });
    });

    del_game.click(function() {
        var id = $(this).attr("id");
        $.ajax({
            url: "http://localhost/aninsajt/modules/delete.php",
            type: "POST",
            data: { id: id, type: "game" },
            //dataType:"json",
            success: function(data) {
                console.log(data);
            },
            error: function(data) {
                console.log("err");
            }
        });
    });
    
});