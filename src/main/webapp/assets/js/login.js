<% String errorMessage = request.getParameter("error"); %>
<% if (errorMessage != null) { %>
    <div class="error-message" id="errorMessage" style="color: red; text-align: center;"><%= errorMessage %></div>

    <script>
        // Remove error query parameter after displaying the message
        if (window.history.replaceState) {
            let url = new URL(window.location);
            url.searchParams.delete("error"); // Remove 'error' parameter from URL
            window.history.replaceState(null, null, url); // Update the URL
        }
    </script>
<% } %>
