<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="expires" content="-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Free Wifi - Log in</title>
    <link rel="stylesheet" href="css/style.css">

    <!-- Styles for the embedded form -->
    <style>
        .embedded-form-container {
            width: 100%;
            max-width: 600px; /* Adjust the maximum width as needed */
            margin: 20px auto; /* Center the form on the page */
        }
    </style>
</head>

<body>
    $(if chap-id)
    <form name="sendin" action="$(link-login-only)" method="post" style="display:none">
        <input type="hidden" name="username" />
        <input type="hidden" name="email" />
        <input type="hidden" name="dst" value="$(link-orig)" />
        <input type="hidden" name="popup" value="true" />
    </form>

    <script src="/md5.js"></script>
    <script>
        function doLogin() {
            document.sendin.username.value = document.login.username.value;
            document.sendin.password.value = hexMD5('$(chap-id)' + document.login.password.value + '$(chap-challenge)');
            document.sendin.submit();
            return false;
        }

    </script>
    $(endif)

    <div id="login-container">
        <div class="ie-fixMinHeight">
            <div class="main">
                <div class="wrap animated fadeIn">
                    <form name="login" action="$(link-login-only)" method="post" $(if chap-id) onSubmit="return doLogin()" $(endif)>
                        <!-- Your existing login form -->

                        <!-- Embedded Google Form -->
                        <div class="embedded-form-container">
                            <!-- Paste your copied iframe code here -->
                            <!-- Example: -->
                            <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSe_T4QT9UDrzZFNcsfdEtV02HGXP7Wk9_tiIIQ944x1qmem-w/viewform?embedded=true" width="640" height="586" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
