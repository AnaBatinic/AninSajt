<?php if(isset($_SESSION["user"])): ?>
    <div id="user" class="box">
        <h2>Welcome <?php echo $_SESSION["user"]->username ?></h2>
        <span>Username: <?php echo $_SESSION["user"]->username ?></span>
        <span>Email: <?php echo $_SESSION["user"]->email ?></span>
        <span>First name: <?php echo $_SESSION["user"]->first_name ?></span>
        <span>Last name: <?php echo $_SESSION["user"]->last_name ?></span>

    </div>
<?php endif; ?>