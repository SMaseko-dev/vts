function validate(){
    var errormessage = "";
    if(document.getElementById('username').value == "")
    {
        errormessage += 'username field is empty \n';
    }
    if(document.getElementById('password').value == "")
    {
        errormessage += 'password field is empty \n'
    }
    if(document.getElementById('username').value != 'Myuser')
    {
        errormessage += 'Wrong username \n';
    }
    if(document.getElementById('password').value != 'SA1@123')
    {
        errormessage += 'Wrong password \n';
    }
    if(errormessage != "")
    {
        alert(errormessage);
        return false
    }
    if(errormessage == "")
    {
        window.location.href = "fleethome.html";
        alert("login succesful");
        return false;
    }
}