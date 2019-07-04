<?php
    if(isset($_SESSION['success']))
    {
        echo $_SESSION['success'];
    }
    unset($_SESSION['success']);
?>
<script src="assets/js/login.js"></script>
<div id="login_form">
    <?php
    if(isset($_SESSION['user'])):?>
        <h3>Username:<?= $_SESSION['user']->username; ?></h3>
        <h3>Email: <?= $_SESSION['user']->email; ?></h3>
    <?php else: ?>
    <h1>Login</h1>
    <br/>
    <form action="modules/login.php" method="POST" onsubmit="return process()">
        <div class="form-group">
            <label for="Email">Email address</label>
            <input type="email" class="form-control" id="login_email" name="login_email" aria-describedby="emailHelp" placeholder="Enter email">
        </div>
        <div class="form-group">
            <label for="Password">Password</label>
            <input type="password" class="form-control" id="login_password" name="login_password" placeholder="Password">
        </div>
        <button type="submit" id="login_button" name="login_button" class="btn btn-primary">Log In</button>
    </form>
    <div id="log_errors" style="height: 100px; color:red;">
    </div>
<?php endif;?>
<?php
    if(isset($_SESSION["errors"]))
    {
        foreach ($_SESSION["errors"] as $error)
        {
            echo $error."<br/>";
        }
        unset($_SESSION['errors']);
    }
?>
</div>