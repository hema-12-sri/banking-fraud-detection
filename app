<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
    <script>
        // Initialize EmailJS with your credentials
        (function() {
            emailjs.init("YOUR_PUBLIC_KEY"); // ← Get this from EmailJS.com
        })();
    </script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DefendLedger - Blockchain Fraud Protection</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <style>
        :root {
            --midnight-purple: #0a041a;
            --deep-space: #12052f;
            --electric-gold: #FFD700;
            --gold-accent: #FFC000;
            --sea-blue: #70a1ff;
            --cream: #FFF8F0;
            --autumn-orange: #D16002;
            --autumn-brown: #8C5E3C;
            --card-bg: #1a093f;
            --error-red: #ff4444;
            --success-green: #00C851;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--midnight-purple);
            color: #e0e0e0;
            transition: all 0.5s ease;
            background-image: radial-gradient(circle at 10% 20%, var(--deep-space) 0%, var(--midnight-purple) 90%);
        }

        body.light-theme {
            background-color: var(--cream);
            color: var(--autumn-brown);
            background-image: none;
            --card-bg: #ffffff;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
            border-bottom: 1px solid var(--gold-accent);
        }

        .logo {
            font-size: 2rem;
            font-weight: bold;
            color: var(--electric-gold);
            text-decoration: none;
        }

        .light-theme .logo {
            color: var(--autumn-orange);
        }

        .theme-toggle {
            background: none;
            border: none;
            color: var(--electric-gold);
            font-size: 1.5rem;
            cursor: pointer;
            transition: all 0.3s;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
        }

        .light-theme .theme-toggle {
            color: var(--autumn-orange);
        }

        .theme-toggle:hover {
            background-color: rgba(255, 215, 0, 0.1);
        }

        .light-theme .theme-toggle:hover {
            background-color: rgba(209, 96, 2, 0.1);
        }

        .hero {
            text-align: center;
            padding: 80px 20px;
            min-height: 60vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .hero h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            color: var(--electric-gold);
        }

        .light-theme .hero h1 {
            color: var(--autumn-orange);
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 40px;
            line-height: 1.6;
            color: #c0c0c0;
        }

        .light-theme .hero p {
            color: var(--autumn-brown);
        }

        .cta-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 12px 30px;
            border-radius: 30px;
            font-size: 1.1rem;
            font-weight: bold;
            text-decoration: none;
            cursor: pointer;
            transition: all 0.3s;
        }

        .btn-primary {
            background-color: var(--electric-gold);
            color: var(--midnight-purple);
            border: 2px solid var(--electric-gold);
        }

        .btn-secondary {
            background-color: transparent;
            color: var(--electric-gold);
            border: 2px solid var(--electric-gold);
        }

        .light-theme .btn-primary {
            background-color: var(--autumn-orange);
            color: white;
            border-color: var(--autumn-orange);
        }

        .light-theme .btn-secondary {
            color: var(--autumn-orange);
            border-color: var(--autumn-orange);
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        /* Features Section */
        .features {
            padding: 80px 20px;
            background-color: rgba(18, 5, 47, 0.7);
        }

        .light-theme .features {
            background-color: rgba(255, 248, 240, 0.7);
        }

        .features h2 {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 50px;
            color: var(--electric-gold);
        }

        .light-theme .features h2 {
            color: var(--autumn-orange);
        }

        .cards {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
        }

        .card {
            background-color: var(--card-bg);
            border-radius: 15px;
            padding: 30px;
            width: 300px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            transition: all 0.4s ease;
            transform: perspective(1000px) rotateY(15deg);
            border: 1px solid var(--gold-accent);
        }

        .light-theme .card {
            border-color: #ddd;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .card:hover {
            transform: perspective(1000px) rotateY(0deg);
            box-shadow: 0 15px 30px rgba(255, 215, 0, 0.2);
        }

        .light-theme .card:hover {
            box-shadow: 0 15px 30px rgba(209, 96, 2, 0.2);
        }

        .card i {
            font-size: 2.5rem;
            color: var(--electric-gold);
            margin-bottom: 20px;
        }

        .light-theme .card i {
            color: var(--autumn-orange);
        }

        .card h3 {
            font-size: 1.5rem;
            margin-bottom: 15px;
            color: var(--electric-gold);
        }

        .light-theme .card h3 {
            color: var(--autumn-orange);
        }

        .card p {
            line-height: 1.6;
            color: #d0d0d0;
        }

        .light-theme .card p {
            color: var(--autumn-brown);
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: var(--deep-space);
            padding: 30px;
            border-radius: 10px;
            width: 100%;
            max-width: 500px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.5);
            position: relative;
            overflow-y: auto;
            max-height: 90vh;
            border: 1px solid var(--gold-accent);
        }

        .light-theme .modal-content {
            background-color: white;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.1);
            border-color: #ddd;
        }

        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .modal-title {
            font-size: 1.8rem;
            color: var(--electric-gold);
            margin: 0;
        }

        .light-theme .modal-title {
            color: var(--autumn-orange);
        }

        .close-btn {
            background: none;
            border: none;
            font-size: 1.5rem;
            color: var(--electric-gold);
            cursor: pointer;
        }

        .light-theme .close-btn {
            color: var(--autumn-brown);
        }

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--electric-gold);
        }

        .light-theme .form-group label {
            color: var(--autumn-orange);
        }

        .form-control {
            width: 100%;
            padding: 12px 15px;
            border-radius: 5px;
            border: 1px solid var(--gold-accent);
            background-color: rgba(255, 215, 0, 0.05);
            color: #f0f0f0;
            font-size: 1rem;
        }

        .light-theme .form-control {
            background-color: white;
            color: var(--autumn-brown);
            border-color: #ddd;
        }

        .password-container {
            position: relative;
        }

        .toggle-password {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            color: var(--electric-gold);
        }

        .light-theme .toggle-password {
            color: var(--autumn-brown);
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: var(--electric-gold);
            color: var(--midnight-purple);
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s;
        }

        .light-theme .submit-btn {
            background-color: var(--autumn-orange);
            color: white;
        }

        .submit-btn:hover {
            opacity: 0.9;
        }

        .otp-container {
            display: none;
            margin-top: 20px;
        }

        .otp-inputs {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin: 20px 0;
        }

        .otp-input {
            width: 50px;
            height: 50px;
            text-align: center;
            font-size: 1.2rem;
            border-radius: 5px;
            border: 1px solid var(--gold-accent);
            background-color: rgba(255, 215, 0, 0.05);
            color: #f0f0f0;
        }

        .light-theme .otp-input {
            border-color: #ddd;
            background-color: white;
            color: var(--autumn-brown);
        }

        footer {
            text-align: center;
            padding: 30px 0;
            margin-top: 50px;
            border-top: 1px solid var(--gold-accent);
        }

        .light-theme footer {
            border-top-color: #ddd;
        }

        /* Transaction Page Styles */
        .transaction-page {
            display: none;
            padding: 40px 20px;
        }

        .transaction-form {
            max-width: 600px;
            margin: 0 auto;
            background-color: var(--card-bg);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            border: 1px solid var(--gold-accent);
        }

        .light-theme .transaction-form {
            background-color: white;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            border-color: #ddd;
        }

        .transaction-form h2 {
            text-align: center;
            color: var(--electric-gold);
            margin-bottom: 30px;
        }

        .light-theme .transaction-form h2 {
            color: var(--autumn-orange);
        }

        .transaction-otp-container {
            display: none;
            margin-top: 20px;
            padding: 20px;
            background-color: rgba(18, 5, 47, 0.5);
            border-radius: 10px;
        }

        .light-theme .transaction-otp-container {
            background-color: rgba(255, 248, 240, 0.5);
        }

        .transaction-history {
            margin-top: 50px;
        }

        .transaction-history h3 {
            color: var(--electric-gold);
            border-bottom: 1px solid var(--gold-accent);
            padding-bottom: 10px;
        }

        .light-theme .transaction-history h3 {
            color: var(--autumn-orange);
            border-bottom-color: #ddd;
        }

        .transaction-item {
            background-color: var(--card-bg);
            padding: 15px;
            margin: 10px 0;
            border-radius: 8px;
            display: flex;
            justify-content: space-between;
            border: 1px solid var(--gold-accent);
        }

        .light-theme .transaction-item {
            background-color: white;
            border-color: #ddd;
        }

        .transaction-details {
            flex: 1;
        }

        .transaction-amount {
            font-weight: bold;
            color: var(--electric-gold);
        }

        .light-theme .transaction-amount {
            color: var(--autumn-orange);
        }

        .transaction-status {
            padding: 3px 10px;
            border-radius: 15px;
            font-size: 0.8rem;
            font-weight: bold;
        }

        .status-success {
            background-color: var(--success-green);
            color: white;
        }

        .status-fraud {
            background-color: var(--error-red);
            color: white;
        }

        .status-pending {
            background-color: var(--electric-gold);
            color: var(--midnight-purple);
        }

        .light-theme .status-pending {
            color: white;
        }

        .logout-btn {
            display: block;
            margin: 30px auto 0;
            padding: 10px 20px;
            background-color: var(--error-red);
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .logout-btn:hover {
            opacity: 0.9;
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .card {
                width: 250px;
            }
        }

        @media (max-width: 768px) {
            .hero {
                padding: 60px 20px;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .cta-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .btn {
                width: 80%;
                margin-bottom: 10px;
            }
            
            .cards {
                flex-direction: column;
                align-items: center;
            }
            
            .card {
                width: 80%;
                transform: none;
            }
            
            .card:hover {
                transform: translateY(-10px);
            }

            .transaction-form {
                width: 90%;
            }
        }

        @media (max-width: 480px) {
            .hero h1 {
                font-size: 1.8rem;
            }
            
            .logo {
                font-size: 1.5rem;
            }
            
            .modal-content {
                padding: 20px;
                width: 90%;
            }
            
            .otp-input {
                width: 40px;
                height: 40px;
                font-size: 1rem;
            }

            .transaction-item {
                flex-direction: column;
            }

            .transaction-amount {
                margin-top: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <a href="#" class="logo">DefendLedger</a>
            <button class="theme-toggle" id="themeToggle">
                <i class="fas fa-moon" style="color: #FFD700;"></i>
            </button>
        </header>

        <section class="hero" id="heroSection">
            <h1>Your Safety Is Our Priority</h1>
            <p>Advanced blockchain-powered fraud detection for your banking security. Join thousands of protected users with our decentralized verification system.</p>
            <div class="cta-buttons">
                <button class="btn btn-primary" id="signUpBtn">Sign Up</button>
                <button class="btn btn-secondary" id="signInBtn">Sign In</button>
            </div>
        </section>

        <section class="features">
            <h2>Why Choose DefendLedger?</h2>
            <div class="cards">
                <div class="card">
                    <i class="fas fa-shield-alt"></i>
                    <h3>Blockchain Security</h3>
                    <p>Our decentralized verification system ensures your transactions are protected by immutable blockchain technology, making fraud virtually impossible.</p>
                </div>
                <div class="card">
                    <i class="fas fa-user-shield"></i>
                    <h3>Real-time Monitoring</h3>
                    <p>24/7 surveillance of your banking activities with AI-powered anomaly detection that alerts you instantly of suspicious behavior.</p>
                </div>
                <div class="card">
                    <i class="fas fa-lock"></i>
                    <h3>Military-Grade Encryption</h3>
                    <p>Your data is protected with end-to-end encryption that meets banking security standards, ensuring your information stays private.</p>
                </div>
            </div>
        </section>

        <section class="transaction-page" id="transactionPage">
            <div class="transaction-form">
                <h2>Make a Secure Transaction</h2>
                <form id="transactionForm">
                    <div class="form-group">
                        <label for="senderAccount">Your Account Number</label>
                        <input type="text" id="senderAccount" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="receiverAccount">Receiver Account Number</label>
                        <input type="text" id="receiverAccount" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="amount">Amount (₹)</label>
                        <input type="number" id="amount" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="transactionNote">Note (Optional)</label>
                        <input type="text" id="transactionNote" class="form-control">
                    </div>
                    <button type="submit" class="submit-btn">Proceed to Verification</button>
                </form>

                <div class="transaction-otp-container" id="transactionOtpContainer">
                    <h3>Transaction Verification</h3>
                    <p>We've sent a verification code to your registered email.</p>
                    <div class="otp-inputs">
                        <input type="text" class="transaction-otp-input" maxlength="1">
                        <input type="text" class="transaction-otp-input" maxlength="1">
                        <input type="text" class="transaction-otp-input" maxlength="1">
                        <input type="text" class="transaction-otp-input" maxlength="1">
                        <input type="text" class="transaction-otp-input" maxlength="1">
                        <input type="text" class="transaction-otp-input" maxlength="1">
                    </div>
                    <button class="submit-btn" id="verifyTransaction">Verify & Complete Transaction</button>
                </div>
            </div>

            <div class="transaction-history">
                <h3>Recent Transactions</h3>
                <div id="transactionsList">
                    <!-- Transactions will be added here dynamically -->
                </div>
            </div>

            <button class="logout-btn" id="logoutBtn">Logout</button>
        </section>

        <footer>
            <p>&copy; 2024 DefendLedger.com. All rights reserved.</p>
            <p>Blockchain-powered fraud detection system</p>
        </footer>
    </div>

    <!-- Sign Up Modal -->
    <div class="modal" id="signUpModal">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title">Create Your Account</h2>
                <button class="close-btn" id="closeSignUp">&times;</button>
            </div>
            <form id="signUpForm">
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="phone">Mobile Number (Temporary)</label>
                    <input type="tel" id="phone" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="password-container">
                        <input type="password" id="password" class="form-control" required>
                        <span class="toggle-password" id="togglePassword">
                            <i class="far fa-eye"></i>
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <div class="password-container">
                        <input type="password" id="confirmPassword" class="form-control" required>
                        <span class="toggle-password" id="toggleConfirmPassword">
                            <i class="far fa-eye"></i>
                        </span>
                    </div>
                </div>
                <button type="submit" class="submit-btn">Continue</button>
            </form>
            <div class="otp-container" id="signUpOtpContainer">
                <h3>Two-Step Verification</h3>
                <p>We've sent a verification code to your email address.</p>
                <div class="otp-inputs">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                </div>
                <button class="submit-btn" id="verifySignUp">Verify & Complete Registration</button>
            </div>
        </div>
    </div>

    <!-- Sign In Modal -->
    <div class="modal" id="signInModal">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title">Welcome Back</h2>
                <button class="close-btn" id="closeSignIn">&times;</button>
            </div>
            <form id="signInForm">
                <div class="form-group">
                    <label for="loginId">Email or Username</label>
                    <input type="text" id="loginId" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="loginPassword">Password</label>
                    <div class="password-container">
                        <input type="password" id="loginPassword" class="form-control" required>
                        <span class="toggle-password" id="toggleLoginPassword">
                            <i class="far fa-eye"></i>
                        </span>
                    </div>
                </div>
                <button type="submit" class="submit-btn">Sign In</button>
            </form>
            <div class="otp-container" id="signInOtpContainer">
                <h3>Two-Step Verification</h3>
                <p>We've sent a verification code to your registered email.</p>
                <div class="otp-inputs">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                    <input type="text" class="otp-input" maxlength="1">
                </div>
                <button class="submit-btn" id="verifySignIn">Verify & Sign In</button>
            </div>
        </div>
    </div>

    <script>
        // Theme Toggle
        const themeToggle = document.getElementById('themeToggle');
        themeToggle.addEventListener('click', () => {
            document.body.classList.toggle('light-theme');
            const icon = themeToggle.querySelector('i');
            if (document.body.classList.contains('light-theme')) {
                icon.classList.remove('fa-moon');
                icon.classList.add('fa-sun');
                icon.style.color = "#D16002"; // Autumn orange
            } else {
                icon.classList.remove('fa-sun');
                icon.classList.add('fa-moon');
                icon.style.color = "#FFD700"; // Gold
            }
        });

        // Modal Handling
        const signUpBtn = document.getElementById('signUpBtn');
        const signInBtn = document.getElementById('signInBtn');
        const signUpModal = document.getElementById('signUpModal');
        const signInModal = document.getElementById('signInModal');
        const closeSignUp = document.getElementById('closeSignUp');
        const closeSignIn = document.getElementById('closeSignIn');
        const heroSection = document.getElementById('heroSection');
        const featuresSection = document.querySelector('.features');
        const transactionPage = document.getElementById('transactionPage');
        const logoutBtn = document.getElementById('logoutBtn');

        // Track failed login attempts
        let failedAttempts = 0;
        const maxAttempts = 3;
        let isBlocked = false;

        signUpBtn.addEventListener('click', () => {
            signUpModal.style.display = 'flex';
        });

        signInBtn.addEventListener('click', () => {
            if (isBlocked) {
                alert('Your account is temporarily blocked due to too many failed attempts. Please try again after 24 hours.');
                return;
            }
            signInModal.style.display = 'flex';
        });

        closeSignUp.addEventListener('click', () => {
            signUpModal.style.display = 'none';
            document.getElementById('signUpOtpContainer').style.display = 'none';
            document.getElementById('signUpForm').reset();
        });

        closeSignIn.addEventListener('click', () => {
            signInModal.style.display = 'none';
            document.getElementById('signInOtpContainer').style.display = 'none';
            document.getElementById('signInForm').reset();
        });

        window.addEventListener('click', (e) => {
            if (e.target === signUpModal) {
                signUpModal.style.display = 'none';
                document.getElementById('signUpOtpContainer').style.display = 'none';
                document.getElementById('signUpForm').reset();
            }
            if (e.target === signInModal) {
                signInModal.style.display = 'none';
                document.getElementById('signInOtpContainer').style.display = 'none';
                document.getElementById('signInForm').reset();
            }
        });

        // Logout functionality
        logoutBtn.addEventListener('click', () => {
            // Hide transaction page and show main content
            transactionPage.style.display = 'none';
            heroSection.style.display = 'flex';
            featuresSection.style.display = 'block';
            document.querySelector('footer').style.display = 'block';
            
            // Reset any transaction data
            document.getElementById('transactionForm').reset();
            document.getElementById('transactionOtpContainer').style.display = 'none';
            document.querySelectorAll('.transaction-otp-input').forEach(input => input.value = '');
        });

        // Password Toggle Visibility
        function setupPasswordToggle(passwordId, toggleId) {
            const passwordInput = document.getElementById(passwordId);
            const toggleButton = document.getElementById(toggleId);
            
            toggleButton.addEventListener('click', () => {
                const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
                passwordInput.setAttribute('type', type);
                toggleButton.innerHTML = type === 'password' ? '<i class="far fa-eye"></i>' : '<i class="far fa-eye-slash"></i>';
            });
        }

        setupPasswordToggle('password', 'togglePassword');
        setupPasswordToggle('confirmPassword', 'toggleConfirmPassword');
        setupPasswordToggle('loginPassword', 'toggleLoginPassword');

        // Form Submissions
        document.getElementById('signUpForm').addEventListener('submit', (e) => {
            e.preventDefault();
            
            // Validate password match
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            const email = document.getElementById('email').value;
            
            if (password !== confirmPassword) {
                alert('Passwords do not match!');
                return;
            }
            
            // Show the OTP verification
            document.getElementById('signUpOtpContainer').style.display = 'block';
            
            // Generate a random OTP
            const otp = Math.floor(100000 + Math.random() * 900000);
            
            // Store OTP for verification
            sessionStorage.setItem('signUpOTP', otp.toString());
            
            // TEST MODE: Show OTP in alert
            alert(TEST MODE: Your OTP is ${otp} (In production, this would be emailed));
            console.log(OTP for ${email}: ${otp});
            document.querySelectorAll('.otp-input')[0].focus();

            /* 
            // PRODUCTION MODE: Uncomment one of these email sending methods
            
            // Method 1: SMTPJS
            Email.send({
                SecureToken: "YOUR_SMTPJS_TOKEN",
                To: email,
                From: "your-email@domain.com",
                Subject: "Your Verification Code",
                Body: Your OTP is: ${otp}
            }).then(() => alert('OTP sent!')).catch(err => alert('Error sending OTP'));
            
            // Method 2: EmailJS
            emailjs.send("YOUR_SERVICE_ID", "YOUR_TEMPLATE_ID", {
                to_email: email,
                otp: otp
            }).then(() => alert('OTP sent!')).catch(err => alert('Error sending OTP'));
            */
        });

        document.getElementById('signInForm').addEventListener('submit', (e) => {
            e.preventDefault();
            
            const loginId = document.getElementById('loginId').value;
            const password = document.getElementById('loginPassword').value;
            
            // In a real app, you would verify credentials with a server
            // For demo purposes, we'll just check if password is not empty
            if (password.trim() === '') {
                failedAttempts++;
                if (failedAttempts >= maxAttempts) {
                    isBlocked = true;
                    alert('Too many failed attempts. Your account is temporarily blocked for 24 hours.');
                    signInModal.style.display = 'none';
                    document.getElementById('signInForm').reset();
                    return;
                }
                alert(Invalid credentials. ${maxAttempts - failedAttempts} attempts remaining.);
                return;
            }
            
            // Reset failed attempts on successful password entry
            failedAttempts = 0;
            
            // Show the OTP verification
            document.getElementById('signInOtpContainer').style.display = 'block';
            
            // Generate a random OTP
            const otp = Math.floor(100000 + Math.random() * 900000);
            
            // Store OTP for verification
            sessionStorage.setItem('signInOTP', otp.toString());
            
            // TEST MODE: Show OTP in alert
            alert(TEST MODE: Your OTP is ${otp} (In production, this would be emailed));
            console.log(OTP for ${loginId}: ${otp});
            document.querySelectorAll('.otp-input')[0].focus();
            
            /* Production email sending would go here */
        });

        // OTP Input Handling for sign up/sign in
        const otpInputs = document.querySelectorAll('.otp-input');
        otpInputs.forEach((input, index) => {
            input.addEventListener('input', () => {
                if (input.value.length === 1) {
                    if (index < otpInputs.length - 1) {
                        otpInputs[index + 1].focus();
                    }
                }
            });
            
            input.addEventListener('keydown', (e) => {
                if (e.key === 'Backspace' && input.value.length === 0) {
                    if (index > 0) {
                        otpInputs[index - 1].focus();
                    }
                }
            });
        });

        // OTP Input Handling for transaction
        const transactionOtpInputs = document.querySelectorAll('.transaction-otp-input');
        transactionOtpInputs.forEach((input, index) => {
            input.addEventListener('input', () => {
                if (input.value.length === 1) {
                    if (index < transactionOtpInputs.length - 1) {
                        transactionOtpInputs[index + 1].focus();
                    }
                }
            });
            
            input.addEventListener('keydown', (e) => {
                if (e.key === 'Backspace' && input.value.length === 0) {
                    if (index > 0) {
                        transactionOtpInputs[index - 1].focus();
                    }
                }
            });
        });

        // Verification Buttons
        document.getElementById('verifySignUp').addEventListener('click', () => {
            const enteredOTP = Array.from(document.querySelectorAll('#signUpOtpContainer .otp-input'))
                                .map(input => input.value)
                                .join('');
            const storedOTP = sessionStorage.getItem('signUpOTP');
            
            if (enteredOTP === storedOTP) {
                alert('Account created successfully!');
                signUpModal.style.display = 'none';
                document.getElementById('signUpOtpContainer').style.display = 'none';
                document.getElementById('signUpForm').reset();
                otpInputs.forEach(input => input.value = '');
                sessionStorage.removeItem('signUpOTP');
            } else {
                alert('Invalid OTP. Please try again.');
            }
        });

        document.getElementById('verifySignIn').addEventListener('click', () => {
            const enteredOTP = Array.from(document.querySelectorAll('#signInOtpContainer .otp-input'))
                                .map(input => input.value)
                                .join('');
            const storedOTP = sessionStorage.getItem('signInOTP');
            
            if (enteredOTP === storedOTP) {
                // Successful login - show transaction page
                heroSection.style.display = 'none';
                featuresSection.style.display = 'none';
                document.querySelector('footer').style.display = 'none';
                transactionPage.style.display = 'block';
                
                // Close sign in modal
                signInModal.style.display = 'none';
                document.getElementById('signInOtpContainer').style.display = 'none';
                document.getElementById('signInForm').reset();
                otpInputs.forEach(input => input.value = '');
                sessionStorage.removeItem('signInOTP');
                
                // Add some sample transactions to history
                addSampleTransactions();
            } else {
                alert('Invalid OTP. Please try again.');
            }
        });

        // Transaction Form Handling
        document.getElementById('transactionForm').addEventListener('submit', (e) => {
            e.preventDefault();
            
            const amount = parseFloat(document.getElementById('amount').value);
            const senderAccount = document.getElementById('senderAccount').value;
            const receiverAccount = document.getElementById('receiverAccount').value;
            
            // Fraud detection checks
            if (isFancyNumber(amount)) {
                alert('Fraud Detected: Transaction amount appears to be a fancy number. This transaction is suspicious and cannot be completed.');
                return;
            }
            
            if (amount > 70000) {
                alert('Fraud Detected: Transaction amount exceeds ₹70,000 limit. This transaction is suspicious and cannot be completed.');
                return;
            }
            
            if (senderAccount === receiverAccount) {
                alert('Error: Sender and receiver accounts cannot be the same.');
                return;
            }
            
            // Show OTP verification for transaction
            document.getElementById('transactionOtpContainer').style.display = 'block';
            
            // Generate and store transaction OTP
            const transactionOTP = Math.floor(100000 + Math.random() * 900000);
            sessionStorage.setItem('transactionOTP', transactionOTP.toString());
            
            // Store transaction details temporarily
            sessionStorage.setItem('pendingTransaction', JSON.stringify({
                senderAccount,
                receiverAccount,
                amount,
                note: document.getElementById('transactionNote').value
            }));
            
            // TEST MODE: Show OTP in alert
            alert(TEST MODE: Your transaction OTP is ${transactionOTP} (In production, this would be emailed));
            transactionOtpInputs[0].focus();
            
            /* Production email sending would go here */
        });

        // Transaction Verification
        document.getElementById('verifyTransaction').addEventListener('click', () => {
            const enteredOTP = Array.from(document.querySelectorAll('.transaction-otp-input'))
                                .map(input => input.value)
                                .join('');
            const storedOTP = sessionStorage.getItem('transactionOTP');
            
            if (enteredOTP === storedOTP) {
                // Get pending transaction details
                const transaction = JSON.parse(sessionStorage.getItem('pendingTransaction'));
                
                // In a real app, this would be saved to blockchain
                // For demo, we'll just add it to the transaction history
                addTransactionToHistory(
                    transaction.senderAccount,
                    transaction.receiverAccount,
                    transaction.amount,
                    transaction.note
                );
                
                // Reset form
                document.getElementById('transactionForm').reset();
                document.getElementById('transactionOtpContainer').style.display = 'none';
                transactionOtpInputs.forEach(input => input.value = '');
                sessionStorage.removeItem('transactionOTP');
                sessionStorage.removeItem('pendingTransaction');
                
                alert('Transaction completed successfully!');
            } else {
                alert('Invalid OTP. Please try again.');
            }
        });

        // Helper function to detect fancy numbers (like 1111, 1234, etc.)
        function isFancyNumber(amount) {
            const amountStr = amount.toString();
            
            // Check for all same digits (e.g., 1111)
            if (/^(\d)\1*$/.test(amountStr)) return true;
            
            // Check for sequential ascending (1234) or descending (4321)
            const isSequentialAscending = amountStr.split('').every((digit, index, arr) => 
                index === 0 || parseInt(digit) === parseInt(arr[index - 1]) + 1
            );
            
            const isSequentialDescending = amountStr.split('').every((digit, index, arr) => 
                index === 0 || parseInt(digit) === parseInt(arr[index - 1]) - 1
            );
            
            return isSequentialAscending || isSequentialDescending;
        }

        // Add sample transactions to history
        function addSampleTransactions() {
            const transactionsList = document.getElementById('transactionsList');
            
            // Clear any existing transactions
            transactionsList.innerHTML = '';
            
            // Add sample transactions
            const sampleTransactions = [
                { from: 'ACC-1234', to: 'ACC-5678', amount: 5000, note: 'Grocery payment', status: 'success' },
                { from: 'ACC-1234', to: 'ACC-9012', amount: 15000, note: 'Rent payment', status: 'success' },
                { from: 'ACC-1234', to: 'ACC-3456', amount: 100000, note: 'Investment', status: 'fraud' },
                { from: 'ACC-1234', to: 'ACC-7890', amount: 1234, note: 'Test payment', status: 'fraud' }
            ];
            
            sampleTransactions.forEach(txn => {
                addTransactionToHistory(txn.from, txn.to, txn.amount, txn.note, txn.status);
            });
        }

        // Add a transaction to history
        function addTransactionToHistory(from, to, amount, note = '', status = 'success') {
            const transactionsList = document.getElementById('transactionsList');
            
            const transactionItem = document.createElement('div');
            transactionItem.className = 'transaction-item';
            
            const transactionDetails = document.createElement('div');
            transactionDetails.className = 'transaction-details';
            
            const fromTo = document.createElement('p');
            fromTo.textContent = From: ${from} → To: ${to};
            
            const noteElement = document.createElement('p');
            noteElement.textContent = note || 'No note provided';
            noteElement.style.fontStyle = 'italic';
            noteElement.style.color = document.body.classList.contains('light-theme') ? '#666' : '#aaa';
            
            transactionDetails.appendChild(fromTo);
            transactionDetails.appendChild(noteElement);
            
            const transactionAmount = document.createElement('div');
            transactionAmount.className = 'transaction-amount';
            transactionAmount.textContent = ₹${amount.toFixed(2)};
            
            const transactionStatus = document.createElement('span');
            transactionStatus.className = transaction-status status-${status};
            transactionStatus.textContent = status === 'fraud' ? 'FRAUD DETECTED' : 
                                          status === 'success' ? 'COMPLETED' : 'PENDING';
            
            transactionItem.appendChild(transactionDetails);
            transactionItem.appendChild(transactionAmount);
            transactionItem.appendChild(transactionStatus);
            
            transactionsList.prepend(transactionItem);
        }
    </script>
</body>
</html>
