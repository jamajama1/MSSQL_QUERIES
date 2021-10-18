
function checkEmailID() {
    let email = document.querySelector("#email").value;
    distance = email.indexOf('.') - email.indexOf('@');
    if (email.includes('@') & email.includes('.') & distance > 1) {
        console.log("true");
        return true;
    }
    console.log("false");
    return false;

    
}