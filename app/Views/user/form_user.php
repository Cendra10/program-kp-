<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form User</title>
</head>

<body>
    <h1>Ini adalah halaman user register </h1>

    <form action="/form_user" method="post">
        <!-- Tambahkan elemen formulir sesuai kebutuhan -->
        <label for="username">Full Name:</label>
        <input type="text" name="username" id="username" required>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>

        <button type="submit">Register</button>
    </form>
</body>

</html>