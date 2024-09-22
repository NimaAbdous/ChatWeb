<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>صفحه ورود</title>
    <link href="password.css" rel="stylesheet" />
    <script>
        function checkPassword() {
            var password = document.getElementById("password").value;
            if (password === "Hns41403") {
                document.getElementById("loginContainer").style.display = "none";
                document.getElementById("infoContainer").style.display = "block";
            } else {
                alert("رمز عبور نادرست است. لطفاً دوباره تلاش کنید.");
            }
        }


        document.addEventListener('contextmenu', function (event) {
            event.preventDefault();
        });

        document.addEventListener('keydown', function (event) {

            if (event.ctrlKey || event.shiftKey || event.altKey || event.metaKey || (event.key.startsWith("F"))) {
                event.preventDefault();
            }
        });
    </script>
</head>
<body>
    <div class="container" id="loginContainer">
        <h2>:لطفاً رمز عبور را وارد کنید</h2>
        <input type="password" id="password" placeholder="password" />
        <button onclick="checkPassword()">login</button>
    </div>
    <div class="login" id="infoContainer">
<a href="hns4Chat.aspx" style="text-align:center">ورود به چت بچه های مدرسه هاشمی نژاد کلاس 803</a>
    </div>
</body>
</html>