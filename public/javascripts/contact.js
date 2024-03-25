// JavaScript for Captcha generation

document.addEventListener("DOMContentLoaded", function () {
    generateCaptcha();

    document.getElementById("refresh-captcha").addEventListener("click", function () {
        generateCaptcha();
        document.getElementById("captcha-input").value = "";
    });

    document.getElementById("captcha-form").addEventListener("submit", function (event) {
        event.preventDefault();

        var captchaInput = document.getElementById("captcha-input").value;
        var captchaCode = sessionStorage.getItem("captchaCode");

        if (captchaInput !== captchaCode) {
            alert("Invalid captcha code. Please try again.");
            generateCaptcha();
            document.getElementById("captcha-input").value = "";
            return;
        }

        alert("Form submitted successfully.");
        document.getElementById("captcha-form").reset();
        generateCaptcha();
    });

    function generateCaptcha() {
        var canvas = document.getElementById("captcha");
        var context = canvas.getContext("2d");

        context.clearRect(0, 0, canvas.width, canvas.height);
        var characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        var captchaCode = "";
        var minRotation = -45;
        var maxRotation = 45;
        var rotationRange = maxRotation - minRotation;
        var minFontSize = 20;
        var maxFontSize = 30;
        var fontSizeRange = maxFontSize - minFontSize;

        for (var i = 0; i < 6; i++) {
            var character = characters.charAt(Math.floor(Math.random() * characters.length));
            captchaCode += character;

            var fontSize = minFontSize + Math.random() * fontSizeRange;
            context.font = fontSize + "px Arial";
            context.textAlign = "center";
            context.textBaseline = "middle";

            var fillStyle = "rgb(" + Math.floor(Math.random() * 256) + "," + Math.floor(Math.random() * 256) + "," + Math.floor(Math.random() * 256) + ")";
            context.fillStyle = fillStyle;

            var rotation = minRotation + Math.random() * rotationRange;
            context.translate(20 + i * 30, canvas.height / 2);
            context.rotate(rotation * Math.PI / 180);
            context.fillText(character, 0, 0);
            context.rotate(-rotation * Math.PI / 180);
            context.translate(-(20 + i * 30), -canvas.height / 2);
        }

        sessionStorage.setItem("captchaCode", captchaCode);
    }
});  

// for login signup second captach works here 

// JavaScript for Captcha generation

document.addEventListener("DOMContentLoaded", function () {
    generateCaptcha();

    document.getElementById("refresh-captcha2").addEventListener("click", function () {
        generateCaptcha();
        document.getElementById("captcha-input2").value = "";
    });

    document.getElementById("captcha-form2").addEventListener("submit", function (event) {
        event.preventDefault();

        var captchaInput = document.getElementById("captcha-input2").value;
        var captchaCode = sessionStorage.getItem("captchaCode");

        if (captchaInput !== captchaCode) {
            alert("Invalid captcha code. Please try again.");
            generateCaptcha();
            document.getElementById("captcha-input2").value = "";
            return;
        }

        alert("Form submitted successfully.");
        document.getElementById("captcha-form2").reset();
        generateCaptcha();
    });

    function generateCaptcha() {
        var canvas = document.getElementById("captcha2");
        var context = canvas.getContext("2d");

        context.clearRect(0, 0, canvas.width, canvas.height);
        var characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        var captchaCode = "";
        var minRotation = -45;
        var maxRotation = 45;
        var rotationRange = maxRotation - minRotation;
        var minFontSize = 20;
        var maxFontSize = 30;
        var fontSizeRange = maxFontSize - minFontSize;

        for (var i = 0; i < 6; i++) {
            var character = characters.charAt(Math.floor(Math.random() * characters.length));
            captchaCode += character;

            var fontSize = minFontSize + Math.random() * fontSizeRange;
            context.font = fontSize + "px Arial";
            context.textAlign = "center";
            context.textBaseline = "middle";

            var fillStyle = "rgb(" + Math.floor(Math.random() * 256) + "," + Math.floor(Math.random() * 256) + "," + Math.floor(Math.random() * 256) + ")";
            context.fillStyle = fillStyle;

            var rotation = minRotation + Math.random() * rotationRange;
            context.translate(20 + i * 30, canvas.height / 2);
            context.rotate(rotation * Math.PI / 180);
            context.fillText(character, 0, 0);
            context.rotate(-rotation * Math.PI / 180);
            context.translate(-(20 + i * 30), -canvas.height / 2);
        }

        sessionStorage.setItem("captchaCode2", captchaCode);
    }
});  