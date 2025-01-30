document.addEventListener('DOMContentLoaded', () => {
    const signupForm = document.querySelector('#signupform');
<<<<<<< HEAD
    const passwordInput = document.getElementById('signupPassword');
    const passwordStrengthBar = document.getElementById('passwordStrength');
    const passwordStrengthText = document.getElementById('passwordStrengthText');
    const errorDisplay = document.getElementById('errorDisplay');
    const modal = document.getElementById('signupModal');
    const modalText = document.getElementById('modalText');
    const closeModal = document.getElementById('closeModal');

    // Toggle Password Visibility
    window.togglePasswordVisibility = () => {
        passwordInput.type = passwordInput.type === 'password' ? 'text' : 'password';
    };

    // Validate password strength
    const validatePasswordStrength = (password) => {
        let strength = 0;
        if (password.length >= 8) strength++;
        if (/[A-Z]/.test(password)) strength++;
        if (/[a-z]/.test(password)) strength++;
        if (/\d/.test(password)) strength++;
        if (/[@$!%*?&#]/.test(password)) strength++;
        return strength;
    };

    // Update password strength bar
    const updatePasswordStrengthBar = (strength) => {
        const colors = ['red', 'yellow', 'green'];
        const texts = ['Weak', 'Medium', 'Strong'];
        const percentage = (strength / 5) * 100;

        passwordStrengthBar.style.width = `${percentage}%`;
        passwordStrengthBar.style.backgroundColor =
            strength < 3 ? colors[0] : strength < 5 ? colors[1] : colors[2];
        passwordStrengthText.textContent =
            strength < 3 ? texts[0] : strength < 5 ? texts[1] : texts[2];
    };

    passwordInput.addEventListener('input', () => {
        const password = passwordInput.value;
        const strength = validatePasswordStrength(password);
        updatePasswordStrengthBar(strength);
    });

=======
    const authButton = document.querySelector('button .auth');

    // Helper function to update button to logout
    const updateButtonToLogout = () => {
        authButton.classList.add('logout');
        authButton.classList.remove('auth');
        authButton.href = '#';
        authButton.textContent = 'LOG OUT';

        authButton.addEventListener('click', handleLogout);
    };

    // Helper function to handle logout
    const handleLogout = async (event) => {
        event.preventDefault();

        // Perform any necessary logout logic here, like clearing session or localStorage
        await fetch('http://localhost:3000/logout', {
            method: 'POST',
            credentials: 'include', // Ensure cookies are sent
        });

        alert('Logged out successfully');

        // Update button to login state
        authButton.classList.add('auth');
        authButton.classList.remove('logout');
        authButton.href = 'login.html';
        authButton.textContent = 'LOG IN';
    };

>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
    signupForm.addEventListener('submit', async (event) => {
        event.preventDefault();

        const email = document.getElementById('signupEmail').value;
<<<<<<< HEAD
        const password = passwordInput.value;
        const firstName = document.getElementById('FirstName').value;
        const lastName = document.getElementById('LastName').value;
        const phoneNo = document.getElementById('Phone_no').value;
        const houseApartment = document.getElementById('HouseApartment').value;
        const area = document.getElementById('Area').value;
        const landmark = document.getElementById('Landmark').value;
        const townCity = document.getElementById('TownCity').value;
        const state = document.getElementById('State').value;
        const pincode = document.getElementById('Pincode').value;
        const isDefault = document.getElementById('isDefault').checked;

        if (!password || validatePasswordStrength(password) < 3) {
            errorDisplay.textContent = 'Password must be at least Medium strength.';
            return;
        }

        try {
            const response = await fetch('http://localhost:3000/signup', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    email,
                    password,
                    firstName,
                    lastName,
                    phoneNo,
                    address: {
                        houseApartment,
                        area,
                        landmark,
                        townCity,
                        state,
                        pincode,
                        isDefault
                    }
                }),
            });

            const result = await response.json();
            if (response.ok) {
                // Show pop-up modal
                modalText.textContent = `Thank you for signing up, ${firstName}!`;
                modal.style.display = 'block';

                // Redirect after 3 seconds
                setTimeout(() => {
                    window.location.href = '/';
                }, 3000);
            } else {
                errorDisplay.textContent = result.error || 'Sign up failed.';
            }
        } catch (error) {
            errorDisplay.textContent = 'An error occurred. Please try again.';
        }
    });

    // Close modal manually
    closeModal.addEventListener('click', () => {
        modal.style.display = 'none';
    });
});
=======
        const password = document.getElementById('signupPassword').value;
        const firstName = document.getElementById('FirstName').value;
        const lastName = document.getElementById('LastName').value;
        const phoneNo = document.getElementById('Phone_no').value;

        const response = await fetch('http://localhost:3000/signup', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ email, password, firstName, lastName, phoneNo })
        });

        const result = await response.json();

        if (response.ok) {
            alert('Sign up successful');
            // Redirect to the desired page after successful sign up
            sessionStorage.setItem('isLoggedIn', 'true');
            sessionStorage.setItem('userEmail', email);
            window.location.href = '/';
            updateButtonToLogout();
        } else {
            alert(result.error || 'Sign up failed');
        }
    });
});
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
