<?php
    session_start();
    include_once("modules/config.php");
    include_once("views/header.php");
    if (isset($_GET["page"])) {
        $page = $_GET["page"];
        switch ($page) {
            case "index":
            case "content":
                include "views/content.php";
                break;
            case "games":
                include "views/games.php";
                break;
            case "contact":
                include "views/contact.php";
                break;
            case "user":
                include "views/user.php";
                break;
            case "login":
                include "views/login.php";
                break;
            case "register":
                include "views/register.php";
                break;
            case "admin_panel":
                include "views/admin/admin_panel.php";
                break;
            case "edit":
                include "views/admin/edit.php";
                break;
            default:
                include "views/content.php";
                break;
        }
    }
    elseif (isset($_GET["game"])) {
        include "views/game.php";
    }
    else
        include "views/content.php";
    include_once("views/footer.php");
?>