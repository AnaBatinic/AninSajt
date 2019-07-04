function process()
{
    var email = document.getElementById("login_email").value;
    var password = document.getElementById("login_password").value;
    var reg_email = /^[\w]+(@gmail.com|@yahoo.com|@mementomori.com)$/;
    var reg_password = /^([\w]|[\d]){4,20}$/;
    var errors = [];
    if(!reg_email.exec(email)){
        errors.push("Error in email");
    }
    if(!reg_password.exec(password)){
        errors.push("Error in password");
    }
    document.getElementById("log_errors").innerHTML = "<br/>";
    if(errors.length > 0){
        for(var i=0; i < errors.length; i++) {
            document.getElementById("log_errors").innerHTML += errors[i]+"<br/>";
        }
        return false;
    }
    return true;
}