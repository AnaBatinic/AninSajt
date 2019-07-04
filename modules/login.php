<?php
include_once("config.php");
session_start();
if(isset($_POST['login_button']))
{
    $errors = [];
    $email = $_POST['login_email'];
    $password = $_POST['login_password'];
    $rePassword = "/^([\d]|[\w]){2,20}$/";
    if(!preg_match($rePassword, $password)){
        $errors[] = "Error in password";
    }
    $encpassword = sha1($password);
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        $errors[] = "Error in email";
    }
    if(count($errors) > 0){
        $_SESSION['errors'] = $errors;
        header("Location: ../index.php?page=login");
    }

    $stmt = $connection->prepare("SELECT * FROM user WHERE email = ? AND password = ?");
    if ($stmt)
    {
        $stmt->bind_param("ss", $email, $encpassword);
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        $user = $result->fetch_object();
        if ($user)
        {
            $_SESSION['user'] = $user;
            header("Location: ../index.php?page=content");
        }
        else
        {
            $_SESSION['errors'] = ["Wrong email or password"];
            header("Location: ../index.php?page=login");
        }
    }
}
?>