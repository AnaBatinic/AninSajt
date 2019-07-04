<script src="assets/js/register.js"></script>
<?php
    if(isset($_SESSION["errors"]))
    {
        foreach($_SESSION["errors"] as $error)
        {
            echo $error."</br>";
        }
    }
    unset($_SESSION["errors"]);
?>
<div id="register_form">
    <h1>Register</h1>
    <br/>
    <form action="modules/register.php" method="POST" onsubmit="return process()">
        <div class="form-group">
            <label for="Email">Email address</label>
            <input type="email" class="form-control" id="register_email" name="register_email" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="Username">Username</label>
            <input type="text" class="form-control" id="register_username" name="register_username" aria-describedby="usernameHelp" placeholder="Enter username">   
        </div>
        <div class="form-group">
            <label for="FirstName">First Name</label>
            <input type="text" class="form-control" id="register_first_name" name="register_first_name" aria-describedby="firstNameHelp" placeholder="Enter first name">   
        </div>
        <div class="form-group">
            <label for="FirstName">Last Name</label>
            <input type="text" class="form-control" id="register_last_name" name="register_last_name" aria-describedby="lastNameHelp" placeholder="Enter last Name">   
        </div>
        <div class="form-group">
            <label for="Password">Password</label>
            <input type="password" class="form-control" id="register_password" name="register_password" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="Password">Repeat Password</label>
            <input type="password" class="form-control" id="re_register_password" name="re_register_password" placeholder="Repeat Password">
        </div>
        <button type="submit" id="register_button" name="register_button" class="btn btn-primary">Sign Up</button>
    </form>
    <div id="reg_errors" style="height: 100px; color:red;">
        <!--
            Errors
        -->
    </div>
</div>