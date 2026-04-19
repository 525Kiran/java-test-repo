// Simple client-side interactivity
document.addEventListener('DOMContentLoaded', () => {
    const dashboardForm = document.getElementById('dashboardForm');
    const submitBtn = document.getElementById('submitBtn');

    if (dashboardForm) {
        dashboardForm.addEventListener('submit', (e) => {
            // Optional: minimal UI feedback before submission happens naturally
            const originalText = submitBtn.innerText;
            submitBtn.innerHTML = '<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Submitting...';
            submitBtn.classList.add('disabled');
            
            // Allow natural form submission to proceed
        });
    }

    // Example logging for Jenkins debug test purposes
    console.log("[Jenkins-Dummy-App] Application loaded successfully.");
});
