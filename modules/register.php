<?php
include_once("config.php");
session_start();
if(isset($_POST['register_button']))
{
    $errors = [];
    $email = $_POST['register_email'];
    $password = $_POST['register_password'];
    $rePassword = "/^([\d]|[\w]){2,50}$/";
    $repeat_password = $_POST['re_register_password'];
    if(!preg_match($rePassword, $password)){
        $errors[] = "Error in password";
    }
    if($repeat_password != $password){
        $errors[] = "Passwords do not match";
    }
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        $errors[] = "Error in email";
    }
    $username = $_POST['register_username'];
    $reUsername = "/^([\d]|[\w]){2,20}$/";
    if(!preg_match($reUsername, $username)){
        $errors[] = "Error in username";
    }

    $firstName = $_POST['register_first_name'];
    $reFirstname = "/^([\d]|[\w]){2,20}$/";
    //here
    if(!preg_match($reFirstname, $firstName)){
        $errors[] = "Error in first name";
    }

    $lastName = $_POST['register_last_name'];
    $reLastname = "/^([\d]|[\w]){2,20}$/";
    if(!preg_match($reLastname, $lastName)){
        $errors[] = "Error in last name";
    }

    if(count($errors) > 0){
        $_SESSION['errors'] = $errors;
        header("Location: ../index.php?page=register");
    }

    $password = sha1($password);
    
    $stmt = $connection->prepare("INSERT INTO user(username, email, first_name, last_name, password, role, status, token) VALUES (?,?,?,?,?,0,0,0)");
    if ($stmt)
    {
        $stmt->bind_param("sssss", $username, $email, $firstName, $lastName, $password);

        $stmt->execute();
        $stmt->close();
    
        $_SESSION['success'] = "You have registered successfully, you can log in now";
        header("Location: ../index.php?page=login");
    }
    else 
    {
        $_SESSION['errors'] = ["Could not register, try again"];
        header("Location: ../index.php?page=register");
    }
}
?>