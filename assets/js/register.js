function process()
{
    var email = document.getElementById("register_email").value;
    var username = document.getElementById("register_username").value;
    var firstname = document.getElementById("register_first_name").value;
    var lastname = document.getElementById("register_last_name").value;
    var password = document.getElementById("register_password").value;
    var repassword = document.getElementById("re_register_password").value;
    var reg_email = /^[\w]{3,35}(@gmail.com|@yahoo.com)$/;
    var reg_username = /^[\w]{3,20}$/;
    var reg_firstname = /^[A-Z][a-z]{3,20}$/;
    var reg_lastname = /^[A-Z][a-z]{3,20}$/;
    var reg_password = /^([\w]|[\d]){4,20}$/;
    var errors = [];
    if(!reg_email.exec(email))
    {
        console.log("Y");
        errors.push("Error in email");
    }
    if(!reg_username.exec(username))
    {
        errors.push("Error in username");
    }
    if(!reg_firstname.exec(firstname))
    {
        errors.push("Error in first name");
    }
    if(!reg_lastname.exec(lastname))
    {
        errors.push("Error in last name");
    }
    if(!reg_password.exec(password))
    {
        errors.push("Error in password");
    }
    if(password != repassword)
    {
        errors.push("Passwords do not match");
    }
    document.getElementById("reg_errors").innerHTML = "<br/>";
    if (errors.length > 0) 
    {
        for (var i = 0; i < errors.length; i++) 
        {
            document.getElementById("reg_errors").innerHTML += errors[i] + "<br/>";
        }
        return false;
    }
    return true;
}
