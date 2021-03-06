var form = document.getElementById("login-form");
var invalidMessage = document.getElementById("invalid-login");

form.addEventListener("submit", () => {
    var submitContainer = document.getElementById("login-submit-container");
    var paragraphTag = document.createElement("h3");
    var loadingMessage = document.createTextNode("Logging in...");
    
    paragraphTag.appendChild(loadingMessage);
    submitContainer.appendChild(paragraphTag);
    invalidMessage ? invalidMessage.remove() : null 
})