<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Dummy App</title>
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
            <a class="nav-link text-white ms-auto text-decoration-none" href="index.jsp">Home</a>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="container my-5 flex-grow-1">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="card shadow-sm border-0 rounded-4">
                    <div class="card-header bg-white border-bottom-0 pt-4 pb-0 text-center">
                        <h3 class="card-title text-primary fw-bold m-0">Dummy Dashboard</h3>
                    </div>
                    <div class="card-body p-4">
                        <form action="submitDashboard" method="POST" id="dashboardForm">
                            <div class="mb-3">
                                <label for="username" class="form-label text-muted fw-semibold">User Name</label>
                                <input type="text" class="form-control form-control-lg bg-light" id="username" name="username" placeholder="Enter your name" required>
                            </div>
                            <div class="mb-4">
                                <label for="actionType" class="form-label text-muted fw-semibold">Action Request</label>
                                <select class="form-select form-select-lg bg-light" id="actionType" name="actionType">
                                    <option value="Kickoff Build">Kickoff Build</option>
                                    <option value="Trigger Code Deploy">Trigger Code Deploy</option>
                                    <option value="Execute Integration Tests">Execute Integration Tests</option>
                                </select>
                            </div>
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-primary btn-lg shadow-sm" id="submitBtn">Simulate Action</button>
                                <a href="index.jsp" class="btn btn-link text-decoration-none text-muted">Back to Home</a>
                            </div>
                        </form>
                    </div>
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

    <!-- Bootstrap 5 JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom Vanilla JS -->
    <script src="js/script.js"></script>
</body>
</html>
