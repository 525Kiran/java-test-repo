<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Action Profile - Dummy App</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Standard context path linking -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>
<body class="d-flex flex-column min-vh-100 bg-light">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold" href="${pageContext.request.contextPath}/index.jsp">Dummy App</a>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="container my-5 flex-grow-1 d-flex flex-column justify-content-center align-items-center">
        <div class="col-md-7 w-100">
            <div class="alert alert-success shadow-sm p-5 border-0 bg-white rounded-4 text-center" role="alert">
                <h2 class="display-6 mt-2 mb-4 text-success fw-bold">Success!</h2>
                <div class="mb-4">
                    <p class="fs-5 mb-2">Hello, <strong class="text-dark">${username}</strong>.</p>
                    <p class="fs-5 text-muted">Your servlet action request:</p>
                    <span class="badge bg-primary fs-5 px-4 py-2 mt-2 rounded-pill shadow-sm">${actionType}</span>
                </div>
                <hr class="my-4 text-muted">
                <div class="d-flex justify-content-center gap-3">
                    <a href="${pageContext.request.contextPath}/dashboard.jsp" class="btn btn-primary px-4 shadow-sm">Reset Dashboard</a>
                    <a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-outline-secondary px-4">Home</a>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="mt-auto py-3 bg-dark text-white-50 text-center">
        <div class="container">
            <small>Built for Jenkins Freestyle + Tomcat Learning</small>
        </div>
    </footer>

</body>
</html>
