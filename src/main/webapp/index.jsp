<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>This is Rajkiran's Test</title>
        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body class="d-flex flex-column min-vh-100 bg-light">

        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
            <div class="container">
                <a class="navbar-brand fw-bold" href="index.jsp">Dummy App</a>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="container my-5 flex-grow-1 d-flex flex-column justify-content-center align-items-center">
            <div class="col-lg-8 w-100 p-5 bg-white rounded-4 shadow-sm border text-center">
                <h1 class="display-5 fw-bold text-primary mb-3">This is Rajkiran's Test</h1>
                <p class="fs-4 text-muted">Jenkins Freestyle Practice</p>
                <p class="mb-5 px-md-5">This is a simple, modern looking dummy application built locally for learning
                    CI/CD deployment to Tomcat 10.x endpoints.</p>

                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href="hello" class="btn btn-outline-primary btn-lg px-4" id="btnHello">Call Hello Servlet</a>
                    <a href="dashboard.jsp" class="btn btn-primary btn-lg px-4 shadow-sm" id="btnDashboard">Go to
                        Dashboard</a>
                </div>
            </div>
        </main>

        <!-- Footer -->
        <footer class="mt-auto py-3 bg-dark text-white-50 text-center">
            <div class="container">
                <small>Built for Jenkins Freestyle + Tomcat Learning</small>
            </div>
        </footer>

        <!-- Bootstrap 5 JS Bundle -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Custom Vanilla JS -->
        <script src="js/script.js"></script>
    </body>

    </html>