<!DOCTYPE html>
<html>
    <head>
        <title>Board Games</title>
        <meta charset="UTF-8">
        <meta name="author" content="Ana Batinic"/>
        <meta name="keywords" content="Board Games, games, fun"/>
        <meta name="description" content="Site about board games"/>
		<link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" rel="stylesheet" type='text/css'>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <section id="header">
            <h1>
                <a href="index.php">
                    <img src="assets/images/logo.png" alt="Board Games"/>
                </a>
            </h1>
        </section>
        <header id="navigation">
            <ul>
                <li><a href="?page=index">Home</a></li>
                <li><a href="?page=games">Games</a></li>
                <li><a href="?page=contact">Contact</a></li>
                <?php if (isset($_SESSION["user"])): ?>
                    <li><a href="?page=user"><?php echo $_SESSION["user"]->username ?></a></li>
                    <li><a href="modules/logout.php">Logout</a></li>
                    <?php if ($_SESSION["user"]->role == 1): ?>
                        <li><a href="?page=admin_panel">Admin Panel</a></li>
                    <?php endif ?>
                <?php else: ?>
                <li><a href="?page=login">Login</a></li>
                <li><a href="?page=register">Register</a></li>
                <?php endif; ?>
            </ul>
        </header>
        <hr/>
        <div id="background-holder">
            <div id="main_section">