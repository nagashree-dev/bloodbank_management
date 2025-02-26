<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">

        <script src="assets/js/login.js"></script>


</head>
<body>

    <!-- Header with Logo -->
    <div class="header">
        <div class="logo">Blood Bank</div>
    </div>

    <!-- Login Box -->
    <div class="login-container">
        <h2>Admin Login</h2>



        <form action="LoginServlet" method="post">
            <div class="input-box">
                <input type="text" name="username" placeholder="Username" required>
            </div>
            <div class="input-box">
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>
          <!-- Display error message if login fails -->
                <% String errorMessage = request.getParameter("error"); %>
                <% if (errorMessage != null) { %>
                    <div class="error-message" style="color: red; text-align: center;"><%= errorMessage %></div>
                <% } %>
    </div>

</body>
</html>
